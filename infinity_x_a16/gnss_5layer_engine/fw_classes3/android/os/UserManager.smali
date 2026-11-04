.class public Landroid/os/UserManager;
.super Ljava/lang/Object;
.source "UserManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/UserManager$UserOperationException;,
        Landroid/os/UserManager$QueryUserId;,
        Landroid/os/UserManager$EnforcingUser;,
        Landroid/os/UserManager$CheckedUserOperationException;,
        Landroid/os/UserManager$UserOperationResult;,
        Landroid/os/UserManager$RemoveResult;,
        Landroid/os/UserManager$UserLogoutability;,
        Landroid/os/UserManager$UserSwitchabilityResult;,
        Landroid/os/UserManager$UserRestrictionKey;,
        Landroid/os/UserManager$UserRestrictionSource;,
        Landroid/os/UserManager$QuietModeFlag;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_CREATE_SUPERVISED_USER:Ljava/lang/String; = "android.os.action.CREATE_SUPERVISED_USER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final greylist-max-o ACTION_CREATE_USER:Ljava/lang/String; = "android.os.action.CREATE_USER"

.field public static final whitelist ACTION_USER_RESTRICTIONS_CHANGED:Ljava/lang/String; = "android.os.action.USER_RESTRICTIONS_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ALLOW_PARENT_PROFILE_APP_LINKING:Ljava/lang/String; = "allow_parent_profile_app_linking"

.field public static final blacklist ALWAYS_USE_CONTEXT_USER:J = 0xaeabaecL

.field private static final blacklist CACHE_KEY_STATIC_USER_PROPERTIES:Ljava/lang/String;

.field private static final blacklist DEBUG_LOG_DEPRECATION:Z

.field private static final blacklist DEPRECATION_LOG_TAG:Ljava/lang/String; = "MultiuserDeprecation"

.field public static final blacklist DEV_CREATE_OVERRIDE_PROPERTY:Ljava/lang/String; = "debug.user.creation_override"

.field public static final blacklist DISALLOW_ADD_CLONE_PROFILE:Ljava/lang/String; = "no_add_clone_profile"

.field public static final whitelist DISALLOW_ADD_MANAGED_PROFILE:Ljava/lang/String; = "no_add_managed_profile"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DISALLOW_ADD_PRIVATE_PROFILE:Ljava/lang/String; = "no_add_private_profile"

.field public static final whitelist DISALLOW_ADD_USER:Ljava/lang/String; = "no_add_user"

.field public static final whitelist DISALLOW_ADD_WIFI_CONFIG:Ljava/lang/String; = "no_add_wifi_config"

.field public static final whitelist DISALLOW_ADJUST_VOLUME:Ljava/lang/String; = "no_adjust_volume"

.field public static final whitelist DISALLOW_AIRPLANE_MODE:Ljava/lang/String; = "no_airplane_mode"

.field public static final whitelist DISALLOW_AMBIENT_DISPLAY:Ljava/lang/String; = "no_ambient_display"

.field public static final whitelist DISALLOW_APPS_CONTROL:Ljava/lang/String; = "no_control_apps"

.field public static final whitelist DISALLOW_ASSIST_CONTENT:Ljava/lang/String; = "no_assist_content"

.field public static final whitelist DISALLOW_AUTOFILL:Ljava/lang/String; = "no_autofill"

.field public static final blacklist DISALLOW_BIOMETRIC:Ljava/lang/String; = "disallow_biometric"

.field public static final whitelist DISALLOW_BLUETOOTH:Ljava/lang/String; = "no_bluetooth"

.field public static final whitelist DISALLOW_BLUETOOTH_SHARING:Ljava/lang/String; = "no_bluetooth_sharing"

.field public static final greylist-max-o DISALLOW_CAMERA:Ljava/lang/String; = "no_camera"

.field public static final whitelist DISALLOW_CAMERA_TOGGLE:Ljava/lang/String; = "disallow_camera_toggle"

.field public static final whitelist DISALLOW_CELLULAR_2G:Ljava/lang/String; = "no_cellular_2g"

.field public static final whitelist DISALLOW_CHANGE_NEAR_FIELD_COMMUNICATION_RADIO:Ljava/lang/String; = "no_change_near_field_communication_radio"

.field public static final whitelist DISALLOW_CHANGE_WIFI_STATE:Ljava/lang/String; = "no_change_wifi_state"

.field public static final whitelist DISALLOW_CONFIG_BLUETOOTH:Ljava/lang/String; = "no_config_bluetooth"

.field public static final whitelist DISALLOW_CONFIG_BRIGHTNESS:Ljava/lang/String; = "no_config_brightness"

.field public static final whitelist DISALLOW_CONFIG_CELL_BROADCASTS:Ljava/lang/String; = "no_config_cell_broadcasts"

.field public static final whitelist DISALLOW_CONFIG_CREDENTIALS:Ljava/lang/String; = "no_config_credentials"

.field public static final whitelist DISALLOW_CONFIG_DATE_TIME:Ljava/lang/String; = "no_config_date_time"

.field public static final whitelist DISALLOW_CONFIG_DEFAULT_APPS:Ljava/lang/String; = "disallow_config_default_apps"

.field public static final whitelist DISALLOW_CONFIG_LOCALE:Ljava/lang/String; = "no_config_locale"

.field public static final whitelist DISALLOW_CONFIG_LOCATION:Ljava/lang/String; = "no_config_location"

.field public static final whitelist DISALLOW_CONFIG_MOBILE_NETWORKS:Ljava/lang/String; = "no_config_mobile_networks"

.field public static final whitelist DISALLOW_CONFIG_PRIVATE_DNS:Ljava/lang/String; = "disallow_config_private_dns"

.field public static final whitelist DISALLOW_CONFIG_SCREEN_TIMEOUT:Ljava/lang/String; = "no_config_screen_timeout"

.field public static final whitelist DISALLOW_CONFIG_TETHERING:Ljava/lang/String; = "no_config_tethering"

.field public static final whitelist DISALLOW_CONFIG_VPN:Ljava/lang/String; = "no_config_vpn"

.field public static final whitelist DISALLOW_CONFIG_WIFI:Ljava/lang/String; = "no_config_wifi"

.field public static final blacklist DISALLOW_CONFIG_WIFI_PRIVATE:Ljava/lang/String; = "no_config_wifi_private"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist DISALLOW_CONFIG_WIFI_SHARED:Ljava/lang/String; = "no_config_wifi_shared"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist DISALLOW_CONTENT_CAPTURE:Ljava/lang/String; = "no_content_capture"

.field public static final whitelist DISALLOW_CONTENT_SUGGESTIONS:Ljava/lang/String; = "no_content_suggestions"

.field public static final whitelist DISALLOW_CREATE_WINDOWS:Ljava/lang/String; = "no_create_windows"

.field public static final whitelist DISALLOW_CROSS_PROFILE_COPY_PASTE:Ljava/lang/String; = "no_cross_profile_copy_paste"

.field public static final whitelist DISALLOW_DATA_ROAMING:Ljava/lang/String; = "no_data_roaming"

.field public static final whitelist DISALLOW_DEBUGGING_FEATURES:Ljava/lang/String; = "no_debugging_features"

.field public static final whitelist DISALLOW_FACTORY_RESET:Ljava/lang/String; = "no_factory_reset"

.field public static final whitelist DISALLOW_FUN:Ljava/lang/String; = "no_fun"

.field public static final whitelist DISALLOW_GRANT_ADMIN:Ljava/lang/String; = "no_grant_admin"

.field public static final whitelist DISALLOW_INSTALL_APPS:Ljava/lang/String; = "no_install_apps"

.field public static final whitelist DISALLOW_INSTALL_UNKNOWN_SOURCES:Ljava/lang/String; = "no_install_unknown_sources"

.field public static final whitelist DISALLOW_INSTALL_UNKNOWN_SOURCES_GLOBALLY:Ljava/lang/String; = "no_install_unknown_sources_globally"

.field public static final whitelist DISALLOW_MICROPHONE_TOGGLE:Ljava/lang/String; = "disallow_microphone_toggle"

.field public static final whitelist DISALLOW_MODIFY_ACCOUNTS:Ljava/lang/String; = "no_modify_accounts"

.field public static final whitelist DISALLOW_MOUNT_PHYSICAL_MEDIA:Ljava/lang/String; = "no_physical_media"

.field public static final whitelist DISALLOW_NEAR_FIELD_COMMUNICATION_RADIO:Ljava/lang/String; = "no_near_field_communication_radio"

.field public static final whitelist DISALLOW_NETWORK_RESET:Ljava/lang/String; = "no_network_reset"

.field public static final whitelist DISALLOW_OEM_UNLOCK:Ljava/lang/String; = "no_oem_unlock"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DISALLOW_OUTGOING_BEAM:Ljava/lang/String; = "no_outgoing_beam"

.field public static final whitelist DISALLOW_OUTGOING_CALLS:Ljava/lang/String; = "no_outgoing_calls"

.field public static final whitelist DISALLOW_PRINTING:Ljava/lang/String; = "no_printing"

.field public static final greylist-max-r DISALLOW_RECORD_AUDIO:Ljava/lang/String; = "no_record_audio"

.field public static final whitelist DISALLOW_REMOVE_MANAGED_PROFILE:Ljava/lang/String; = "no_remove_managed_profile"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DISALLOW_REMOVE_USER:Ljava/lang/String; = "no_remove_user"

.field public static final whitelist DISALLOW_RUN_IN_BACKGROUND:Ljava/lang/String; = "no_run_in_background"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DISALLOW_SAFE_BOOT:Ljava/lang/String; = "no_safe_boot"

.field public static final whitelist DISALLOW_SET_USER_ICON:Ljava/lang/String; = "no_set_user_icon"

.field public static final whitelist DISALLOW_SET_WALLPAPER:Ljava/lang/String; = "no_set_wallpaper"

.field public static final whitelist DISALLOW_SHARE_INTO_MANAGED_PROFILE:Ljava/lang/String; = "no_sharing_into_profile"

.field public static final whitelist DISALLOW_SHARE_LOCATION:Ljava/lang/String; = "no_share_location"

.field public static final whitelist DISALLOW_SHARING_ADMIN_CONFIGURED_WIFI:Ljava/lang/String; = "no_sharing_admin_configured_wifi"

.field public static final whitelist DISALLOW_SIM_GLOBALLY:Ljava/lang/String; = "no_sim_globally"

.field public static final whitelist DISALLOW_SMS:Ljava/lang/String; = "no_sms"

.field public static final whitelist DISALLOW_SYSTEM_ERROR_DIALOGS:Ljava/lang/String; = "no_system_error_dialogs"

.field public static final whitelist DISALLOW_THREAD_NETWORK:Ljava/lang/String; = "no_thread_network"

.field public static final whitelist DISALLOW_ULTRA_WIDEBAND_RADIO:Ljava/lang/String; = "no_ultra_wideband_radio"

.field public static final whitelist DISALLOW_UNIFIED_PASSWORD:Ljava/lang/String; = "no_unified_password"

.field public static final whitelist DISALLOW_UNINSTALL_APPS:Ljava/lang/String; = "no_uninstall_apps"

.field public static final greylist-max-o DISALLOW_UNMUTE_DEVICE:Ljava/lang/String; = "disallow_unmute_device"

.field public static final whitelist DISALLOW_UNMUTE_MICROPHONE:Ljava/lang/String; = "no_unmute_microphone"

.field public static final whitelist DISALLOW_USB_FILE_TRANSFER:Ljava/lang/String; = "no_usb_file_transfer"

.field public static final whitelist DISALLOW_USER_SWITCH:Ljava/lang/String; = "no_user_switch"

.field public static final greylist-max-o DISALLOW_WALLPAPER:Ljava/lang/String; = "no_wallpaper"

.field public static final whitelist DISALLOW_WIFI_DIRECT:Ljava/lang/String; = "no_wifi_direct"

.field public static final whitelist DISALLOW_WIFI_TETHERING:Ljava/lang/String; = "no_wifi_tethering"

.field public static final whitelist ENSURE_VERIFY_APPS:Ljava/lang/String; = "ensure_verify_apps"

.field public static final greylist-max-o EXTRA_USER_ACCOUNT_NAME:Ljava/lang/String; = "android.os.extra.USER_ACCOUNT_NAME"

.field public static final greylist-max-o EXTRA_USER_ACCOUNT_OPTIONS:Ljava/lang/String; = "android.os.extra.USER_ACCOUNT_OPTIONS"

.field public static final greylist-max-o EXTRA_USER_ACCOUNT_TYPE:Ljava/lang/String; = "android.os.extra.USER_ACCOUNT_TYPE"

.field public static final greylist-max-o EXTRA_USER_NAME:Ljava/lang/String; = "android.os.extra.USER_NAME"

.field public static final whitelist KEY_RESTRICTIONS_PENDING:Ljava/lang/String; = "restrictions_pending"

.field public static final blacklist LOGOUTABILITY_STATUS_CANNOT_LOGOUT_SYSTEM_USER:I = 0x1

.field public static final blacklist LOGOUTABILITY_STATUS_CANNOT_SWITCH:I = 0x2

.field public static final blacklist LOGOUTABILITY_STATUS_DEVICE_NOT_SUPPORTED:I = 0x3

.field public static final blacklist LOGOUTABILITY_STATUS_OK:I = 0x0

.field public static final blacklist MAX_ACCOUNT_OPTIONS_LENGTH:I = 0x3e8

.field public static final blacklist MAX_ACCOUNT_STRING_LENGTH:I = 0x1f4

.field public static final blacklist MAX_USER_NAME_LENGTH:I = 0x64

.field public static final greylist-max-o PIN_VERIFICATION_FAILED_INCORRECT:I = -0x3

.field public static final greylist-max-o PIN_VERIFICATION_FAILED_NOT_SET:I = -0x2

.field public static final greylist-max-o PIN_VERIFICATION_SUCCESS:I = -0x1

.field public static final blacklist QUIET_MODE_DISABLE_DONT_ASK_CREDENTIAL:I = 0x2

.field public static final whitelist QUIET_MODE_DISABLE_ONLY_IF_CREDENTIAL_NOT_REQUIRED:I = 0x1

.field public static final whitelist REMOVE_RESULT_ALREADY_BEING_REMOVED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REMOVE_RESULT_DEFERRED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist REMOVE_RESULT_DEVICE_OWNER:I = -0x7

.field public static final blacklist REMOVE_RESULT_ERROR_LAST_ADMIN_USER:I = -0x6

.field public static final whitelist REMOVE_RESULT_ERROR_MAIN_USER_PERMANENT_ADMIN:I = -0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REMOVE_RESULT_ERROR_SYSTEM_USER:I = -0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REMOVE_RESULT_ERROR_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REMOVE_RESULT_ERROR_USER_NOT_FOUND:I = -0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REMOVE_RESULT_ERROR_USER_RESTRICTION:I = -0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REMOVE_RESULT_REMOVED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist REMOVE_RESULT_USER_IS_REMOVABLE:I = 0x3

.field public static final whitelist RESTRICTION_NOT_SET:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESTRICTION_SOURCE_DEVICE_OWNER:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESTRICTION_SOURCE_PROFILE_OWNER:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESTRICTION_SOURCE_SYSTEM:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SWITCHABILITY_STATUS_OK:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SWITCHABILITY_STATUS_SYSTEM_USER_LOCKED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SWITCHABILITY_STATUS_USER_IN_CALL:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SWITCHABILITY_STATUS_USER_SWITCH_DISALLOWED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SYSTEM_USER_MODE_EMULATION_DEFAULT:Ljava/lang/String; = "default"

.field public static final blacklist SYSTEM_USER_MODE_EMULATION_FULL:Ljava/lang/String; = "full"

.field public static final blacklist SYSTEM_USER_MODE_EMULATION_HEADLESS:Ljava/lang/String; = "headless"

.field public static final blacklist SYSTEM_USER_MODE_EMULATION_PROPERTY:Ljava/lang/String; = "persist.debug.user_mode_emulation"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "UserManager"

.field public static final whitelist USER_CREATION_FAILED_NOT_PERMITTED:I = 0x1

.field public static final whitelist USER_CREATION_FAILED_NO_MORE_USERS:I = 0x2

.field public static final whitelist USER_OPERATION_ERROR_CURRENT_USER:I = 0x4

.field public static final blacklist USER_OPERATION_ERROR_DISABLED_USER:I = 0x8

.field public static final blacklist USER_OPERATION_ERROR_FEATURE_UNSUPPORTED:I = 0x9

.field public static final whitelist USER_OPERATION_ERROR_LOW_STORAGE:I = 0x5

.field public static final whitelist USER_OPERATION_ERROR_MANAGED_PROFILE:I = 0x2

.field public static final whitelist USER_OPERATION_ERROR_MAX_RUNNING_USERS:I = 0x3

.field public static final whitelist USER_OPERATION_ERROR_MAX_USERS:I = 0x6

.field public static final whitelist USER_OPERATION_ERROR_UNKNOWN:I = 0x1

.field public static final whitelist USER_OPERATION_ERROR_USER_ACCOUNT_ALREADY_EXISTS:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist USER_OPERATION_ERROR_USER_RESTRICTED:I = 0xa

.field public static final whitelist USER_OPERATION_SUCCESS:I = 0x0

.field public static final blacklist USER_TYPE_FULL_DEMO:Ljava/lang/String; = "android.os.usertype.full.DEMO"

.field public static final whitelist USER_TYPE_FULL_GUEST:Ljava/lang/String; = "android.os.usertype.full.GUEST"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist USER_TYPE_FULL_RESTRICTED:Ljava/lang/String; = "android.os.usertype.full.RESTRICTED"

.field public static final whitelist USER_TYPE_FULL_SECONDARY:Ljava/lang/String; = "android.os.usertype.full.SECONDARY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USER_TYPE_FULL_SYSTEM:Ljava/lang/String; = "android.os.usertype.full.SYSTEM"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USER_TYPE_PROFILE_CLONE:Ljava/lang/String; = "android.os.usertype.profile.CLONE"

.field public static final blacklist USER_TYPE_PROFILE_COMMUNAL:Ljava/lang/String; = "android.os.usertype.profile.COMMUNAL"

.field public static final whitelist USER_TYPE_PROFILE_MANAGED:Ljava/lang/String; = "android.os.usertype.profile.MANAGED"

.field public static final whitelist USER_TYPE_PROFILE_PRIVATE:Ljava/lang/String; = "android.os.usertype.profile.PRIVATE"

.field public static final whitelist USER_TYPE_PROFILE_SUPERVISING:Ljava/lang/String; = "android.os.usertype.profile.SUPERVISING"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist USER_TYPE_PROFILE_TEST:Ljava/lang/String; = "android.os.usertype.profile.TEST"

.field public static final whitelist USER_TYPE_SYSTEM_HEADLESS:Ljava/lang/String; = "android.os.usertype.system.HEADLESS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static blacklist sIsHeadlessSystemUser:Ljava/lang/Boolean;


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final blacklist mIpcDataCache:Ljava/lang/Object;

.field private final blacklist mProfileTypeCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mProfileTypeOfProcessUser:Ljava/lang/String;

.field private final greylist mService:Landroid/os/IUserManager;

.field private final blacklist mUserId:I


# direct methods
.method public static synthetic blacklist $r8$lambda$BXQB3W5ypP7lQNKJ1ut1KMEbMD8(Landroid/os/UserManager;Ljava/lang/Integer;)[I
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/UserManager;->lambda$getEnabledProfileIds$5(Ljava/lang/Integer;)[I

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$HTVfsYiNL9khO7ijfgU05Ds90Zw(Landroid/os/UserManager;Landroid/os/UserManager$QueryUserId;)Landroid/content/pm/UserProperties;
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/UserManager;->lambda$getUserPropertiesFromQuery$0(Landroid/os/UserManager$QueryUserId;)Landroid/content/pm/UserProperties;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$HyjxpgUuixyJ1XREnDoJf4il8eE(Landroid/os/UserManager;Ljava/lang/CharSequence;I)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/os/UserManager;->lambda$getBadgedLabelForUser$9(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$Junm3nWoU2i1KQAItBlGg2U6F4Q(Landroid/os/UserManager;)Landroid/graphics/drawable/Drawable;
    .registers 1

    invoke-direct {p0}, Landroid/os/UserManager;->lambda$getUserBadge$8()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$SDW_UL6mWtYTWDTrZaUVeos2sQA(Landroid/os/UserManager;Ljava/lang/Integer;)[I
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/UserManager;->lambda$getProfileIdsWithDisabled$4(Ljava/lang/Integer;)[I

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$YpJ9GJ-25vPLVWaq9Q2lHVe58V0(Landroid/os/UserManager;Landroid/os/UserHandle;)Landroid/os/UserHandle;
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/UserManager;->lambda$getProfileParent$6(Landroid/os/UserHandle;)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$dcWO8H_vlSLBPbqNUcl_T3Umg50(Landroid/os/UserManager;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Landroid/os/UserManager;->lambda$getProfileLabel$10()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$iIY2Nu9GIpcuT6369Fj4tzTxQAA(Landroid/os/UserManager;Landroid/util/Pair;)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/UserManager;->lambda$getUserRestrictionFromQuery$1(Landroid/util/Pair;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$ooNoutSCQatoIUpzGYHlc9B8HQk(Landroid/os/UserManager;I)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/UserManager;->lambda$getProfileAccessibilityString$11(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$rkTer22aZcsQjKWksAjRmXTRU5o(Landroid/os/UserManager;Landroid/os/UserHandle;)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/UserManager;->lambda$isQuietModeEnabled$7(Landroid/os/UserHandle;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$uKymsaxHhExruri_neKbdn2d9Lk(Landroid/os/UserManager;Ljava/lang/Integer;)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/UserManager;->lambda$getProfiles$3(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/os/UserManager;)Landroid/os/IUserManager;
    .registers 1

    iget-object p0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 106
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "MultiuserDeprecation"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    sput-boolean v0, Landroid/os/UserManager;->DEBUG_LOG_DEPRECATION:Z

    .line 120
    const/4 v0, 0x0

    sput-object v0, Landroid/os/UserManager;->sIsHeadlessSystemUser:Ljava/lang/Boolean;

    .line 7079
    nop

    .line 7080
    const-string/jumbo v0, "system_server"

    const-string/jumbo v1, "static_user_props"

    invoke-static {v0, v1}, Landroid/app/PropertyInvalidatedCache;->createPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/UserManager;->CACHE_KEY_STATIC_USER_PROPERTIES:Ljava/lang/String;

    .line 7079
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/os/IUserManager;)V
    .registers 6

    .line 2716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/UserManager;->mProfileTypeOfProcessUser:Ljava/lang/String;

    .line 123
    new-instance v0, Landroid/os/UserManagerCache;

    invoke-direct {v0}, Landroid/os/UserManagerCache;-><init>()V

    iput-object v0, p0, Landroid/os/UserManager;->mIpcDataCache:Ljava/lang/Object;

    .line 7083
    new-instance v0, Landroid/os/UserManager$1;

    const/16 v1, 0x20

    sget-object v2, Landroid/os/UserManager;->CACHE_KEY_STATIC_USER_PROPERTIES:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/os/UserManager$1;-><init>(Landroid/os/UserManager;ILjava/lang/String;)V

    iput-object v0, p0, Landroid/os/UserManager;->mProfileTypeCache:Landroid/app/PropertyInvalidatedCache;

    .line 2717
    iput-object p2, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    .line 2718
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 2719
    if-nez p2, :cond_21

    move-object p2, p1

    :cond_21
    iput-object p2, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    .line 2720
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    iput p1, p0, Landroid/os/UserManager;->mUserId:I

    .line 2721
    return-void
.end method

.method private blacklist canAddMoreUsersLegacy(Ljava/lang/String;)Z
    .registers 3

    .line 7014
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/Flags;->consistentMaxUsers()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 7019
    :try_start_6
    const-string v0, "android.os.usertype.full.GUEST"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 7020
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->canAddMoreUsersOfType(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 7022
    :cond_15
    invoke-virtual {p0}, Landroid/os/UserManager;->canAddMoreUsersLegacy()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->canAddMoreUsersOfType(Ljava/lang/String;)Z

    move-result p1
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_21} :catch_27

    if-eqz p1, :cond_25

    const/4 p1, 0x1

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    :goto_26
    return p1

    .line 7024
    :catch_27
    move-exception p1

    .line 7025
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 7016
    :cond_2d
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method is no longer supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist convertUserIdsToUserHandles([I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 5706
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5707
    array-length v1, p1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_16

    aget v3, p1, v2

    .line 5708
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5707
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 5710
    :cond_16
    return-object v0
.end method

.method public static whitelist createUserCreationIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)Landroid/content/Intent;
    .registers 6

    .line 4882
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.action.CREATE_USER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4883
    if-eqz p0, :cond_e

    .line 4884
    const-string v1, "android.os.extra.USER_NAME"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4886
    :cond_e
    if-eqz p1, :cond_1b

    if-eqz p2, :cond_13

    goto :goto_1b

    .line 4887
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "accountType must be specified if accountName is specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4890
    :cond_1b
    :goto_1b
    if-eqz p1, :cond_22

    .line 4891
    const-string p0, "android.os.extra.USER_ACCOUNT_NAME"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4893
    :cond_22
    if-eqz p2, :cond_29

    .line 4894
    const-string p0, "android.os.extra.USER_ACCOUNT_TYPE"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4896
    :cond_29
    if-eqz p3, :cond_30

    .line 4897
    const-string p0, "android.os.extra.USER_ACCOUNT_OPTIONS"

    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4899
    :cond_30
    return-object v0
.end method

.method public static greylist get(Landroid/content/Context;)Landroid/os/UserManager;
    .registers 2

    .line 2712
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    return-object p0
.end method

.method private blacklist getContextUserIfAppropriate()I
    .registers 5

    .line 2695
    const-wide/32 v0, 0xaeabaec

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2696
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    return v0

    .line 2698
    :cond_c
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 2699
    iget v1, p0, Landroid/os/UserManager;->mUserId:I

    if-eq v0, v1, :cond_43

    .line 2700
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using the calling user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rather than the specified context user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/UserManager;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", because API is only UserHandleAware on higher targetSdkVersions."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    const-string v3, "UserManager"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2705
    :cond_43
    return v0
.end method

.method private blacklist getDefaultProfileLabel(I)Ljava/lang/String;
    .registers 3

    .line 6261
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getProfileLabelResId(I)I

    move-result p1

    .line 6262
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p1

    .line 6263
    :catch_f
    move-exception p1

    .line 6264
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private blacklist getDefaultUserBadge(I)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 6186
    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserBadgeResId(I)I

    move-result p1

    iget-object v1, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private blacklist getDefaultUserBadgedLabel(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .registers 4

    .line 6223
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p2}, Landroid/os/IUserManager;->getUserBadgeLabelResId(I)I

    move-result p2

    .line 6224
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return-object p1

    .line 6225
    :catch_13
    move-exception p1

    .line 6226
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public static greylist getMaxSupportedUsers()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6631
    invoke-static {}, Landroid/os/UserManager;->getMaxSwitchableUsers()I

    move-result v0

    return v0
.end method

.method public static blacklist getMaxSwitchableUsers()I
    .registers 2

    .line 6653
    nop

    .line 6654
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 6653
    const-string v1, "fw.max_users"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private blacklist getProfileAccessibilityLabel(I)Ljava/lang/String;
    .registers 5

    .line 6298
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getProfileAccessibilityLabelResId(I)I

    move-result v0

    .line 6299
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_e} :catch_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p1

    .line 6303
    :catch_f
    move-exception p1

    .line 6304
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 6300
    :catch_16
    move-exception v0

    .line 6301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accessibility label not defined for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UserManager"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6302
    throw v0
.end method

.method private blacklist getProfileType()Ljava/lang/String;
    .registers 2

    .line 3593
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-direct {p0, v0}, Landroid/os/UserManager;->getProfileType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getProfileType(I)Ljava/lang/String;
    .registers 3

    .line 3600
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-ne p1, v0, :cond_23

    .line 3603
    iget-object v0, p0, Landroid/os/UserManager;->mProfileTypeOfProcessUser:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 3604
    iget-object p1, p0, Landroid/os/UserManager;->mProfileTypeOfProcessUser:Ljava/lang/String;

    return-object p1

    .line 3607
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getProfileType(I)Ljava/lang/String;

    move-result-object v0

    .line 3608
    if-eqz v0, :cond_1c

    .line 3609
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/os/UserManager;->mProfileTypeOfProcessUser:Ljava/lang/String;
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1b} :catch_1d

    return-object p1

    .line 3613
    :cond_1c
    goto :goto_23

    .line 3611
    :catch_1d
    move-exception p1

    .line 3612
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 3617
    :cond_23
    :goto_23
    iget-object v0, p0, Landroid/os/UserManager;->mProfileTypeCache:Landroid/app/PropertyInvalidatedCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private blacklist getProfiles(Z)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 5700
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-virtual {p0, v0, p1}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object p1

    .line 5701
    invoke-direct {p0, p1}, Landroid/os/UserManager;->convertUserIdsToUserHandles([I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private blacklist getUpdatableUserBadgedLabelId(I)Ljava/lang/String;
    .registers 2

    .line 6218
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "Core.WORK_PROFILE_BADGED_LABEL"

    goto :goto_b

    :cond_9
    const-string p1, "UNDEFINED"

    :goto_b
    return-object p1
.end method

.method private blacklist getUserPropertiesFromQuery(Landroid/os/UserManager$QueryUserId;)Landroid/content/pm/UserProperties;
    .registers 3

    .line 4150
    iget-object v0, p0, Landroid/os/UserManager;->mIpcDataCache:Ljava/lang/Object;

    check-cast v0, Landroid/os/UserManagerCache;

    new-instance v0, Landroid/os/UserManager$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Landroid/os/UserManager$$ExternalSyntheticLambda6;-><init>(Landroid/os/UserManager;)V

    invoke-static {v0, p1}, Landroid/os/UserManagerCache;->getUserPropertiesFromQuery(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/UserManager$QueryUserId;)Landroid/content/pm/UserProperties;

    move-result-object p1

    return-object p1
.end method

.method private blacklist getUserRestrictionFromQuery(Landroid/util/Pair;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 4399
    new-instance v0, Landroid/os/UserManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/os/UserManager$$ExternalSyntheticLambda0;-><init>(Landroid/os/UserManager;)V

    new-instance v1, Landroid/os/UserManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/os/UserManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v1, p1}, Landroid/os/UserManagerCache;->getUserRestrictionFromQuery(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;Landroid/util/Pair;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private blacklist hasUserRestrictionForUser(Ljava/lang/String;I)Z
    .registers 4

    .line 4393
    new-instance v0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/os/UserManager;->getUserRestrictionFromQuery(Landroid/util/Pair;)Z

    move-result p1

    return p1
.end method

.method public static final blacklist invalidateCacheOnUserDataChanged()V
    .registers 0

    .line 6742
    invoke-static {}, Landroid/os/UserManagerCache;->invalidateProfiles()V

    .line 6743
    return-void
.end method

.method public static final blacklist invalidateCacheOnUserListChange()V
    .registers 0

    .line 6710
    invoke-static {}, Landroid/os/UserManagerCache;->invalidateUserSerialNumber()V

    .line 6711
    invoke-static {}, Landroid/os/UserManagerCache;->invalidateProfileParent()V

    .line 6712
    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserDataChanged()V

    .line 6713
    invoke-static {}, Landroid/os/UserManager;->invalidateEnabledProfileIds()V

    .line 6714
    invoke-static {}, Landroid/os/UserManager;->invalidateUserRestriction()V

    .line 6715
    return-void
.end method

.method public static final blacklist invalidateEnabledProfileIds()V
    .registers 0

    .line 5765
    invoke-static {}, Landroid/os/UserManagerCache;->invalidateEnabledProfileIds()V

    .line 5766
    return-void
.end method

.method public static final blacklist invalidateIsUserUnlockedCache()V
    .registers 0

    .line 3996
    invoke-static {}, Landroid/os/UserManagerCache;->invalidateUserUnlocked()V

    .line 3997
    return-void
.end method

.method public static final blacklist invalidateOnUserInfoFlagChange(I)V
    .registers 1

    .line 6726
    and-int/lit8 p0, p0, 0x40

    if-lez p0, :cond_7

    .line 6727
    invoke-static {}, Landroid/os/UserManager;->invalidateEnabledProfileIds()V

    .line 6729
    :cond_7
    return-void
.end method

.method public static final blacklist invalidateQuietModeEnabledCache()V
    .registers 0

    .line 5943
    invoke-static {}, Landroid/os/UserManagerCache;->invalidateQuietModeEnabled()V

    .line 5944
    return-void
.end method

.method public static final blacklist invalidateStaticUserProperties()V
    .registers 1

    .line 7104
    sget-object v0, Landroid/os/UserManager;->CACHE_KEY_STATIC_USER_PROPERTIES:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    .line 7105
    return-void
.end method

.method public static final blacklist invalidateUserPropertiesCache()V
    .registers 0

    .line 4140
    invoke-static {}, Landroid/os/UserManagerCache;->invalidateUserPropertiesFromQuery()V

    .line 4141
    return-void
.end method

.method public static final blacklist invalidateUserRestriction()V
    .registers 1

    .line 4408
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/Flags;->cacheUserRestrictionsReadOnly()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4409
    invoke-static {}, Landroid/os/UserManagerCache;->invalidateUserRestrictionFromQuery()V

    .line 4411
    :cond_9
    return-void
.end method

.method private blacklist isCommunalProfile(I)Z
    .registers 2

    .line 3181
    invoke-direct {p0, p1}, Landroid/os/UserManager;->getProfileType(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserManager;->isUserTypeCommunalProfile(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public static blacklist isCommunalProfileEnabled()Z
    .registers 2

    .line 2760
    nop

    .line 2761
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 2762
    const v1, 0x111021d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2760
    const-string/jumbo v1, "persist.fw.omnipresent_communal_user"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-r isDeviceInDemoMode(Landroid/content/Context;)Z
    .registers 3

    .line 6700
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_demo_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method

.method public static blacklist isGuestUserAllowEphemeralStateChange()Z
    .registers 2

    .line 2751
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 2752
    const v1, 0x11101c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2751
    return v0
.end method

.method public static blacklist isGuestUserAlwaysEphemeral()Z
    .registers 2

    .line 2741
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 2742
    const v1, 0x11101c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2741
    return v0
.end method

.method public static whitelist isHeadlessSystemUserMode()Z
    .registers 1

    .line 2798
    sget-object v0, Landroid/os/UserManager;->sIsHeadlessSystemUser:Ljava/lang/Boolean;

    if-nez v0, :cond_20

    .line 2801
    :try_start_4
    const-string/jumbo v0, "user"

    .line 2802
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2801
    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v0

    .line 2803
    invoke-interface {v0}, Landroid/os/IUserManager;->isHeadlessSystemUserMode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/UserManager;->sIsHeadlessSystemUser:Ljava/lang/Boolean;
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_19} :catch_1a

    .line 2806
    goto :goto_20

    .line 2804
    :catch_1a
    move-exception v0

    .line 2805
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 2808
    :cond_20
    :goto_20
    sget-object v0, Landroid/os/UserManager;->sIsHeadlessSystemUser:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static blacklist isMultipleAdminEnabled()Z
    .registers 2

    .line 2781
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 2782
    const v1, 0x111018d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2781
    return v0
.end method

.method public static blacklist isPrivateProfileEnabled()Z
    .registers 2

    .line 2770
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/Flags;->blockPrivateSpaceCreation()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    .line 2771
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 2773
    :cond_d
    return v1
.end method

.method public static whitelist isRemoveResultSuccessful(I)Z
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6455
    if-ltz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public static blacklist isUserTypeCloneProfile(Ljava/lang/String;)Z
    .registers 2

    .line 3303
    const-string v0, "android.os.usertype.profile.CLONE"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static blacklist isUserTypeCommunalProfile(Ljava/lang/String;)Z
    .registers 2

    .line 3313
    const-string v0, "android.os.usertype.profile.COMMUNAL"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static blacklist isUserTypeDemo(Ljava/lang/String;)Z
    .registers 2

    .line 3294
    const-string v0, "android.os.usertype.full.DEMO"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static blacklist isUserTypeGuest(Ljava/lang/String;)Z
    .registers 2

    .line 3275
    const-string v0, "android.os.usertype.full.GUEST"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static blacklist isUserTypeManagedProfile(Ljava/lang/String;)Z
    .registers 2

    .line 3266
    const-string v0, "android.os.usertype.profile.MANAGED"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static blacklist isUserTypePrivateProfile(Ljava/lang/String;)Z
    .registers 2

    .line 3324
    const-string v0, "android.os.usertype.profile.PRIVATE"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static blacklist isUserTypeRestricted(Ljava/lang/String;)Z
    .registers 2

    .line 3285
    const-string v0, "android.os.usertype.full.RESTRICTED"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static blacklist isUserTypeSupervisingProfile(Ljava/lang/String;)Z
    .registers 2

    .line 3336
    const-string v0, "android.os.usertype.profile.SUPERVISING"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static blacklist isVisibleBackgroundUsersEnabled()Z
    .registers 2

    .line 3811
    nop

    .line 3812
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 3813
    const v1, 0x111020d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 3811
    const-string v1, "fw.visible_bg_users"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isVisibleBackgroundUsersOnDefaultDisplayEnabled()Z
    .registers 2

    .line 3841
    nop

    .line 3842
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 3843
    const v1, 0x111020e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 3841
    const-string v1, "fw.visible_bg_users_on_default_display"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private synthetic blacklist lambda$getBadgedLabelForUser$9(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .registers 3

    .line 6213
    invoke-direct {p0, p1, p2}, Landroid/os/UserManager;->getDefaultUserBadgedLabel(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private synthetic blacklist lambda$getEnabledProfileIds$5(Ljava/lang/Integer;)[I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5760
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/os/IUserManager;->getProfileIds(IZ)[I

    move-result-object p1

    return-object p1
.end method

.method private synthetic blacklist lambda$getProfileAccessibilityString$11(I)Ljava/lang/String;
    .registers 2

    .line 6291
    invoke-direct {p0, p1}, Landroid/os/UserManager;->getProfileAccessibilityLabel(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private synthetic blacklist lambda$getProfileIdsWithDisabled$4(Ljava/lang/Integer;)[I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5746
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IUserManager;->getProfileIds(IZ)[I

    move-result-object p1

    return-object p1
.end method

.method private synthetic blacklist lambda$getProfileLabel$10()Ljava/lang/String;
    .registers 2

    .line 6254
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-direct {p0, v0}, Landroid/os/UserManager;->getDefaultProfileLabel(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getProfileParent$6(Landroid/os/UserHandle;)Landroid/os/UserHandle;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5840
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 5842
    if-nez p1, :cond_11

    .line 5843
    const/16 p1, -0x2710

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    return-object p1

    .line 5845
    :cond_11
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    return-object p1
.end method

.method private synthetic blacklist lambda$getProfiles$3(Ljava/lang/Integer;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5527
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private synthetic blacklist lambda$getUserBadge$8()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 6180
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-direct {p0, v0}, Landroid/os/UserManager;->getDefaultUserBadge(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getUserPropertiesFromQuery$0(Landroid/os/UserManager$QueryUserId;)Landroid/content/pm/UserProperties;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4151
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p1}, Landroid/os/UserManager$QueryUserId;->getUserId()I

    move-result p1

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUserPropertiesCopy(I)Landroid/content/pm/UserProperties;

    move-result-object p1

    return-object p1
.end method

.method private synthetic blacklist lambda$getUserRestrictionFromQuery$1(Landroid/util/Pair;)Ljava/lang/Boolean;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4400
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/os/IUserManager;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method static synthetic blacklist lambda$getUserRestrictionFromQuery$2(Landroid/util/Pair;)Ljava/lang/Boolean;
    .registers 1

    .line 4402
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/Flags;->cacheUserRestrictionsReadOnly()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$isQuietModeEnabled$7(Landroid/os/UserHandle;)Ljava/lang/Boolean;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5959
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->isQuietModeEnabled(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public static blacklist logStaticDeprecation()V
    .registers 4

    .line 7071
    sget-boolean v0, Landroid/os/UserManager;->DEBUG_LOG_DEPRECATION:Z

    if-nez v0, :cond_5

    .line 7072
    return-void

    .line 7074
    :cond_5
    const-string v0, "MultiuserDeprecation"

    const-string v1, "deprecated call:"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v2, v3, v0, v1, v3}, Landroid/util/Log;->logStackTrace(IILjava/lang/String;Ljava/lang/String;I)I

    .line 7076
    return-void
.end method

.method private blacklist returnNullOrThrowUserOperationException(Landroid/os/ServiceSpecificException;Z)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/ServiceSpecificException;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/UserManager$UserOperationException;
        }
    .end annotation

    .line 2616
    if-nez p2, :cond_4

    .line 2619
    const/4 p1, 0x0

    return-object p1

    .line 2617
    :cond_4
    invoke-static {p1}, Landroid/os/UserManager$UserOperationException;->from(Landroid/os/ServiceSpecificException;)Landroid/os/UserManager$UserOperationException;

    move-result-object p1

    throw p1
.end method

.method public static whitelist supportsMultipleUsers()Z
    .registers 3

    .line 2731
    invoke-static {}, Landroid/os/UserManager;->getMaxSwitchableUsers()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1b

    .line 2733
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x111018c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2732
    const-string v2, "fw.show_multiuserui"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    .line 2731
    :goto_1c
    return v1
.end method


# virtual methods
.method public blacklist addUserRestrictionsListener(Landroid/os/IUserRestrictionsListener;)V
    .registers 3

    .line 4451
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->addUserRestrictionsListener(Landroid/os/IUserRestrictionsListener;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 4454
    nop

    .line 4455
    return-void

    .line 4452
    :catch_7
    move-exception p1

    .line 4453
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o canAddMoreManagedProfiles(IZ)Z
    .registers 5

    .line 5423
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    const-string v1, "android.os.usertype.profile.MANAGED"

    invoke-interface {v0, v1, p1, p2}, Landroid/os/IUserManager;->canAddMoreProfilesToUser(Ljava/lang/String;IZ)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 5425
    :catch_9
    move-exception p1

    .line 5426
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist canAddMoreProfilesToUser(Ljava/lang/String;I)Z
    .registers 5

    .line 5448
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroid/os/IUserManager;->canAddMoreProfilesToUser(Ljava/lang/String;IZ)Z

    move-result p1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return p1

    .line 5449
    :catch_8
    move-exception p1

    .line 5450
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist canAddMoreUsers(Ljava/lang/String;)Z
    .registers 3

    .line 5346
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/Flags;->consistentMaxUsers()Z

    move-result v0

    if-nez v0, :cond_b

    .line 5347
    invoke-direct {p0, p1}, Landroid/os/UserManager;->canAddMoreUsersLegacy(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 5351
    :cond_b
    :try_start_b
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->canAddMoreUsersOfType(Ljava/lang/String;)Z

    move-result p1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_11} :catch_12

    return p1

    .line 5352
    :catch_12
    move-exception p1

    .line 5353
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist canAddMoreUsersLegacy()Z
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6991
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/Flags;->consistentMaxUsers()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 6992
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/Flags;->maxUsersInCarIsForSecondary()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_15

    .line 6994
    :cond_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is no longer supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7000
    :cond_15
    :goto_15
    invoke-virtual {p0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    .line 7001
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 7002
    nop

    .line 7003
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_21
    if-ge v3, v1, :cond_34

    .line 7004
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 7005
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v5

    if-nez v5, :cond_31

    .line 7006
    add-int/lit8 v4, v4, 0x1

    .line 7003
    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 7009
    :cond_34
    invoke-static {}, Landroid/os/UserManager;->getMaxSwitchableUsers()I

    move-result v0

    if-ge v4, v0, :cond_3b

    const/4 v2, 0x1

    :cond_3b
    return v2
.end method

.method public blacklist canAddPrivateProfile()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3449
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 3450
    :cond_8
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/Flags;->blockPrivateSpaceCreation()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3457
    :try_start_e
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    iget v1, p0, Landroid/os/UserManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->canAddPrivateProfile(I)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return v0

    .line 3458
    :catch_17
    move-exception v0

    .line 3459
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 3462
    :cond_1d
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist canHaveRestrictedProfile()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3423
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    iget v1, p0, Landroid/os/UserManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->canHaveRestrictedProfile(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 3424
    :catch_9
    move-exception v0

    .line 3425
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist-max-r canSwitchUsers()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2824
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    iget v1, p0, Landroid/os/UserManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->getUserSwitchability(I)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_e

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    .line 2825
    :catch_e
    move-exception v0

    .line 2826
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist clearSeedAccountData()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5009
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->clearSeedAccountData(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 5012
    nop

    .line 5013
    return-void

    .line 5010
    :catch_b
    move-exception v0

    .line 5011
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist createGuest(Landroid/content/Context;)Landroid/content/pm/UserInfo;
    .registers 9

    .line 4625
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    const-string v2, "android.os.usertype.full.GUEST"

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Landroid/os/IUserManager;->createUserWithThrow(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 4626
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "skip_first_use_hints"

    const-string v5, "1"

    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2, v4, v5, v6}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 4629
    invoke-static {}, Landroid/os/UserManager;->isGuestUserAllowEphemeralStateChange()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 4635
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v2, "remove_guest_on_exit"

    const/4 v4, 0x1

    invoke-static {p1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v4, :cond_2d

    move v3, v4

    .line 4638
    :cond_2d
    if-eqz v3, :cond_3a

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result p1

    if-nez p1, :cond_3a

    .line 4639
    iget p1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, v4}, Landroid/os/UserManager;->setUserEphemeral(IZ)Z
    :try_end_3a
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_3a} :catch_41
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_3a} :catch_3b

    .line 4642
    :cond_3a
    return-object v1

    .line 4645
    :catch_3b
    move-exception p1

    .line 4646
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 4643
    :catch_41
    move-exception p1

    .line 4644
    return-object v0
.end method

.method public whitelist createProfile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Landroid/os/UserHandle;
    .registers 10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/UserHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/UserManager$UserOperationException;
        }
    .end annotation

    .line 4709
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    iget v4, p0, Landroid/os/UserManager;->mUserId:I

    .line 4711
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 4710
    invoke-interface {p3, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    move-object v5, p3

    check-cast v5, [Ljava/lang/String;

    .line 4709
    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Landroid/os/IUserManager;->createProfileForUserWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 4711
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1
    :try_end_1c
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_1c} :catch_24
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 4709
    return-object p1

    .line 4715
    :catch_1d
    move-exception v0

    move-object p1, v0

    .line 4716
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 4712
    :catch_24
    move-exception v0

    move-object p1, v0

    .line 4713
    iget-object p2, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    .line 4714
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p3, 0x1e

    if-lt p2, p3, :cond_34

    const/4 p2, 0x1

    goto :goto_35

    :cond_34
    const/4 p2, 0x0

    .line 4713
    :goto_35
    invoke-direct {p0, p1, p2}, Landroid/os/UserManager;->returnNullOrThrowUserOperationException(Landroid/os/ServiceSpecificException;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    return-object p1
.end method

.method public greylist createProfileForUser(Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4740
    invoke-static {p2}, Landroid/content/pm/UserInfo;->getDefaultUserType(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/os/UserManager;->createProfileForUser(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createProfileForUser(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    .registers 11

    .line 4760
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/UserManager;->createProfileForUser(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createProfileForUser(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 7

    .line 4785
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Landroid/os/IUserManager;->createProfileForUserWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p1
    :try_end_7
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_7} :catch_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return-object p1

    .line 4789
    :catch_8
    move-exception v0

    move-object p1, v0

    .line 4790
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 4787
    :catch_f
    move-exception v0

    .line 4788
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist createProfileForUserEvenWhenDisallowed(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 7

    .line 4807
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Landroid/os/IUserManager;->createProfileForUserEvenWhenDisallowedWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p1
    :try_end_7
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_7} :catch_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return-object p1

    .line 4811
    :catch_8
    move-exception v0

    move-object p1, v0

    .line 4812
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 4809
    :catch_f
    move-exception v0

    .line 4810
    const/4 p1, 0x0

    return-object p1
.end method

.method public greylist-max-o createRestrictedProfile(Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 5

    .line 4832
    :try_start_0
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    .line 4833
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1, v0}, Landroid/os/IUserManager;->createRestrictedProfileWithThrow(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 4834
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 4835
    iget-object v1, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    .line 4836
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 4835
    invoke-virtual {v1, v0, v2}, Landroid/accounts/AccountManager;->addSharedAccountsFromParentUser(Landroid/os/UserHandle;Landroid/os/UserHandle;)V
    :try_end_1b
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_1b} :catch_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 4837
    return-object p1

    .line 4840
    :catch_1c
    move-exception p1

    .line 4841
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 4838
    :catch_22
    move-exception p1

    .line 4839
    const/4 p1, 0x0

    return-object p1
.end method

.method public greylist createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4501
    invoke-static {p2}, Landroid/content/pm/UserInfo;->getDefaultUserType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/os/UserManager;->createUser(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createUser(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .registers 5

    .line 4528
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IUserManager;->createUserWithThrow(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 4531
    :catch_7
    move-exception p1

    .line 4532
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 4529
    :catch_d
    move-exception p1

    .line 4530
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist createUser(Landroid/os/NewUserRequest;)Landroid/os/NewUserResponse;
    .registers 10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4548
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    .line 4549
    invoke-virtual {p1}, Landroid/os/NewUserRequest;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4550
    invoke-virtual {p1}, Landroid/os/NewUserRequest;->getUserType()Ljava/lang/String;

    move-result-object v2

    .line 4551
    invoke-virtual {p1}, Landroid/os/NewUserRequest;->getFlags()I

    move-result v3

    .line 4552
    invoke-virtual {p1}, Landroid/os/NewUserRequest;->getUserIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 4553
    invoke-virtual {p1}, Landroid/os/NewUserRequest;->getAccountName()Ljava/lang/String;

    move-result-object v5

    .line 4554
    invoke-virtual {p1}, Landroid/os/NewUserRequest;->getAccountType()Ljava/lang/String;

    move-result-object v6

    .line 4555
    invoke-virtual {p1}, Landroid/os/NewUserRequest;->getAccountOptions()Landroid/os/PersistableBundle;

    move-result-object v7

    .line 4548
    invoke-interface/range {v0 .. v7}, Landroid/os/IUserManager;->createUserWithAttributes(Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)Landroid/os/UserHandle;

    move-result-object v0

    .line 4557
    new-instance v1, Landroid/os/NewUserResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/os/NewUserResponse;-><init>(Landroid/os/UserHandle;I)V
    :try_end_28
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_28} :catch_30
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_28} :catch_29

    return-object v1

    .line 4562
    :catch_29
    move-exception v0

    move-object p1, v0

    .line 4563
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 4559
    :catch_30
    move-exception v0

    .line 4560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while creating user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UserManager"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4561
    new-instance p1, Landroid/os/NewUserResponse;

    const/4 v1, 0x0

    iget v0, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {p1, v1, v0}, Landroid/os/NewUserResponse;-><init>(Landroid/os/UserHandle;I)V

    return-object p1
.end method

.method public greylist-max-o evictCredentialEncryptionKey(I)V
    .registers 3

    .line 5103
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->evictCredentialEncryptionKey(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 5106
    nop

    .line 5107
    return-void

    .line 5104
    :catch_7
    move-exception p1

    .line 5105
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist findCurrentGuestUser()Landroid/content/pm/UserInfo;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4662
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0}, Landroid/os/IUserManager;->getGuestUsers()Ljava/util/List;

    move-result-object v0

    .line 4663
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_e

    .line 4664
    const/4 v0, 0x0

    return-object v0

    .line 4666
    :cond_e
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    return-object v0

    .line 4667
    :catch_16
    move-exception v0

    .line 4668
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getAliveUsers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 5157
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAllProfiles()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 5681
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/UserManager;->getProfiles(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4

    .line 6819
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    .line 6820
    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v1

    .line 6819
    invoke-interface {v0, p1, v1}, Landroid/os/IUserManager;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    .line 6821
    :catch_b
    move-exception p1

    .line 6822
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o getApplicationRestrictions(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/Bundle;
    .registers 4

    .line 6845
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    .line 6846
    :catch_b
    move-exception p1

    .line 6847
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist getBadgedDrawableForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 6153
    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public greylist getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 6123
    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public greylist getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;
    .registers 6

    .line 6206
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 6207
    invoke-virtual {p0, p2}, Landroid/os/UserManager;->hasBadge(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 6208
    return-object p1

    .line 6210
    :cond_b
    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 6211
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    .line 6212
    invoke-direct {p0, p2}, Landroid/os/UserManager;->getUpdatableUserBadgedLabelId(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/UserManager$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, p1, p2}, Landroid/os/UserManager$$ExternalSyntheticLambda11;-><init>(Landroid/os/UserManager;Ljava/lang/CharSequence;I)V

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 6211
    invoke-virtual {v0, v1, v2, p1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getBootUser()Landroid/os/UserHandle;
    .registers 2

    .line 7040
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0}, Landroid/os/IUserManager;->getBootUser()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 7041
    :catch_b
    move-exception v0

    .line 7042
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getCommunalProfile()Landroid/os/UserHandle;
    .registers 3

    .line 3144
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0}, Landroid/os/IUserManager;->getCommunalProfileId()I

    move-result v0

    .line 3145
    const/16 v1, -0x2710

    if-ne v0, v1, :cond_c

    .line 3146
    const/4 v0, 0x0

    return-object v0

    .line 3148
    :cond_c
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    .line 3149
    :catch_11
    move-exception v0

    .line 3150
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist-max-o getCredentialOwnerProfile(I)I
    .registers 3

    .line 5797
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getCredentialOwnerProfile(I)I

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 5798
    :catch_7
    move-exception p1

    .line 5799
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getCurrentAllowedNumberOfUsers(Ljava/lang/String;)I
    .registers 3

    .line 5474
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/Flags;->consistentMaxUsers()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 5478
    :try_start_6
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getCurrentAllowedNumberOfUsers(Ljava/lang/String;)I

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return p1

    .line 5479
    :catch_d
    move-exception p1

    .line 5480
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 5475
    :cond_13
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method requires flag consistentMaxUsers"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o getDefaultGuestRestrictions()Landroid/os/Bundle;
    .registers 2

    .line 6897
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0}, Landroid/os/IUserManager;->getDefaultGuestRestrictions()Landroid/os/Bundle;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 6898
    :catch_7
    move-exception v0

    .line 6899
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist-max-o getEnabledProfileIds(I)[I
    .registers 3

    .line 5759
    new-instance v0, Landroid/os/UserManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Landroid/os/UserManager$$ExternalSyntheticLambda8;-><init>(Landroid/os/UserManager;)V

    .line 5760
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 5759
    invoke-static {v0, p1}, Landroid/os/UserManagerCache;->getEnabledProfileIds(Landroid/os/IpcDataCache$RemoteCall;Ljava/lang/Integer;)[I

    move-result-object p1

    return-object p1
.end method

.method public whitelist getEnabledProfiles()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 5661
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/UserManager;->getProfiles(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist getEnabledProfiles(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5618
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object p1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return-object p1

    .line 5619
    :catch_8
    move-exception p1

    .line 5620
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getGuestUsers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 4679
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0}, Landroid/os/IUserManager;->getGuestUsers()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 4680
    :catch_7
    move-exception v0

    .line 4681
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getMainDisplayIdAssignedToUser()I
    .registers 3

    .line 3931
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    iget v1, p0, Landroid/os/UserManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->getMainDisplayIdAssignedToUser(I)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 3932
    :catch_9
    move-exception v0

    .line 3933
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getMainUser()Landroid/os/UserHandle;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3120
    invoke-virtual {p0}, Landroid/os/UserManager;->logDeprecation()V

    .line 3122
    :try_start_3
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0}, Landroid/os/IUserManager;->getMainUserId()I

    move-result v0

    .line 3123
    const/16 v1, -0x2710

    if-ne v0, v1, :cond_f

    .line 3124
    const/4 v0, 0x0

    return-object v0

    .line 3126
    :cond_f
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_13} :catch_14

    return-object v0

    .line 3127
    :catch_14
    move-exception v0

    .line 3128
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getPreInstallableSystemPackages(Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4918
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    .line 4919
    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getPreInstallableSystemPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 4920
    if-nez p1, :cond_a

    .line 4921
    const/4 p1, 0x0

    return-object p1

    .line 4923
    :cond_a
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v0

    .line 4924
    :catch_10
    move-exception p1

    .line 4925
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getPreviousForegroundUser()Landroid/os/UserHandle;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5320
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0}, Landroid/os/IUserManager;->getPreviousUserToEnterForeground()I

    move-result v0

    .line 5321
    const/16 v1, -0x2710

    if-ne v0, v1, :cond_c

    .line 5322
    const/4 v0, 0x0

    return-object v0

    .line 5324
    :cond_c
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    .line 5325
    :catch_11
    move-exception v0

    .line 5326
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist-max-o getPrimaryUser()Landroid/content/pm/UserInfo;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5287
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0}, Landroid/os/IUserManager;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 5288
    :catch_7
    move-exception v0

    .line 5289
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getProcessUserId()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2928
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    return v0
.end method

.method public blacklist getProfileAccessibilityString(I)Ljava/lang/String;
    .registers 5

    .line 6287
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 6288
    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 6289
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Landroid/os/UserManager$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Landroid/os/UserManager$$ExternalSyntheticLambda14;-><init>(Landroid/os/UserManager;I)V

    const-string v2, "SystemUi.STATUS_BAR_WORK_ICON_ACCESSIBILITY"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 6293
    :cond_20
    invoke-direct {p0, p1}, Landroid/os/UserManager;->getProfileAccessibilityLabel(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o getProfileIds(IZ)[I
    .registers 3

    .line 5731
    if-eqz p2, :cond_7

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object p1

    goto :goto_b

    :cond_7
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object p1

    :goto_b
    return-object p1
.end method

.method public blacklist getProfileIdsExcludingHidden(IZ)[I
    .registers 4

    .line 5781
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->getProfileIdsExcludingHidden(IZ)[I

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 5782
    :catch_7
    move-exception p1

    .line 5783
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist getProfileIdsWithDisabled(I)[I
    .registers 3

    .line 5745
    new-instance v0, Landroid/os/UserManager$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Landroid/os/UserManager$$ExternalSyntheticLambda15;-><init>(Landroid/os/UserManager;)V

    .line 5746
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 5745
    invoke-static {v0, p1}, Landroid/os/UserManagerCache;->getProfileIdsWithDisabled(Landroid/os/IpcDataCache$RemoteCall;Ljava/lang/Integer;)[I

    move-result-object p1

    return-object p1
.end method

.method public whitelist getProfileLabel()Ljava/lang/String;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6250
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 6251
    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 6252
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Landroid/os/UserManager$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Landroid/os/UserManager$$ExternalSyntheticLambda12;-><init>(Landroid/os/UserManager;)V

    const-string v2, "Core.RESOLVER_WORK_TAB"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6256
    :cond_22
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-direct {p0, v0}, Landroid/os/UserManager;->getDefaultProfileLabel(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getProfileParent(I)Landroid/content/pm/UserInfo;
    .registers 3

    .line 5816
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 5817
    :catch_7
    move-exception p1

    .line 5818
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getProfileParent(Landroid/os/UserHandle;)Landroid/os/UserHandle;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5838
    new-instance v0, Landroid/os/UserManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/os/UserManager$$ExternalSyntheticLambda2;-><init>(Landroid/os/UserManager;)V

    invoke-static {v0, p1}, Landroid/os/UserManagerCache;->getProfileParent(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/UserHandle;)Landroid/os/UserHandle;

    move-result-object p1

    .line 5848
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_13

    .line 5849
    const/4 p1, 0x0

    return-object p1

    .line 5851
    :cond_13
    return-object p1
.end method

.method public greylist getProfiles(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 5526
    new-instance v0, Landroid/os/UserManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroid/os/UserManager$$ExternalSyntheticLambda3;-><init>(Landroid/os/UserManager;)V

    .line 5528
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 5526
    invoke-static {v0, p1}, Landroid/os/UserManagerCache;->getProfiles(Landroid/os/IpcDataCache$RemoteCall;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getProfilesIncludingCommunal(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 5547
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p1

    .line 5548
    invoke-virtual {p0}, Landroid/os/UserManager;->getCommunalProfile()Landroid/os/UserHandle;

    move-result-object v0

    .line 5549
    if-eqz v0, :cond_17

    .line 5550
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 5551
    if-eqz v0, :cond_17

    .line 5552
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5555
    :cond_17
    return-object p1
.end method

.method public whitelist getRemainingCreatableProfileCount(Ljava/lang/String;)I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5395
    const-string/jumbo v0, "userType must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5398
    :try_start_6
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    iget v1, p0, Landroid/os/UserManager;->mUserId:I

    invoke-interface {v0, p1, v1}, Landroid/os/IUserManager;->getRemainingCreatableProfileCount(Ljava/lang/String;I)I

    move-result p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return p1

    .line 5399
    :catch_f
    move-exception p1

    .line 5400
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getRemainingCreatableUserCount(Ljava/lang/String;)I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5371
    const-string/jumbo v0, "userType must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5373
    :try_start_6
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getRemainingCreatableUserCount(Ljava/lang/String;)I

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return p1

    .line 5374
    :catch_d
    move-exception p1

    .line 5375
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getRestrictedProfileParent()Landroid/os/UserHandle;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3494
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3495
    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 3496
    :cond_a
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v2

    if-nez v2, :cond_11

    return-object v1

    .line 3497
    :cond_11
    iget v0, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 3498
    const/16 v2, -0x2710

    if-ne v0, v2, :cond_18

    return-object v1

    .line 3499
    :cond_18
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSeedAccountName()Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4939
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->getSeedAccountName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 4940
    :catch_b
    move-exception v0

    .line 4941
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getSeedAccountOptions()Landroid/os/PersistableBundle;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4972
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->getSeedAccountOptions(I)Landroid/os/PersistableBundle;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 4973
    :catch_b
    move-exception v0

    .line 4974
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getSeedAccountType()Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4955
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->getSeedAccountType(I)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 4956
    :catch_b
    move-exception v0

    .line 4957
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getSerialNumberForUser(Landroid/os/UserHandle;)J
    .registers 4

    .line 4467
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public whitelist getSerialNumbersOfUsers(Z)[J
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5233
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object p1

    .line 5234
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [J

    .line 5235
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_1b

    .line 5236
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->serialNumber:I

    int-to-long v3, v3

    aput-wide v3, v1, v2

    .line 5235
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 5238
    :cond_1b
    return-object v1
.end method

.method public greylist-max-o getUserAccount(I)Ljava/lang/String;
    .registers 3

    .line 5251
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUserAccount(I)Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 5252
    :catch_7
    move-exception p1

    .line 5253
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getUserBadge()Landroid/graphics/drawable/Drawable;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6173
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isProfile(I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 6176
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 6177
    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 6178
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Landroid/os/UserManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Landroid/os/UserManager$$ExternalSyntheticLambda7;-><init>(Landroid/os/UserManager;)V

    const-string v2, "WORK_PROFILE_ICON_BADGE"

    const-string v3, "SOLID_COLORED"

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 6182
    :cond_2c
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-direct {p0, v0}, Landroid/os/UserManager;->getDefaultUserBadge(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 6174
    :cond_33
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    const-string v1, "No badge found for this user."

    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getUserBadgeColor(I)I
    .registers 4

    .line 6010
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUserBadgeColorResId(I)I

    move-result p1

    .line 6011
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    return p1

    .line 6012
    :catch_10
    move-exception p1

    .line 6013
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getUserBadgeDarkColor(I)I
    .registers 4

    .line 6031
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUserBadgeDarkColorResId(I)I

    move-result p1

    .line 6032
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    return p1

    .line 6033
    :catch_10
    move-exception p1

    .line 6034
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getUserBadgeNoBackgroundResId(I)I
    .registers 3

    .line 6083
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUserBadgeNoBackgroundResId(I)I

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 6084
    :catch_7
    move-exception p1

    .line 6085
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getUserBadgeResId(I)I
    .registers 3

    .line 6066
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUserBadgeResId(I)I

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 6067
    :catch_7
    move-exception p1

    .line 6068
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getUserCount()I
    .registers 2

    .line 5117
    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 5118
    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public whitelist getUserCreationTime(Landroid/os/UserHandle;)J
    .registers 4

    .line 6912
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUserCreationTime(I)J

    move-result-wide v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-wide v0

    .line 6913
    :catch_b
    move-exception p1

    .line 6914
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getUserForSerialNumber(J)Landroid/os/UserHandle;
    .registers 3

    .line 4480
    long-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserHandle(I)I

    move-result p1

    .line 4481
    if-ltz p1, :cond_d

    new-instance p2, Landroid/os/UserHandle;

    invoke-direct {p2, p1}, Landroid/os/UserHandle;-><init>(I)V

    goto :goto_e

    :cond_d
    const/4 p2, 0x0

    :goto_e
    return-object p2
.end method

.method public greylist getUserHandle()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2913
    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v0

    return v0
.end method

.method public greylist getUserHandle(I)I
    .registers 3

    .line 6777
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUserHandle(I)I

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 6778
    :catch_7
    move-exception p1

    .line 6779
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getUserHandles(Z)Ljava/util/List;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 5212
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object p1

    .line 5213
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5214
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 5215
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5216
    goto :goto_11

    .line 5217
    :cond_25
    return-object v0
.end method

.method public whitelist getUserIcon()Landroid/graphics/Bitmap;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6618
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public greylist getUserIcon(I)Landroid/graphics/Bitmap;
    .registers 3

    .line 6589
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUserIcon(I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_20

    .line 6590
    if-eqz p1, :cond_1d

    .line 6592
    :try_start_8
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_16

    .line 6595
    :try_start_10
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_14
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_20

    .line 6597
    goto :goto_15

    .line 6596
    :catch_14
    move-exception p1

    .line 6592
    :goto_15
    return-object v0

    .line 6594
    :catchall_16
    move-exception v0

    .line 6595
    :try_start_17
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1b
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_20

    .line 6597
    goto :goto_1c

    .line 6596
    :catch_1b
    move-exception p1

    .line 6598
    :goto_1c
    :try_start_1c
    throw v0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1d} :catch_20

    .line 6602
    :cond_1d
    nop

    .line 6603
    const/4 p1, 0x0

    return-object p1

    .line 6600
    :catch_20
    move-exception p1

    .line 6601
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getUserIconBadgeResId(I)I
    .registers 3

    .line 6049
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUserIconBadgeResId(I)I

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 6050
    :catch_7
    move-exception p1

    .line 6051
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 4

    .line 4090
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/os/UserManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, v0}, Landroid/os/UserManager$$ExternalSyntheticLambda9;-><init>(Landroid/os/IUserManager;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/os/UserManagerCache;->getUserInfo(Landroid/os/IpcDataCache$RemoteCall;Ljava/lang/Integer;)Landroid/content/pm/UserInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getUserLogoutability(I)I
    .registers 3

    .line 2892
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUserLogoutability(I)I

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 2893
    :catch_7
    move-exception p1

    .line 2894
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getUserName()Ljava/lang/String;
    .registers 3

    .line 2964
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iget v1, p0, Landroid/os/UserManager;->mUserId:I

    if-ne v0, v1, :cond_15

    .line 2966
    :try_start_8
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0}, Landroid/os/IUserManager;->getUserName()Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return-object v0

    .line 2967
    :catch_f
    move-exception v0

    .line 2968
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 2971
    :cond_15
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2972
    if-eqz v0, :cond_24

    iget-object v1, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_24

    .line 2973
    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    return-object v0

    .line 2975
    :cond_24
    const-string v0, ""

    return-object v0
.end method

.method public whitelist getUserProfiles()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 5640
    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object v0

    .line 5641
    invoke-direct {p0, v0}, Landroid/os/UserManager;->convertUserIdsToUserHandles([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getUserProperties(Landroid/os/UserHandle;)Landroid/content/pm/UserProperties;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4118
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 4120
    if-ltz p1, :cond_4b

    .line 4125
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4126
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 4127
    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_41

    if-eq v0, v1, :cond_41

    .line 4128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The System (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is fetching a copy of UserProperties on behalf of callingUid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Possibly it should carefully first clearCallingIdentity or perhaps use UserManagerInternal.getUserProperties() instead?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "UserManager"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4135
    :cond_41
    new-instance v0, Landroid/os/UserManager$QueryUserId;

    invoke-direct {v0, p1}, Landroid/os/UserManager$QueryUserId;-><init>(I)V

    invoke-direct {p0, v0}, Landroid/os/UserManager;->getUserPropertiesFromQuery(Landroid/os/UserManager$QueryUserId;)Landroid/content/pm/UserProperties;

    move-result-object p1

    return-object p1

    .line 4122
    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot access properties for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getUserRemovability(I)I
    .registers 3

    .line 6482
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUserRemovability(I)I

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 6483
    :catch_7
    move-exception p1

    .line 6484
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getUserRestrictionSource(Ljava/lang/String;Landroid/os/UserHandle;)I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4183
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->getUserRestrictionSource(Ljava/lang/String;I)I

    move-result p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return p1

    .line 4184
    :catch_b
    move-exception p1

    .line 4185
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getUserRestrictionSources(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserManager$EnforcingUser;",
            ">;"
        }
    .end annotation

    .line 4204
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    .line 4205
    :catch_b
    move-exception p1

    .line 4206
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getUserRestrictions()Landroid/os/Bundle;
    .registers 3

    .line 4222
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 4223
    :catch_b
    move-exception v0

    .line 4224
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;
    .registers 3

    .line 4242
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    .line 4243
    :catch_b
    move-exception p1

    .line 4244
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist getUserSerialNumber(I)I
    .registers 5

    .line 6758
    if-nez p1, :cond_4

    .line 6759
    const/4 p1, 0x0

    return p1

    .line 6761
    :cond_4
    iget-object v0, p0, Landroid/os/UserManager;->mIpcDataCache:Ljava/lang/Object;

    check-cast v0, Landroid/os/UserManagerCache;

    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    .line 6762
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/os/UserManager$$ExternalSyntheticLambda13;

    invoke-direct {v2, v1}, Landroid/os/UserManager$$ExternalSyntheticLambda13;-><init>(Landroid/os/IUserManager;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 6761
    invoke-virtual {v0, v2, p1}, Landroid/os/UserManagerCache;->getUserSerialNumber(Landroid/os/IpcDataCache$RemoteCall;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public greylist-max-r getUserStartRealtime()J
    .registers 3

    .line 4042
    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_17

    .line 4049
    :try_start_a
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0}, Landroid/os/IUserManager;->getUserStartRealtime()J

    move-result-wide v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return-wide v0

    .line 4050
    :catch_11
    move-exception v0

    .line 4051
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 4045
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Calling from a context differing from the calling user is not currently supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getUserStatusBarIconResId(I)I
    .registers 3

    .line 6098
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUserStatusBarIconResId(I)I

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 6099
    :catch_7
    move-exception p1

    .line 6100
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getUserSwitchability()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2846
    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserSwitchability(Landroid/os/UserHandle;)I

    move-result v0

    return v0
.end method

.method public blacklist getUserSwitchability(Landroid/os/UserHandle;)I
    .registers 3

    .line 2864
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUserSwitchability(I)I

    move-result p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return p1

    .line 2865
    :catch_b
    move-exception p1

    .line 2866
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getUserType()Ljava/lang/String;
    .registers 2

    .line 2942
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2943
    if-nez v0, :cond_b

    const-string v0, ""

    goto :goto_d

    :cond_b
    iget-object v0, v0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    :goto_d
    return-object v0
.end method

.method public greylist-max-r getUserUnlockRealtime()J
    .registers 3

    .line 4064
    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_17

    .line 4071
    :try_start_a
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0}, Landroid/os/IUserManager;->getUserUnlockRealtime()J

    move-result-wide v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return-wide v0

    .line 4072
    :catch_11
    move-exception v0

    .line 4073
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 4067
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Calling from a context differing from the calling user is not currently supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist getUsers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 5138
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist getUsers(Z)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5174
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUsers(Z)Ljava/util/List;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 5175
    :catch_7
    move-exception p1

    .line 5176
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist getUsers(ZZZ)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5196
    invoke-virtual {p0, p2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getVisibleUsers()Ljava/util/Set;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 3905
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 3907
    :try_start_5
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1}, Landroid/os/IUserManager;->getVisibleUsers()[I

    move-result-object v1

    .line 3908
    if-eqz v1, :cond_1d

    .line 3909
    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_1d

    aget v4, v1, v3

    .line 3910
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1a} :catch_1f

    .line 3909
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 3915
    :cond_1d
    nop

    .line 3916
    return-object v0

    .line 3913
    :catch_1f
    move-exception v0

    .line 3914
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist hasBadge()Z
    .registers 2

    .line 5993
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasBadge(I)Z

    move-result v0

    return v0
.end method

.method public blacklist hasBadge(I)Z
    .registers 3

    .line 5972
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isProfile(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 5974
    const/4 p1, 0x0

    return p1

    .line 5977
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->hasBadge(I)Z

    move-result p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return p1

    .line 5978
    :catch_f
    move-exception p1

    .line 5979
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 4

    .line 4264
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->hasBaseUserRestriction(Ljava/lang/String;I)Z

    move-result p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return p1

    .line 4265
    :catch_b
    move-exception p1

    .line 4266
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist hasRestrictedProfiles()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3475
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->hasRestrictedProfiles(I)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 3476
    :catch_b
    move-exception v0

    .line 3477
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist hasUserRestriction(Ljava/lang/String;)Z
    .registers 3

    .line 4346
    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/os/UserManager;->hasUserRestrictionForUser(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public greylist hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4364
    invoke-virtual {p0, p1, p2}, Landroid/os/UserManager;->hasUserRestrictionForUser(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    return p1
.end method

.method public whitelist hasUserRestrictionForUser(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4385
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/os/UserManager;->hasUserRestrictionForUser(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o hasUserRestrictionOnAnyUser(Ljava/lang/String;)Z
    .registers 3

    .line 4419
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->hasUserRestrictionOnAnyUser(Ljava/lang/String;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 4420
    :catch_7
    move-exception p1

    .line 4421
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist isAdminUser()Z
    .registers 3

    .line 3199
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->isAdminUser(I)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 3200
    :catch_b
    move-exception v0

    .line 3201
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist isCloneProfile()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3676
    invoke-direct {p0}, Landroid/os/UserManager;->getProfileType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->isUserTypeCloneProfile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist isCommunalProfile()Z
    .registers 2

    .line 3169
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-direct {p0, v0}, Landroid/os/UserManager;->isCommunalProfile(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isCredentialSharableWithParent()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6356
    :try_start_0
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserProperties(Landroid/os/UserHandle;)Landroid/content/pm/UserProperties;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserProperties;->isCredentialShareableWithParent()Z

    move-result v0
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_e} :catch_f

    return v0

    .line 6357
    :catch_f
    move-exception v0

    .line 6359
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isDemoUser()Z
    .registers 3

    .line 3547
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->isDemoUser(I)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 3548
    :catch_b
    move-exception v0

    .line 3549
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist-max-o isEphemeralUser()Z
    .registers 2

    .line 3713
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserEphemeral(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isForegroundUserAdmin()Z
    .registers 2

    .line 3231
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0}, Landroid/os/IUserManager;->isForegroundUserAdmin()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3232
    :catch_7
    move-exception v0

    .line 3233
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist isGuestUser()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3530
    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3531
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public greylist-max-r isGuestUser(I)Z
    .registers 2

    .line 3513
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 3514
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public greylist isLinkedUser()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3353
    invoke-virtual {p0}, Landroid/os/UserManager;->isRestrictedProfile()Z

    move-result v0

    return v0
.end method

.method public whitelist isMainUser()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3094
    invoke-virtual {p0}, Landroid/os/UserManager;->logDeprecation()V

    .line 3096
    :try_start_3
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    iget v1, p0, Landroid/os/UserManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->isMainUser(I)Z

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_c

    return v0

    .line 3097
    :catch_c
    move-exception v0

    .line 3098
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist isManagedProfile()Z
    .registers 2

    .line 3635
    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isManagedProfile(I)Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3657
    invoke-direct {p0, p1}, Landroid/os/UserManager;->getProfileType(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserManager;->isUserTypeManagedProfile(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public whitelist isMediaSharedWithParent()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6329
    :try_start_0
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserProperties(Landroid/os/UserHandle;)Landroid/content/pm/UserProperties;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserProperties;->isMediaSharedWithParent()Z

    move-result v0
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_e} :catch_f

    return v0

    .line 6330
    :catch_f
    move-exception v0

    .line 6332
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isPrimaryUser()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3048
    invoke-virtual {p0}, Landroid/os/UserManager;->logDeprecation()V

    .line 3049
    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3050
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimaryUnlogged()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method public whitelist isPrivateProfile()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3698
    invoke-direct {p0}, Landroid/os/UserManager;->getProfileType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->isUserTypePrivateProfile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist isProfile()Z
    .registers 2

    .line 3566
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isProfile(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isProfile(I)Z
    .registers 3

    .line 3574
    invoke-direct {p0, p1}, Landroid/os/UserManager;->getProfileType(I)Ljava/lang/String;

    move-result-object p1

    .line 3575
    if-eqz p1, :cond_10

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method public whitelist isQuietModeEnabled(Landroid/os/UserHandle;)Z
    .registers 4

    .line 5954
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 5955
    if-gez v0, :cond_8

    .line 5956
    const/4 p1, 0x0

    return p1

    .line 5958
    :cond_8
    iget-object v0, p0, Landroid/os/UserManager;->mIpcDataCache:Ljava/lang/Object;

    check-cast v0, Landroid/os/UserManagerCache;

    new-instance v1, Landroid/os/UserManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Landroid/os/UserManager$$ExternalSyntheticLambda4;-><init>(Landroid/os/UserManager;)V

    invoke-virtual {v0, v1, p1}, Landroid/os/UserManagerCache;->isQuietModeEnabled(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/UserHandle;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public whitelist isRestrictedProfile()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3379
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->isRestricted(I)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 3380
    :catch_b
    move-exception v0

    .line 3381
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist isRestrictedProfile(Landroid/os/UserHandle;)Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3407
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->isRestricted(I)Z

    move-result p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return p1

    .line 3408
    :catch_b
    move-exception p1

    .line 3409
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o isSameProfileGroup(II)Z
    .registers 4

    .line 5587
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->isSameProfileGroup(II)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 5588
    :catch_7
    move-exception p1

    .line 5589
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist isSameProfileGroup(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5572
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    move-result p1

    return p1
.end method

.method public blacklist isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z
    .registers 6

    .line 4438
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IUserManager;->isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 4439
    :catch_7
    move-exception p1

    .line 4440
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist isSystemUser()Z
    .registers 2

    .line 3062
    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isUserAGoat()Z
    .registers 3

    .line 3019
    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_e

    .line 3020
    const/4 v0, 0x0

    return v0

    .line 3024
    :cond_e
    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3025
    const-string v1, "com.coffeestainstudios.goatsimulator"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v0

    .line 3024
    return v0
.end method

.method public greylist isUserAdmin(I)Z
    .registers 2

    .line 3216
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 3217
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public greylist-max-o isUserEphemeral(I)Z
    .registers 2

    .line 3725
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 3726
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public whitelist isUserForeground()Z
    .registers 3

    .line 3800
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    iget v1, p0, Landroid/os/UserManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->isUserForeground(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 3801
    :catch_9
    move-exception v0

    .line 3802
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist isUserNameSet()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2999
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->isUserNameSet(I)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 3000
    :catch_b
    move-exception v0

    .line 3001
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist isUserOfType(Ljava/lang/String;)Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3253
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    iget v1, p0, Landroid/os/UserManager;->mUserId:I

    invoke-interface {v0, v1, p1}, Landroid/os/IUserManager;->isUserOfType(ILjava/lang/String;)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 3254
    :catch_9
    move-exception p1

    .line 3255
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o isUserRunning(I)Z
    .registers 3

    .line 3756
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->isUserRunning(I)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 3757
    :catch_7
    move-exception p1

    .line 3758
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist isUserRunning(Landroid/os/UserHandle;)Z
    .registers 2

    .line 3748
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result p1

    return p1
.end method

.method public whitelist isUserRunningOrStopping(Landroid/os/UserHandle;)Z
    .registers 4

    .line 3782
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 3783
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 3782
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->isUserRunning(II)Z

    move-result p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return p1

    .line 3784
    :catch_e
    move-exception p1

    .line 3785
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o isUserSwitcherEnabled()Z
    .registers 2

    .line 6670
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserSwitcherEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public blacklist isUserSwitcherEnabled(Z)Z
    .registers 4

    .line 6689
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    iget v1, p0, Landroid/os/UserManager;->mUserId:I

    invoke-interface {v0, p1, v1}, Landroid/os/IUserManager;->isUserSwitcherEnabled(ZI)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 6690
    :catch_9
    move-exception p1

    .line 6691
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist isUserTypeEnabled(Ljava/lang/String;)Z
    .registers 3

    .line 5498
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->isUserTypeEnabled(Ljava/lang/String;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 5499
    :catch_7
    move-exception p1

    .line 5500
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist isUserUnlocked()Z
    .registers 2

    .line 3958
    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    return v0
.end method

.method public greylist isUserUnlocked(I)Z
    .registers 4

    .line 3991
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/os/UserManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Landroid/os/UserManager$$ExternalSyntheticLambda5;-><init>(Landroid/os/IUserManager;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/os/UserManagerCache;->isUserUnlocked(Landroid/os/IpcDataCache$RemoteCall;Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public whitelist isUserUnlocked(Landroid/os/UserHandle;)Z
    .registers 2

    .line 3982
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o isUserUnlockingOrUnlocked(I)Z
    .registers 4

    .line 4029
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    .line 4030
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/os/UserManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, v0}, Landroid/os/UserManager$$ExternalSyntheticLambda10;-><init>(Landroid/os/IUserManager;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/os/UserManagerCache;->isUserUnlockingOrUnlocked(Landroid/os/IpcDataCache$RemoteCall;Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p1

    .line 4029
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public whitelist isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4021
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result p1

    return p1
.end method

.method public whitelist isUserVisible()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3886
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    iget v1, p0, Landroid/os/UserManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->isUserVisible(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 3887
    :catch_9
    move-exception v0

    .line 3888
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist isVisibleBackgroundUsersOnDefaultDisplaySupported()Z
    .registers 2

    .line 3858
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersOnDefaultDisplayEnabled()Z

    move-result v0

    return v0
.end method

.method public blacklist isVisibleBackgroundUsersSupported()Z
    .registers 2

    .line 3834
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    return v0
.end method

.method public blacklist logDeprecation()V
    .registers 5

    .line 7055
    sget-boolean v0, Landroid/os/UserManager;->DEBUG_LOG_DEPRECATION:Z

    if-nez v0, :cond_5

    .line 7056
    return-void

    .line 7058
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deprecated call on pkg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    .line 7059
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (from user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/UserManager;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7058
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "MultiuserDeprecation"

    invoke-static {v1, v2, v3, v0, v2}, Landroid/util/Log;->logStackTrace(IILjava/lang/String;Ljava/lang/String;I)I

    .line 7061
    return-void
.end method

.method public greylist-max-o markGuestForDeletion(I)Z
    .registers 3

    .line 5025
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->markGuestForDeletion(I)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 5026
    :catch_7
    move-exception p1

    .line 5027
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist preCreateUser(Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/UserManager$UserOperationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4603
    const-string v0, "UserManager"

    const-string/jumbo v1, "preCreateUser(): Pre-created user is deprecated."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4605
    :try_start_8
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->preCreateUserWithThrow(Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p1
    :try_end_e
    .catch Landroid/os/ServiceSpecificException; {:try_start_8 .. :try_end_e} :catch_15
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return-object p1

    .line 4608
    :catch_f
    move-exception p1

    .line 4609
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 4606
    :catch_15
    move-exception p1

    .line 4607
    invoke-static {p1}, Landroid/os/UserManager$UserOperationException;->from(Landroid/os/ServiceSpecificException;)Landroid/os/UserManager$UserOperationException;

    move-result-object p1

    throw p1
.end method

.method public greylist removeUser(I)Z
    .registers 3

    .line 6373
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->removeUser(I)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 6374
    :catch_7
    move-exception p1

    .line 6375
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist removeUser(Landroid/os/UserHandle;)Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6391
    if-eqz p1, :cond_b

    .line 6394
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->removeUser(I)Z

    move-result p1

    return p1

    .line 6392
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "user cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o removeUserEvenWhenDisallowed(I)Z
    .registers 3

    .line 6410
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->removeUserEvenWhenDisallowed(I)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 6411
    :catch_7
    move-exception p1

    .line 6412
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist removeUserWhenPossible(Landroid/os/UserHandle;Z)I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6439
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->removeUserWhenPossible(IZ)I

    move-result p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return p1

    .line 6440
    :catch_b
    move-exception p1

    .line 6441
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist requestQuietModeEnabled(ZLandroid/os/UserHandle;)Z
    .registers 4

    .line 5885
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;Landroid/content/IntentSender;)Z

    move-result p1

    return p1
.end method

.method public whitelist requestQuietModeEnabled(ZLandroid/os/UserHandle;I)Z
    .registers 5

    .line 5904
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;Landroid/content/IntentSender;I)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o requestQuietModeEnabled(ZLandroid/os/UserHandle;Landroid/content/IntentSender;)Z
    .registers 5

    .line 5918
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;Landroid/content/IntentSender;I)Z

    move-result p1

    return p1
.end method

.method public blacklist requestQuietModeEnabled(ZLandroid/os/UserHandle;Landroid/content/IntentSender;I)Z
    .registers 11

    .line 5933
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    iget-object v1, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    .line 5934
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 5933
    move v2, p1

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/os/IUserManager;->requestQuietModeEnabled(Ljava/lang/String;ZILandroid/content/IntentSender;I)Z

    move-result p1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    return p1

    .line 5936
    :catch_14
    move-exception v0

    move-object p1, v0

    .line 5937
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist revokeUserAdmin(I)V
    .registers 3

    .line 5089
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->revokeUserAdmin(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 5092
    nop

    .line 5093
    return-void

    .line 5090
    :catch_7
    move-exception p1

    .line 5091
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 5

    .line 6858
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IUserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 6861
    nop

    .line 6862
    return-void

    .line 6859
    :catch_b
    move-exception p1

    .line 6860
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setBootUser(Landroid/os/UserHandle;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6969
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->setBootUser(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 6972
    nop

    .line 6973
    return-void

    .line 6970
    :catch_b
    move-exception p1

    .line 6971
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o setDefaultGuestRestrictions(Landroid/os/Bundle;)V
    .registers 3

    .line 6884
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->setDefaultGuestRestrictions(Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 6887
    nop

    .line 6888
    return-void

    .line 6885
    :catch_7
    move-exception p1

    .line 6886
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setRestrictionsChallenge(Ljava/lang/String;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6874
    const/4 p1, 0x0

    return p1
.end method

.method public greylist-max-o setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 11

    .line 4993
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    const/4 v5, 0x1

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/os/IUserManager;->setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    .line 4997
    nop

    .line 4998
    return-void

    .line 4995
    :catch_c
    move-exception v0

    move-object p1, v0

    .line 4996
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o setUserAccount(ILjava/lang/String;)V
    .registers 4

    .line 5267
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->setUserAccount(ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 5270
    nop

    .line 5271
    return-void

    .line 5268
    :catch_7
    move-exception p1

    .line 5269
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o setUserAdmin(I)V
    .registers 3

    .line 5068
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->setUserAdmin(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 5071
    nop

    .line 5072
    return-void

    .line 5069
    :catch_7
    move-exception p1

    .line 5070
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o setUserEnabled(I)V
    .registers 3

    .line 5047
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->setUserEnabled(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 5050
    nop

    .line 5051
    return-void

    .line 5048
    :catch_7
    move-exception p1

    .line 5049
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setUserEphemeral(IZ)Z
    .registers 4

    .line 6523
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->setUserEphemeral(IZ)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 6524
    :catch_7
    move-exception p1

    .line 6525
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o setUserIcon(ILandroid/graphics/Bitmap;)V
    .registers 4

    .line 6552
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V
    :try_end_5
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 6557
    nop

    .line 6558
    return-void

    .line 6555
    :catch_7
    move-exception p1

    .line 6556
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 6553
    :catch_d
    move-exception p1

    .line 6554
    return-void
.end method

.method public whitelist setUserIcon(Landroid/graphics/Bitmap;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/UserManager$UserOperationException;
        }
    .end annotation

    .line 6574
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-virtual {p0, v0, p1}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 6575
    return-void
.end method

.method public greylist-max-o setUserName(ILjava/lang/String;)V
    .registers 4

    .line 6498
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->setUserName(ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 6501
    nop

    .line 6502
    return-void

    .line 6499
    :catch_7
    move-exception p1

    .line 6500
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setUserName(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6539
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-virtual {p0, v0, p1}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    .line 6540
    return-void
.end method

.method public whitelist setUserRestriction(Ljava/lang/String;Z)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4305
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-direct {p0}, Landroid/os/UserManager;->getContextUserIfAppropriate()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/os/IUserManager;->setUserRestriction(Ljava/lang/String;ZI)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 4308
    nop

    .line 4309
    return-void

    .line 4306
    :catch_b
    move-exception p1

    .line 4307
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4326
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IUserManager;->setUserRestriction(Ljava/lang/String;ZI)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 4329
    nop

    .line 4330
    return-void

    .line 4327
    :catch_b
    move-exception p1

    .line 4328
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setUserRestrictions(Landroid/os/Bundle;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4277
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method is no longer supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setUserRestrictions(Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4287
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This method is no longer supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist someUserHasAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6948
    const-string v0, "accountName must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6949
    const-string v0, "accountType must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6952
    :try_start_a
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->someUserHasAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return p1

    .line 6953
    :catch_11
    move-exception p1

    .line 6954
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 6929
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 6930
    :catch_7
    move-exception p1

    .line 6931
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
