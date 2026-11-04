.class public final Landroid/provider/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Settings$Readable;,
        Landroid/provider/Settings$SettingNotFoundException;,
        Landroid/provider/Settings$AddWifiResult;,
        Landroid/provider/Settings$Panel;,
        Landroid/provider/Settings$Bookmarks;,
        Landroid/provider/Settings$Config;,
        Landroid/provider/Settings$Global;,
        Landroid/provider/Settings$Secure;,
        Landroid/provider/Settings$System;,
        Landroid/provider/Settings$NameValueCache;,
        Landroid/provider/Settings$ContentProviderHolder;,
        Landroid/provider/Settings$GenerationTracker;,
        Landroid/provider/Settings$NameValueTable;,
        Landroid/provider/Settings$ResetMode;,
        Landroid/provider/Settings$EnableMmsDataReason;,
        Landroid/provider/Settings$SupervisorVerificationSetting;,
        Landroid/provider/Settings$SetAllResult;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_ACCESSIBILITY_COLOR_CONTRAST_SETTINGS:Ljava/lang/String; = "android.settings.ACCESSIBILITY_COLOR_CONTRAST_SETTINGS"

.field public static final blacklist ACTION_ACCESSIBILITY_COLOR_MOTION_SETTINGS:Ljava/lang/String; = "android.settings.ACCESSIBILITY_COLOR_MOTION_SETTINGS"

.field public static final whitelist ACTION_ACCESSIBILITY_DETAILS_SETTINGS:Ljava/lang/String; = "android.settings.ACCESSIBILITY_DETAILS_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_ACCESSIBILITY_SETTINGS:Ljava/lang/String; = "android.settings.ACCESSIBILITY_SETTINGS"

.field public static final blacklist ACTION_ACCESSIBILITY_SHORTCUT_SETTINGS:Ljava/lang/String; = "android.settings.ACCESSIBILITY_SHORTCUT_SETTINGS"

.field public static final whitelist ACTION_ADD_ACCOUNT:Ljava/lang/String; = "android.settings.ADD_ACCOUNT_SETTINGS"

.field public static final whitelist ACTION_ADVANCED_MEMORY_PROTECTION_SETTINGS:Ljava/lang/String; = "android.settings.ADVANCED_MEMORY_PROTECTION_SETTINGS"

.field public static final whitelist ACTION_AIRPLANE_MODE_SETTINGS:Ljava/lang/String; = "android.settings.AIRPLANE_MODE_SETTINGS"

.field public static final whitelist ACTION_ALL_APPS_NOTIFICATION_SETTINGS:Ljava/lang/String; = "android.settings.ALL_APPS_NOTIFICATION_SETTINGS"

.field public static final blacklist ACTION_ALL_APPS_NOTIFICATION_SETTINGS_FOR_REVIEW:Ljava/lang/String; = "android.settings.ALL_APPS_NOTIFICATION_SETTINGS_FOR_REVIEW"

.field public static final whitelist ACTION_APN_SETTINGS:Ljava/lang/String; = "android.settings.APN_SETTINGS"

.field public static final whitelist ACTION_APPLICATION_DETAILS_SETTINGS:Ljava/lang/String; = "android.settings.APPLICATION_DETAILS_SETTINGS"

.field public static final whitelist ACTION_APPLICATION_DEVELOPMENT_SETTINGS:Ljava/lang/String; = "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

.field public static final whitelist ACTION_APPLICATION_SETTINGS:Ljava/lang/String; = "android.settings.APPLICATION_SETTINGS"

.field public static final whitelist ACTION_APP_LOCALE_SETTINGS:Ljava/lang/String; = "android.settings.APP_LOCALE_SETTINGS"

.field public static final whitelist ACTION_APP_NOTIFICATION_BUBBLE_SETTINGS:Ljava/lang/String; = "android.settings.APP_NOTIFICATION_BUBBLE_SETTINGS"

.field public static final whitelist ACTION_APP_NOTIFICATION_PROMOTION_SETTINGS:Ljava/lang/String; = "android.settings.APP_NOTIFICATION_PROMOTION_SETTINGS"

.field public static final greylist-max-o ACTION_APP_NOTIFICATION_REDACTION:Ljava/lang/String; = "android.settings.ACTION_APP_NOTIFICATION_REDACTION"

.field public static final whitelist ACTION_APP_NOTIFICATION_SETTINGS:Ljava/lang/String; = "android.settings.APP_NOTIFICATION_SETTINGS"

.field public static final whitelist ACTION_APP_OPEN_BY_DEFAULT_SETTINGS:Ljava/lang/String; = "android.settings.APP_OPEN_BY_DEFAULT_SETTINGS"

.field public static final greylist-max-o ACTION_APP_OPS_SETTINGS:Ljava/lang/String; = "android.settings.APP_OPS_SETTINGS"

.field public static final whitelist ACTION_APP_PERMISSIONS_SETTINGS:Ljava/lang/String; = "android.settings.APP_PERMISSIONS_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_APP_SEARCH_SETTINGS:Ljava/lang/String; = "android.settings.APP_SEARCH_SETTINGS"

.field public static final whitelist ACTION_APP_USAGE_SETTINGS:Ljava/lang/String; = "android.settings.action.APP_USAGE_SETTINGS"

.field public static final greylist-max-o ACTION_ASSIST_GESTURE_SETTINGS:Ljava/lang/String; = "android.settings.ASSIST_GESTURE_SETTINGS"

.field public static final whitelist ACTION_AUTOMATIC_ZEN_RULE_SETTINGS:Ljava/lang/String; = "android.settings.AUTOMATIC_ZEN_RULE_SETTINGS"

.field public static final whitelist ACTION_AUTO_ROTATE_SETTINGS:Ljava/lang/String; = "android.settings.AUTO_ROTATE_SETTINGS"

.field public static final whitelist ACTION_BATTERY_SAVER_SETTINGS:Ljava/lang/String; = "android.settings.BATTERY_SAVER_SETTINGS"

.field public static final whitelist ACTION_BEDTIME_SETTINGS:Ljava/lang/String; = "android.settings.BEDTIME_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_BIOMETRIC_ENROLL:Ljava/lang/String; = "android.settings.BIOMETRIC_ENROLL"

.field public static final blacklist ACTION_BLUETOOTH_PAIRING_SETTINGS:Ljava/lang/String; = "android.settings.BLUETOOTH_PAIRING_SETTINGS"

.field public static final whitelist ACTION_BLUETOOTH_SETTINGS:Ljava/lang/String; = "android.settings.BLUETOOTH_SETTINGS"

.field public static final whitelist ACTION_BUGREPORT_HANDLER_SETTINGS:Ljava/lang/String; = "android.settings.BUGREPORT_HANDLER_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ACTION_BYPASS_SUPERVISION_RESTRICTION:Ljava/lang/String; = "android.settings.BYPASS_SUPERVISION_RESTRICTION"

.field public static final whitelist ACTION_CAPTIONING_SETTINGS:Ljava/lang/String; = "android.settings.CAPTIONING_SETTINGS"

.field public static final whitelist ACTION_CAST_SETTINGS:Ljava/lang/String; = "android.settings.CAST_SETTINGS"

.field public static final whitelist ACTION_CHANNEL_NOTIFICATION_SETTINGS:Ljava/lang/String; = "android.settings.CHANNEL_NOTIFICATION_SETTINGS"

.field public static final blacklist ACTION_COLOR_CORRECTION_SETTINGS:Ljava/lang/String; = "com.android.settings.ACCESSIBILITY_COLOR_SPACE_SETTINGS"

.field public static final blacklist ACTION_COLOR_INVERSION_SETTINGS:Ljava/lang/String; = "android.settings.COLOR_INVERSION_SETTINGS"

.field public static final blacklist ACTION_COMMUNAL_SETTING:Ljava/lang/String; = "android.settings.COMMUNAL_SETTINGS"

.field public static final whitelist ACTION_CONDITION_PROVIDER_SETTINGS:Ljava/lang/String; = "android.settings.ACTION_CONDITION_PROVIDER_SETTINGS"

.field public static final blacklist ACTION_CONVERSATION_SETTINGS:Ljava/lang/String; = "android.settings.CONVERSATION_SETTINGS"

.field public static final whitelist ACTION_CREDENTIAL_PROVIDER:Ljava/lang/String; = "android.settings.CREDENTIAL_PROVIDER"

.field public static final blacklist ACTION_DARK_THEME_SETTINGS:Ljava/lang/String; = "android.settings.DARK_THEME_SETTINGS"

.field public static final whitelist ACTION_DATA_ROAMING_SETTINGS:Ljava/lang/String; = "android.settings.DATA_ROAMING_SETTINGS"

.field public static final blacklist ACTION_DATA_SAVER_SETTINGS:Ljava/lang/String; = "android.settings.DATA_SAVER_SETTINGS"

.field public static final whitelist ACTION_DATA_USAGE_SETTINGS:Ljava/lang/String; = "android.settings.DATA_USAGE_SETTINGS"

.field public static final whitelist ACTION_DATE_SETTINGS:Ljava/lang/String; = "android.settings.DATE_SETTINGS"

.field public static final blacklist ACTION_DEVICE_CONTROLS_SETTINGS:Ljava/lang/String; = "android.settings.ACTION_DEVICE_CONTROLS_SETTINGS"

.field public static final whitelist ACTION_DEVICE_INFO_SETTINGS:Ljava/lang/String; = "android.settings.DEVICE_INFO_SETTINGS"

.field public static final whitelist ACTION_DISPLAY_SETTINGS:Ljava/lang/String; = "android.settings.DISPLAY_SETTINGS"

.field public static final blacklist ACTION_DOUBLE_TAP_POWER_SETTINGS:Ljava/lang/String; = "android.settings.action.DOUBLE_TAP_POWER_SETTINGS"

.field public static final whitelist ACTION_DREAM_SETTINGS:Ljava/lang/String; = "android.settings.DREAM_SETTINGS"

.field public static final blacklist ACTION_ENABLE_MMS_DATA_REQUEST:Ljava/lang/String; = "android.settings.ENABLE_MMS_DATA_REQUEST"

.field public static final whitelist ACTION_ENTERPRISE_PRIVACY_SETTINGS:Ljava/lang/String; = "android.settings.ENTERPRISE_PRIVACY_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_FINGERPRINT_ENROLL:Ljava/lang/String; = "android.settings.FINGERPRINT_ENROLL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_FIRST_DAY_OF_WEEK_SETTINGS:Ljava/lang/String; = "android.settings.FIRST_DAY_OF_WEEK_SETTINGS"

.field public static final greylist-max-o ACTION_FOREGROUND_SERVICES_SETTINGS:Ljava/lang/String; = "android.settings.FOREGROUND_SERVICES_SETTINGS"

.field public static final whitelist ACTION_HARD_KEYBOARD_SETTINGS:Ljava/lang/String; = "android.settings.HARD_KEYBOARD_SETTINGS"

.field public static final blacklist ACTION_HEARING_DEVICES_SETTINGS:Ljava/lang/String; = "android.settings.HEARING_DEVICES_SETTINGS"

.field public static final blacklist ACTION_HEARING_DEVICE_PAIRING_SETTINGS:Ljava/lang/String; = "android.settings.HEARING_DEVICES_PAIRING_SETTINGS"

.field public static final whitelist ACTION_HOME_SETTINGS:Ljava/lang/String; = "android.settings.HOME_SETTINGS"

.field public static final whitelist ACTION_IGNORE_BACKGROUND_DATA_RESTRICTIONS_SETTINGS:Ljava/lang/String; = "android.settings.IGNORE_BACKGROUND_DATA_RESTRICTIONS_SETTINGS"

.field public static final whitelist ACTION_IGNORE_BATTERY_OPTIMIZATION_SETTINGS:Ljava/lang/String; = "android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS"

.field public static final whitelist ACTION_INPUT_METHOD_SETTINGS:Ljava/lang/String; = "android.settings.INPUT_METHOD_SETTINGS"

.field public static final whitelist ACTION_INPUT_METHOD_SUBTYPE_SETTINGS:Ljava/lang/String; = "android.settings.INPUT_METHOD_SUBTYPE_SETTINGS"

.field public static final whitelist ACTION_INTERNAL_STORAGE_SETTINGS:Ljava/lang/String; = "android.settings.INTERNAL_STORAGE_SETTINGS"

.field public static final whitelist ACTION_LOCALE_SETTINGS:Ljava/lang/String; = "android.settings.LOCALE_SETTINGS"

.field public static final whitelist ACTION_LOCATION_CONTROLLER_EXTRA_PACKAGE_SETTINGS:Ljava/lang/String; = "android.settings.LOCATION_CONTROLLER_EXTRA_PACKAGE_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o ACTION_LOCATION_SCANNING_SETTINGS:Ljava/lang/String; = "android.settings.LOCATION_SCANNING_SETTINGS"

.field public static final whitelist ACTION_LOCATION_SOURCE_SETTINGS:Ljava/lang/String; = "android.settings.LOCATION_SOURCE_SETTINGS"

.field public static final blacklist ACTION_LOCKSCREEN_NOTIFICATIONS_SETTINGS:Ljava/lang/String; = "android.settings.LOCK_SCREEN_NOTIFICATIONS_SETTINGS"

.field public static final blacklist ACTION_LOCKSCREEN_SETTINGS:Ljava/lang/String; = "android.settings.LOCK_SCREEN_SETTINGS"

.field public static final greylist-max-o ACTION_MANAGED_PROFILE_SETTINGS:Ljava/lang/String; = "android.settings.MANAGED_PROFILE_SETTINGS"

.field public static final blacklist ACTION_MANAGE_ADAPTIVE_NOTIFICATIONS:Ljava/lang/String; = "android.settings.MANAGE_ADAPTIVE_NOTIFICATIONS"

.field public static final whitelist ACTION_MANAGE_ALL_APPLICATIONS_SETTINGS:Ljava/lang/String; = "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

.field public static final whitelist ACTION_MANAGE_ALL_FILES_ACCESS_PERMISSION:Ljava/lang/String; = "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

.field public static final whitelist ACTION_MANAGE_ALL_SIM_PROFILES_SETTINGS:Ljava/lang/String; = "android.settings.MANAGE_ALL_SIM_PROFILES_SETTINGS"

.field public static final whitelist ACTION_MANAGE_APPLICATIONS_SETTINGS:Ljava/lang/String; = "android.settings.MANAGE_APPLICATIONS_SETTINGS"

.field public static final whitelist ACTION_MANAGE_APP_ALL_FILES_ACCESS_PERMISSION:Ljava/lang/String; = "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

.field public static final blacklist ACTION_MANAGE_APP_LONG_RUNNING_JOBS:Ljava/lang/String; = "android.settings.MANAGE_APP_LONG_RUNNING_JOBS"

.field public static final whitelist ACTION_MANAGE_APP_OVERLAY_PERMISSION:Ljava/lang/String; = "android.settings.MANAGE_APP_OVERLAY_PERMISSION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_MANAGE_APP_USE_FULL_SCREEN_INTENT:Ljava/lang/String; = "android.settings.MANAGE_APP_USE_FULL_SCREEN_INTENT"

.field public static final blacklist ACTION_MANAGE_CLONED_APPS_SETTINGS:Ljava/lang/String; = "android.settings.MANAGE_CLONED_APPS_SETTINGS"

.field public static final blacklist ACTION_MANAGE_CROSS_PROFILE_ACCESS:Ljava/lang/String; = "android.settings.MANAGE_CROSS_PROFILE_ACCESS"

.field public static final whitelist ACTION_MANAGE_DEFAULT_APPS_SETTINGS:Ljava/lang/String; = "android.settings.MANAGE_DEFAULT_APPS_SETTINGS"

.field public static final whitelist ACTION_MANAGE_DOMAIN_URLS:Ljava/lang/String; = "android.settings.MANAGE_DOMAIN_URLS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_MANAGE_MORE_DEFAULT_APPS_SETTINGS:Ljava/lang/String; = "android.settings.MANAGE_MORE_DEFAULT_APPS_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ACTION_MANAGE_OTHER_NFC_SERVICES_SETTINGS:Ljava/lang/String; = "android.settings.MANAGE_OTHER_NFC_SERVICES_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_MANAGE_OVERLAY_PERMISSION:Ljava/lang/String; = "android.settings.action.MANAGE_OVERLAY_PERMISSION"

.field public static final whitelist ACTION_MANAGE_SUPERVISOR_RESTRICTED_SETTING:Ljava/lang/String; = "android.settings.MANAGE_SUPERVISOR_RESTRICTED_SETTING"

.field public static final whitelist ACTION_MANAGE_UNKNOWN_APP_SOURCES:Ljava/lang/String; = "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

.field public static final blacklist ACTION_MANAGE_USER_ASPECT_RATIO_SETTINGS:Ljava/lang/String; = "android.settings.MANAGE_USER_ASPECT_RATIO_SETTINGS"

.field public static final whitelist ACTION_MANAGE_WRITE_SETTINGS:Ljava/lang/String; = "android.settings.action.MANAGE_WRITE_SETTINGS"

.field public static final whitelist ACTION_MEASUREMENT_SYSTEM_SETTINGS:Ljava/lang/String; = "android.settings.MEASUREMENT_SYSTEM_SETTINGS"

.field public static final blacklist ACTION_MEDIA_CONTROLS_SETTINGS:Ljava/lang/String; = "android.settings.ACTION_MEDIA_CONTROLS_SETTINGS"

.field public static final whitelist ACTION_MEMORY_CARD_SETTINGS:Ljava/lang/String; = "android.settings.MEMORY_CARD_SETTINGS"

.field public static final blacklist ACTION_MMS_MESSAGE_SETTING:Ljava/lang/String; = "android.settings.MMS_MESSAGE_SETTING"

.field public static final greylist-max-o ACTION_MOBILE_DATA_USAGE:Ljava/lang/String; = "android.settings.MOBILE_DATA_USAGE"

.field public static final greylist-max-o ACTION_MONITORING_CERT_INFO:Ljava/lang/String; = "com.android.settings.MONITORING_CERT_INFO"

.field public static final whitelist ACTION_NETWORK_OPERATOR_SETTINGS:Ljava/lang/String; = "android.settings.NETWORK_OPERATOR_SETTINGS"

.field public static final blacklist ACTION_NETWORK_PROVIDER_SETTINGS:Ljava/lang/String; = "android.settings.NETWORK_PROVIDER_SETTINGS"

.field public static final whitelist ACTION_NFCSHARING_SETTINGS:Ljava/lang/String; = "android.settings.NFCSHARING_SETTINGS"

.field public static final whitelist ACTION_NFC_PAYMENT_SETTINGS:Ljava/lang/String; = "android.settings.NFC_PAYMENT_SETTINGS"

.field public static final whitelist ACTION_NFC_SETTINGS:Ljava/lang/String; = "android.settings.NFC_SETTINGS"

.field public static final whitelist ACTION_NIGHT_DISPLAY_SETTINGS:Ljava/lang/String; = "android.settings.NIGHT_DISPLAY_SETTINGS"

.field public static final whitelist ACTION_NOTIFICATION_ASSISTANT_SETTINGS:Ljava/lang/String; = "android.settings.NOTIFICATION_ASSISTANT_SETTINGS"

.field public static final blacklist ACTION_NOTIFICATION_BUNDLES:Ljava/lang/String; = "android.settings.NOTIFICATION_BUNDLES"

.field public static final blacklist ACTION_NOTIFICATION_HISTORY:Ljava/lang/String; = "android.settings.NOTIFICATION_HISTORY"

.field public static final whitelist ACTION_NOTIFICATION_LISTENER_DETAIL_SETTINGS:Ljava/lang/String; = "android.settings.NOTIFICATION_LISTENER_DETAIL_SETTINGS"

.field public static final whitelist ACTION_NOTIFICATION_LISTENER_SETTINGS:Ljava/lang/String; = "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

.field public static final whitelist ACTION_NOTIFICATION_POLICY_ACCESS_DETAIL_SETTINGS:Ljava/lang/String; = "android.settings.NOTIFICATION_POLICY_ACCESS_DETAIL_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_NOTIFICATION_POLICY_ACCESS_SETTINGS:Ljava/lang/String; = "android.settings.NOTIFICATION_POLICY_ACCESS_SETTINGS"

.field public static final greylist-max-o ACTION_NOTIFICATION_SETTINGS:Ljava/lang/String; = "android.settings.NOTIFICATION_SETTINGS"

.field public static final blacklist ACTION_NOTIFICATION_SUMMARIZATION:Ljava/lang/String; = "android.settings.NOTIFICATION_SUMMARIZATION"

.field public static final blacklist ACTION_ONE_HANDED_SETTINGS:Ljava/lang/String; = "android.settings.action.ONE_HANDED_SETTINGS"

.field public static final greylist-max-o ACTION_PAIRING_SETTINGS:Ljava/lang/String; = "android.settings.PAIRING_SETTINGS"

.field public static final greylist-max-o ACTION_PICTURE_IN_PICTURE_SETTINGS:Ljava/lang/String; = "android.settings.PICTURE_IN_PICTURE_SETTINGS"

.field public static final blacklist ACTION_POWER_MENU_SETTINGS:Ljava/lang/String; = "android.settings.ACTION_POWER_MENU_SETTINGS"

.field public static final whitelist ACTION_PRINT_SETTINGS:Ljava/lang/String; = "android.settings.ACTION_PRINT_SETTINGS"

.field public static final blacklist ACTION_PRIVACY_CONTROLS:Ljava/lang/String; = "android.settings.PRIVACY_CONTROLS"

.field public static final whitelist ACTION_PRIVACY_SETTINGS:Ljava/lang/String; = "android.settings.PRIVACY_SETTINGS"

.field public static final blacklist ACTION_PRIVATE_DNS_SETTING:Ljava/lang/String; = "com.android.settings.PRIVATE_DNS_SETTINGS"

.field public static final whitelist ACTION_PROCESS_WIFI_EASY_CONNECT_URI:Ljava/lang/String; = "android.settings.PROCESS_WIFI_EASY_CONNECT_URI"

.field public static final whitelist ACTION_QUICK_ACCESS_WALLET_SETTINGS:Ljava/lang/String; = "android.settings.QUICK_ACCESS_WALLET_SETTINGS"

.field public static final whitelist ACTION_QUICK_LAUNCH_SETTINGS:Ljava/lang/String; = "android.settings.QUICK_LAUNCH_SETTINGS"

.field public static final blacklist ACTION_REDUCE_BRIGHT_COLORS_SETTINGS:Ljava/lang/String; = "android.settings.REDUCE_BRIGHT_COLORS_SETTINGS"

.field public static final whitelist ACTION_REGIONAL_PREFERENCES_SETTINGS:Ljava/lang/String; = "android.settings.REGIONAL_PREFERENCES_SETTINGS"

.field public static final whitelist ACTION_REGION_SETTINGS:Ljava/lang/String; = "android.settings.REGION_SETTINGS"

.field public static final whitelist ACTION_REQUEST_ENABLE_CONTENT_CAPTURE:Ljava/lang/String; = "android.settings.REQUEST_ENABLE_CONTENT_CAPTURE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_REQUEST_IGNORE_BATTERY_OPTIMIZATIONS:Ljava/lang/String; = "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

.field public static final whitelist ACTION_REQUEST_MANAGE_MEDIA:Ljava/lang/String; = "android.settings.REQUEST_MANAGE_MEDIA"

.field public static final whitelist ACTION_REQUEST_MEDIA_ROUTING_CONTROL:Ljava/lang/String; = "android.settings.REQUEST_MEDIA_ROUTING_CONTROL"

.field public static final whitelist ACTION_REQUEST_SCHEDULE_EXACT_ALARM:Ljava/lang/String; = "android.settings.REQUEST_SCHEDULE_EXACT_ALARM"

.field public static final whitelist ACTION_REQUEST_SET_AUTOFILL_SERVICE:Ljava/lang/String; = "android.settings.REQUEST_SET_AUTOFILL_SERVICE"

.field public static final whitelist ACTION_SATELLITE_SETTING:Ljava/lang/String; = "android.settings.SATELLITE_SETTING"

.field public static final blacklist ACTION_SCREEN_MAGNIFICATION_SETTINGS:Ljava/lang/String; = "android.settings.MAGNIFICATION_SETTINGS"

.field public static final whitelist ACTION_SEARCH_SETTINGS:Ljava/lang/String; = "android.search.action.SEARCH_SETTINGS"

.field public static final whitelist ACTION_SECURITY_SETTINGS:Ljava/lang/String; = "android.settings.SECURITY_SETTINGS"

.field public static final whitelist ACTION_SETTINGS:Ljava/lang/String; = "android.settings.SETTINGS"

.field public static final whitelist ACTION_SETTINGS_EMBED_DEEP_LINK_ACTIVITY:Ljava/lang/String; = "android.settings.SETTINGS_EMBED_DEEP_LINK_ACTIVITY"

.field public static final whitelist ACTION_SHOW_ADMIN_SUPPORT_DETAILS:Ljava/lang/String; = "android.settings.SHOW_ADMIN_SUPPORT_DETAILS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ACTION_SHOW_ENABLED_ESIM_PROFILE:Ljava/lang/String; = "android.settings.SHOW_ENABLED_ESIM_PROFILE"

.field public static final whitelist ACTION_SHOW_REGULATORY_INFO:Ljava/lang/String; = "android.settings.SHOW_REGULATORY_INFO"

.field public static final greylist-max-o ACTION_SHOW_REMOTE_BUGREPORT_DIALOG:Ljava/lang/String; = "android.settings.SHOW_REMOTE_BUGREPORT_DIALOG"

.field public static final whitelist ACTION_SHOW_RESTRICTED_SETTING_DIALOG:Ljava/lang/String; = "android.settings.SHOW_RESTRICTED_SETTING_DIALOG"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_SHOW_WORK_POLICY_INFO:Ljava/lang/String; = "android.settings.SHOW_WORK_POLICY_INFO"

.field public static final whitelist ACTION_SIM_PREFERENCE_SETTINGS:Ljava/lang/String; = "android.settings.SIM_PREFERENCE_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_SOUND_SETTINGS:Ljava/lang/String; = "android.settings.SOUND_SETTINGS"

.field public static final greylist-max-o ACTION_STORAGE_MANAGER_SETTINGS:Ljava/lang/String; = "android.settings.STORAGE_MANAGER_SETTINGS"

.field public static final whitelist ACTION_STORAGE_VOLUME_ACCESS_SETTINGS:Ljava/lang/String; = "android.settings.STORAGE_VOLUME_ACCESS_SETTINGS"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_SYNC_SETTINGS:Ljava/lang/String; = "android.settings.SYNC_SETTINGS"

.field public static final whitelist ACTION_SYSTEM_UPDATE_SETTINGS:Ljava/lang/String; = "android.settings.SYSTEM_UPDATE_SETTINGS"

.field public static final whitelist ACTION_TEMPERATURE_UNIT_SETTINGS:Ljava/lang/String; = "android.settings.TEMPERATURE_UNIT_SETTINGS"

.field public static final whitelist ACTION_TETHER_PROVISIONING_UI:Ljava/lang/String; = "android.settings.TETHER_PROVISIONING_UI"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_TETHER_SETTINGS:Ljava/lang/String; = "android.settings.TETHER_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_TETHER_UNSUPPORTED_CARRIER_UI:Ljava/lang/String; = "android.settings.TETHER_UNSUPPORTED_CARRIER_UI"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ACTION_TEXT_READING_SETTINGS:Ljava/lang/String; = "android.settings.TEXT_READING_SETTINGS"

.field public static final greylist ACTION_TRUSTED_CREDENTIALS_USER:Ljava/lang/String; = "com.android.settings.TRUSTED_CREDENTIALS_USER"

.field public static final whitelist ACTION_USAGE_ACCESS_SETTINGS:Ljava/lang/String; = "android.settings.USAGE_ACCESS_SETTINGS"

.field public static final greylist-max-r ACTION_USER_DICTIONARY_INSERT:Ljava/lang/String; = "com.android.settings.USER_DICTIONARY_INSERT"

.field public static final whitelist ACTION_USER_DICTIONARY_SETTINGS:Ljava/lang/String; = "android.settings.USER_DICTIONARY_SETTINGS"

.field public static final whitelist ACTION_USER_SETTINGS:Ljava/lang/String; = "android.settings.USER_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ACTION_VIEW_ADVANCED_POWER_USAGE_DETAIL:Ljava/lang/String; = "android.settings.VIEW_ADVANCED_POWER_USAGE_DETAIL"

.field public static final whitelist ACTION_VOICE_CONTROL_AIRPLANE_MODE:Ljava/lang/String; = "android.settings.VOICE_CONTROL_AIRPLANE_MODE"

.field public static final whitelist ACTION_VOICE_CONTROL_BATTERY_SAVER_MODE:Ljava/lang/String; = "android.settings.VOICE_CONTROL_BATTERY_SAVER_MODE"

.field public static final whitelist ACTION_VOICE_CONTROL_DO_NOT_DISTURB_MODE:Ljava/lang/String; = "android.settings.VOICE_CONTROL_DO_NOT_DISTURB_MODE"

.field public static final whitelist ACTION_VOICE_INPUT_SETTINGS:Ljava/lang/String; = "android.settings.VOICE_INPUT_SETTINGS"

.field public static final whitelist ACTION_VPN_SETTINGS:Ljava/lang/String; = "android.settings.VPN_SETTINGS"

.field public static final whitelist ACTION_VR_LISTENER_SETTINGS:Ljava/lang/String; = "android.settings.VR_LISTENER_SETTINGS"

.field public static final whitelist ACTION_WEBVIEW_SETTINGS:Ljava/lang/String; = "android.settings.WEBVIEW_SETTINGS"

.field public static final whitelist ACTION_WIFI_ADD_NETWORKS:Ljava/lang/String; = "android.settings.WIFI_ADD_NETWORKS"

.field public static final whitelist ACTION_WIFI_IP_SETTINGS:Ljava/lang/String; = "android.settings.WIFI_IP_SETTINGS"

.field public static final whitelist ACTION_WIFI_SETTINGS:Ljava/lang/String; = "android.settings.WIFI_SETTINGS"

.field public static final blacklist ACTION_WIFI_TETHER_SETTING:Ljava/lang/String; = "com.android.settings.WIFI_TETHER_SETTINGS"

.field public static final whitelist ACTION_WIRELESS_SETTINGS:Ljava/lang/String; = "android.settings.WIRELESS_SETTINGS"

.field public static final greylist-max-o ACTION_ZEN_MODE_AUTOMATION_SETTINGS:Ljava/lang/String; = "android.settings.ZEN_MODE_AUTOMATION_SETTINGS"

.field public static final greylist-max-o ACTION_ZEN_MODE_EVENT_RULE_SETTINGS:Ljava/lang/String; = "android.settings.ZEN_MODE_EVENT_RULE_SETTINGS"

.field public static final greylist-max-o ACTION_ZEN_MODE_EXTERNAL_RULE_SETTINGS:Ljava/lang/String; = "android.settings.ZEN_MODE_EXTERNAL_RULE_SETTINGS"

.field public static final whitelist ACTION_ZEN_MODE_PRIORITY_SETTINGS:Ljava/lang/String; = "android.settings.ZEN_MODE_PRIORITY_SETTINGS"

.field public static final greylist-max-o ACTION_ZEN_MODE_SCHEDULE_RULE_SETTINGS:Ljava/lang/String; = "android.settings.ZEN_MODE_SCHEDULE_RULE_SETTINGS"

.field public static final greylist-max-o ACTION_ZEN_MODE_SETTINGS:Ljava/lang/String; = "android.settings.ZEN_MODE_SETTINGS"

.field public static final whitelist ADD_WIFI_RESULT_ADD_OR_UPDATE_FAILED:I = 0x1

.field public static final whitelist ADD_WIFI_RESULT_ALREADY_EXISTS:I = 0x2

.field public static final whitelist ADD_WIFI_RESULT_SUCCESS:I = 0x0

.field public static final whitelist AUTHORITY:Ljava/lang/String; = "settings"

.field public static final blacklist CALL_METHOD_DELETE_CONFIG:Ljava/lang/String; = "DELETE_config"

.field public static final blacklist CALL_METHOD_DELETE_GLOBAL:Ljava/lang/String; = "DELETE_global"

.field public static final blacklist CALL_METHOD_DELETE_SECURE:Ljava/lang/String; = "DELETE_secure"

.field public static final blacklist CALL_METHOD_DELETE_SYSTEM:Ljava/lang/String; = "DELETE_system"

.field public static final blacklist CALL_METHOD_FLAGS_KEY:Ljava/lang/String; = "_flags"

.field public static final greylist-max-o CALL_METHOD_GENERATION_INDEX_KEY:Ljava/lang/String; = "_generation_index"

.field public static final greylist-max-o CALL_METHOD_GENERATION_KEY:Ljava/lang/String; = "_generation"

.field public static final blacklist CALL_METHOD_GET_CONFIG:Ljava/lang/String; = "GET_config"

.field public static final greylist-max-o CALL_METHOD_GET_GLOBAL:Ljava/lang/String; = "GET_global"

.field public static final greylist-max-o CALL_METHOD_GET_SECURE:Ljava/lang/String; = "GET_secure"

.field public static final blacklist CALL_METHOD_GET_SYNC_DISABLED_MODE_CONFIG:Ljava/lang/String; = "GET_SYNC_DISABLED_MODE_config"

.field public static final greylist-max-o CALL_METHOD_GET_SYSTEM:Ljava/lang/String; = "GET_system"

.field public static final blacklist CALL_METHOD_LIST_CONFIG:Ljava/lang/String; = "LIST_config"

.field public static final blacklist CALL_METHOD_LIST_GLOBAL:Ljava/lang/String; = "LIST_global"

.field public static final blacklist CALL_METHOD_LIST_NAMESPACES_CONFIG:Ljava/lang/String; = "LIST_namespaces_config"

.field public static final blacklist CALL_METHOD_LIST_SECURE:Ljava/lang/String; = "LIST_secure"

.field public static final blacklist CALL_METHOD_LIST_SYSTEM:Ljava/lang/String; = "LIST_system"

.field public static final greylist-max-o CALL_METHOD_MAKE_DEFAULT_KEY:Ljava/lang/String; = "_make_default"

.field public static final blacklist CALL_METHOD_MONITOR_CALLBACK_KEY:Ljava/lang/String; = "_monitor_callback_key"

.field public static final blacklist CALL_METHOD_OVERRIDEABLE_BY_RESTORE_KEY:Ljava/lang/String; = "_overrideable_by_restore"

.field public static final blacklist CALL_METHOD_PREFIX_KEY:Ljava/lang/String; = "_prefix"

.field public static final blacklist CALL_METHOD_PUT_CONFIG:Ljava/lang/String; = "PUT_config"

.field public static final greylist-max-o CALL_METHOD_PUT_GLOBAL:Ljava/lang/String; = "PUT_global"

.field public static final greylist-max-o CALL_METHOD_PUT_SECURE:Ljava/lang/String; = "PUT_secure"

.field public static final greylist-max-o CALL_METHOD_PUT_SYSTEM:Ljava/lang/String; = "PUT_system"

.field public static final blacklist CALL_METHOD_REGISTER_MONITOR_CALLBACK_CONFIG:Ljava/lang/String; = "REGISTER_MONITOR_CALLBACK_config"

.field public static final blacklist CALL_METHOD_RESET_CONFIG:Ljava/lang/String; = "RESET_config"

.field public static final greylist-max-o CALL_METHOD_RESET_GLOBAL:Ljava/lang/String; = "RESET_global"

.field public static final greylist-max-o CALL_METHOD_RESET_MODE_KEY:Ljava/lang/String; = "_reset_mode"

.field public static final greylist-max-o CALL_METHOD_RESET_SECURE:Ljava/lang/String; = "RESET_secure"

.field public static final blacklist CALL_METHOD_RESET_SYSTEM:Ljava/lang/String; = "RESET_system"

.field public static final blacklist CALL_METHOD_SET_ALL_CONFIG:Ljava/lang/String; = "SET_ALL_config"

.field public static final blacklist CALL_METHOD_SET_SYNC_DISABLED_MODE_CONFIG:Ljava/lang/String; = "SET_SYNC_DISABLED_MODE_config"

.field public static final blacklist CALL_METHOD_SYNC_DISABLED_MODE_KEY:Ljava/lang/String; = "_disabled_mode"

.field public static final greylist-max-o CALL_METHOD_TAG_KEY:Ljava/lang/String; = "_tag"

.field public static final greylist-max-o CALL_METHOD_TRACK_GENERATION_KEY:Ljava/lang/String; = "_track_generation"

.field public static final blacklist CALL_METHOD_UNREGISTER_MONITOR_CALLBACK_CONFIG:Ljava/lang/String; = "UNREGISTER_MONITOR_CALLBACK_config"

.field public static final greylist-max-o CALL_METHOD_USER_KEY:Ljava/lang/String; = "_user"

.field public static final blacklist DEFAULT_OVERRIDEABLE_BY_RESTORE:Z = false

.field public static final greylist-max-o DEVICE_NAME_SETTINGS:Ljava/lang/String; = "android.settings.DEVICE_NAME"

.field public static final blacklist ENABLE_MMS_DATA_REQUEST_REASON_INCOMING_MMS:I = 0x0

.field public static final blacklist ENABLE_MMS_DATA_REQUEST_REASON_OUTGOING_MMS:I = 0x1

.field public static final blacklist EXTRA_ACCESS_CALLBACK:Ljava/lang/String; = "access_callback"

.field public static final whitelist EXTRA_ACCOUNT_TYPES:Ljava/lang/String; = "account_types"

.field public static final whitelist EXTRA_AIRPLANE_MODE_ENABLED:Ljava/lang/String; = "airplane_mode_enabled"

.field public static final whitelist EXTRA_APP_PACKAGE:Ljava/lang/String; = "android.provider.extra.APP_PACKAGE"

.field public static final greylist-max-r EXTRA_APP_UID:Ljava/lang/String; = "app_uid"

.field public static final whitelist EXTRA_AUTHORITIES:Ljava/lang/String; = "authorities"

.field public static final whitelist EXTRA_AUTOMATIC_ZEN_RULE_ID:Ljava/lang/String; = "android.provider.extra.AUTOMATIC_ZEN_RULE_ID"

.field public static final whitelist EXTRA_BATTERY_SAVER_MODE_ENABLED:Ljava/lang/String; = "android.settings.extra.battery_saver_mode_enabled"

.field public static final whitelist EXTRA_BIOMETRIC_AUTHENTICATORS_ALLOWED:Ljava/lang/String; = "android.provider.extra.BIOMETRIC_AUTHENTICATORS_ALLOWED"

.field public static final blacklist EXTRA_CALLING_PACKAGE:Ljava/lang/String; = "calling_package"

.field public static final whitelist EXTRA_CHANNEL_FILTER_LIST:Ljava/lang/String; = "android.provider.extra.CHANNEL_FILTER_LIST"

.field public static final whitelist EXTRA_CHANNEL_ID:Ljava/lang/String; = "android.provider.extra.CHANNEL_ID"

.field public static final whitelist EXTRA_CONVERSATION_ID:Ljava/lang/String; = "android.provider.extra.CONVERSATION_ID"

.field public static final whitelist EXTRA_DO_NOT_DISTURB_MODE_ENABLED:Ljava/lang/String; = "android.settings.extra.do_not_disturb_mode_enabled"

.field public static final whitelist EXTRA_DO_NOT_DISTURB_MODE_MINUTES:Ljava/lang/String; = "android.settings.extra.do_not_disturb_mode_minutes"

.field public static final whitelist EXTRA_EASY_CONNECT_ATTEMPTED_SSID:Ljava/lang/String; = "android.provider.extra.EASY_CONNECT_ATTEMPTED_SSID"

.field public static final whitelist EXTRA_EASY_CONNECT_BAND_LIST:Ljava/lang/String; = "android.provider.extra.EASY_CONNECT_BAND_LIST"

.field public static final whitelist EXTRA_EASY_CONNECT_CHANNEL_LIST:Ljava/lang/String; = "android.provider.extra.EASY_CONNECT_CHANNEL_LIST"

.field public static final whitelist EXTRA_EASY_CONNECT_ERROR_CODE:Ljava/lang/String; = "android.provider.extra.EASY_CONNECT_ERROR_CODE"

.field public static final blacklist EXTRA_ENABLE_MMS_DATA_REQUEST_REASON:Ljava/lang/String; = "android.settings.extra.ENABLE_MMS_DATA_REQUEST_REASON"

.field public static final blacklist EXTRA_ENTRYPOINT:Ljava/lang/String; = "com.android.settings.inputmethod.EXTRA_ENTRYPOINT"

.field public static final blacklist EXTRA_EXPLICIT_LOCALES:Ljava/lang/String; = "android.provider.extra.EXPLICIT_LOCALES"

.field public static final greylist-max-o EXTRA_INPUT_DEVICE_IDENTIFIER:Ljava/lang/String; = "input_device_identifier"

.field public static final whitelist EXTRA_INPUT_METHOD_ID:Ljava/lang/String; = "input_method_id"

.field public static final blacklist EXTRA_MONITOR_CALLBACK_TYPE:Ljava/lang/String; = "monitor_callback_type"

.field public static final blacklist EXTRA_NAMESPACE:Ljava/lang/String; = "namespace"

.field public static final blacklist EXTRA_NAMESPACE_UPDATED_CALLBACK:Ljava/lang/String; = "namespace_updated_callback"

.field public static final greylist-max-o EXTRA_NETWORK_TEMPLATE:Ljava/lang/String; = "network_template"

.field public static final whitelist EXTRA_NOTIFICATION_LISTENER_COMPONENT_NAME:Ljava/lang/String; = "android.provider.extra.NOTIFICATION_LISTENER_COMPONENT_NAME"

.field public static final greylist-max-o EXTRA_NUMBER_OF_CERTIFICATES:Ljava/lang/String; = "android.settings.extra.number_of_certificates"

.field public static final whitelist EXTRA_SETTINGS_EMBEDDED_DEEP_LINK_HIGHLIGHT_MENU_KEY:Ljava/lang/String; = "android.provider.extra.SETTINGS_EMBEDDED_DEEP_LINK_HIGHLIGHT_MENU_KEY"

.field public static final whitelist EXTRA_SETTINGS_EMBEDDED_DEEP_LINK_INTENT_URI:Ljava/lang/String; = "android.provider.extra.SETTINGS_EMBEDDED_DEEP_LINK_INTENT_URI"

.field public static final whitelist EXTRA_SUB_ID:Ljava/lang/String; = "android.provider.extra.SUB_ID"

.field public static final blacklist EXTRA_SUPERVISION_RESTRICTION:Ljava/lang/String; = "android.settings.EXTRA_SUPERVISION_RESTRICTION"

.field public static final whitelist EXTRA_SUPERVISOR_RESTRICTED_SETTING_KEY:Ljava/lang/String; = "android.provider.extra.SUPERVISOR_RESTRICTED_SETTING_KEY"

.field public static final whitelist EXTRA_WIFI_NETWORK_LIST:Ljava/lang/String; = "android.provider.extra.WIFI_NETWORK_LIST"

.field public static final whitelist EXTRA_WIFI_NETWORK_RESULT_LIST:Ljava/lang/String; = "android.provider.extra.WIFI_NETWORK_RESULT_LIST"

.field public static final whitelist INTENT_CATEGORY_USAGE_ACCESS_CONFIG:Ljava/lang/String; = "android.intent.category.USAGE_ACCESS_CONFIG"

.field public static final blacklist KEY_CONFIG_GET_SYNC_DISABLED_MODE_RETURN:Ljava/lang/String; = "config_get_sync_disabled_mode_return"

.field public static final blacklist KEY_CONFIG_SET_ALL_RETURN:Ljava/lang/String; = "config_set_all_return"

.field private static final greylist-max-o LOCAL_LOGV:Z = false

.field public static final whitelist METADATA_USAGE_ACCESS_REASON:Ljava/lang/String; = "android.settings.metadata.USAGE_ACCESS_REASON"

.field private static final greylist-max-o PM_CHANGE_NETWORK_STATE:[Ljava/lang/String;

.field private static final greylist-max-o PM_SYSTEM_ALERT_WINDOW:[Ljava/lang/String;

.field private static final greylist-max-o PM_WRITE_SETTINGS:[Ljava/lang/String;

.field public static final greylist-max-r RESET_MODE_PACKAGE_DEFAULTS:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o RESET_MODE_TRUSTED_DEFAULTS:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o RESET_MODE_UNTRUSTED_CHANGES:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o RESET_MODE_UNTRUSTED_DEFAULTS:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist SET_ALL_RESULT_DISABLED:I = 0x2

.field public static final blacklist SET_ALL_RESULT_FAILURE:I = 0x0

.field public static final blacklist SET_ALL_RESULT_SUCCESS:I = 0x1

.field public static final whitelist SUPERVISOR_VERIFICATION_SETTING_BIOMETRICS:I = 0x1

.field public static final whitelist SUPERVISOR_VERIFICATION_SETTING_UNKNOWN:I = 0x0

.field private static final blacklist SYSTEM_PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Settings"

.field private static greylist-max-o sInSystemServer:Z

.field private static final greylist-max-o sInSystemServerLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetPublicSettingsForClass(Ljava/lang/Class;Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings;->getPublicSettingsForClass(Ljava/lang/Class;Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smmaybeCloseGenerationArray(Landroid/util/MemoryIntArray;)V
    .registers 1

    invoke-static {p0}, Landroid/provider/Settings;->maybeCloseGenerationArray(Landroid/util/MemoryIntArray;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smparseFloatSetting(Ljava/lang/String;Ljava/lang/String;)F
    .registers 2

    invoke-static {p0, p1}, Landroid/provider/Settings;->parseFloatSetting(Ljava/lang/String;Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smparseFloatSettingWithDefault(Ljava/lang/String;F)F
    .registers 2

    invoke-static {p0, p1}, Landroid/provider/Settings;->parseFloatSettingWithDefault(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smparseIntSetting(Ljava/lang/String;Ljava/lang/String;)I
    .registers 2

    invoke-static {p0, p1}, Landroid/provider/Settings;->parseIntSetting(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smparseIntSettingWithDefault(Ljava/lang/String;I)I
    .registers 2

    invoke-static {p0, p1}, Landroid/provider/Settings;->parseIntSettingWithDefault(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smparseLongSetting(Ljava/lang/String;Ljava/lang/String;)J
    .registers 2

    invoke-static {p0, p1}, Landroid/provider/Settings;->parseLongSetting(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smparseLongSettingWithDefault(Ljava/lang/String;J)J
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/provider/Settings;->parseLongSettingWithDefault(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 3402
    const/4 v0, 0x0

    sput-boolean v0, Landroid/provider/Settings;->sInSystemServer:Z

    .line 3403
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/provider/Settings;->sInSystemServerLock:Ljava/lang/Object;

    .line 24049
    const-string v0, "android.permission.WRITE_SETTINGS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/provider/Settings;->PM_WRITE_SETTINGS:[Ljava/lang/String;

    .line 24052
    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings;->PM_CHANGE_NETWORK_STATE:[Ljava/lang/String;

    .line 24056
    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings;->PM_SYSTEM_ALERT_WINDOW:[Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist canDrawOverlays(Landroid/content/Context;)Z
    .registers 4

    .line 4181
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 4182
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4181
    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings;->isCallingPackageAllowedToDrawOverlays(Landroid/content/Context;ILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_17

    .line 4182
    const-string v0, "android.permission.SYSTEM_APPLICATION_OVERLAY"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_18

    :cond_17
    const/4 v2, 0x1

    .line 4181
    :cond_18
    return v2
.end method

.method public static blacklist checkAndNoteDrawOverlaysOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Z
    .registers 13

    .line 24227
    sget-object v6, Landroid/provider/Settings;->PM_SYSTEM_ALERT_WINDOW:[Ljava/lang/String;

    const/4 v7, 0x1

    const/16 v5, 0x18

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v7}, Landroid/provider/Settings;->isCallingPackageAllowedToPerformAppOpsProtectedOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZI[Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static whitelist checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Z
    .registers 13
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 24194
    sget-object v6, Landroid/provider/Settings;->PM_WRITE_SETTINGS:[Ljava/lang/String;

    const/4 v7, 0x1

    const/16 v5, 0x17

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v7}, Landroid/provider/Settings;->isCallingPackageAllowedToPerformAppOpsProtectedOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZI[Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static whitelist checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Z)Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 24175
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Landroid/provider/Settings;->checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static greylist-max-o getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;
    .registers 2

    .line 24317
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    .line 24318
    if-nez p0, :cond_c

    .line 24319
    const/4 p0, 0x0

    return-object p0

    .line 24321
    :cond_c
    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0
.end method

.method private static blacklist getPublicSettingsForClass(Ljava/lang/Class;Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/provider/Settings$NameValueTable;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 4202
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 4204
    const/4 v1, 0x0

    :goto_5
    :try_start_5
    array-length v2, v0

    if-ge v1, v2, :cond_4d

    .line 4205
    aget-object v2, v0, v1

    .line 4206
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 4207
    goto :goto_4a

    .line 4209
    :cond_17
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 4210
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 4211
    goto :goto_4a

    .line 4213
    :cond_28
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4214
    const-class v4, Landroid/provider/Settings$Readable;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Landroid/provider/Settings$Readable;

    .line 4216
    if-eqz v2, :cond_4a

    .line 4217
    check-cast v3, Ljava/lang/String;

    .line 4218
    invoke-interface {v2}, Landroid/provider/Settings$Readable;->maxTargetSdk()I

    move-result v2

    .line 4219
    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4220
    if-eqz v2, :cond_4a

    .line 4221
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_4a} :catch_4e

    .line 4204
    :cond_4a
    :goto_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 4226
    :cond_4d
    goto :goto_4f

    .line 4225
    :catch_4e
    move-exception p0

    .line 4227
    :goto_4f
    return-void
.end method

.method public static greylist isCallingPackageAllowedToDrawOverlays(Landroid/content/Context;ILjava/lang/String;Z)Z
    .registers 12

    .line 24209
    sget-object v6, Landroid/provider/Settings;->PM_SYSTEM_ALERT_WINDOW:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/16 v5, 0x18

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    invoke-static/range {v0 .. v7}, Landroid/provider/Settings;->isCallingPackageAllowedToPerformAppOpsProtectedOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZI[Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static blacklist isCallingPackageAllowedToPerformAppOpsProtectedOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZI[Ljava/lang/String;Z)Z
    .registers 16

    .line 24256
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 24257
    return v0

    .line 24260
    :cond_4
    const-string v1, "appops"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/app/AppOpsManager;

    .line 24261
    nop

    .line 24262
    if-eqz p7, :cond_1a

    .line 24263
    const/4 v7, 0x0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v3, p5

    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_21

    .line 24266
    :cond_1a
    move v4, p1

    move-object v5, p2

    move v3, p5

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    .line 24269
    :goto_21
    const/4 p2, 0x1

    sparse-switch p1, :sswitch_data_78

    goto :goto_37

    .line 24277
    :sswitch_26
    array-length p1, p6

    move p3, v0

    :goto_28
    if-ge p3, p1, :cond_37

    aget-object p5, p6, p3

    .line 24278
    invoke-virtual {p0, p5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p5

    if-nez p5, :cond_33

    .line 24281
    return p2

    .line 24277
    :cond_33
    add-int/lit8 p3, p3, 0x1

    goto :goto_28

    .line 24271
    :sswitch_36
    return p2

    .line 24287
    :cond_37
    :goto_37
    if-nez p4, :cond_3a

    .line 24288
    return v0

    .line 24293
    :cond_3a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24294
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24295
    const-string p1, " was not granted "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24296
    array-length p1, p6

    if-le p1, p2, :cond_50

    .line 24297
    const-string p1, " either of these permissions: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_55

    .line 24299
    :cond_50
    const-string p1, " this permission: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24301
    :goto_55
    nop

    :goto_56
    array-length p1, p6

    if-ge v0, p1, :cond_6d

    .line 24302
    aget-object p1, p6, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24303
    array-length p1, p6

    sub-int/2addr p1, p2

    if-ne v0, p1, :cond_65

    const-string p1, "."

    goto :goto_67

    :cond_65
    const-string p1, ", "

    :goto_67
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24301
    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    .line 24306
    :cond_6d
    new-instance p1, Ljava/lang/SecurityException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_78
    .sparse-switch
        0x0 -> :sswitch_36
        0x3 -> :sswitch_26
    .end sparse-switch
.end method

.method public static greylist isCallingPackageAllowedToPerformAppOpsProtectedOperation(Landroid/content/Context;ILjava/lang/String;ZI[Ljava/lang/String;Z)Z
    .registers 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 24243
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/provider/Settings;->isCallingPackageAllowedToPerformAppOpsProtectedOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZI[Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static greylist-max-r isCallingPackageAllowedToWriteSettings(Landroid/content/Context;ILjava/lang/String;Z)Z
    .registers 12

    .line 24159
    sget-object v6, Landroid/provider/Settings;->PM_WRITE_SETTINGS:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/16 v5, 0x17

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    invoke-static/range {v0 .. v7}, Landroid/provider/Settings;->isCallingPackageAllowedToPerformAppOpsProtectedOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZI[Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static greylist-max-o isInSystemServer()Z
    .registers 2

    .line 3414
    sget-object v0, Landroid/provider/Settings;->sInSystemServerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3415
    :try_start_3
    sget-boolean v1, Landroid/provider/Settings;->sInSystemServer:Z

    monitor-exit v0

    return v1

    .line 3416
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private static blacklist maybeCloseGenerationArray(Landroid/util/MemoryIntArray;)V
    .registers 3

    .line 3535
    if-nez p0, :cond_3

    .line 3536
    return-void

    .line 3541
    :cond_3
    :try_start_3
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Landroid/util/MemoryIntArray;->isClosed()Z

    move-result v0

    if-nez v0, :cond_12

    .line 3542
    invoke-virtual {p0}, Landroid/util/MemoryIntArray;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_12} :catch_13

    .line 3546
    :cond_12
    goto :goto_1b

    .line 3544
    :catch_13
    move-exception p0

    .line 3545
    const-string v0, "Settings"

    const-string v1, "Error closing the generation tracking array"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3547
    :goto_1b
    return-void
.end method

.method private static blacklist parseFloatSetting(Ljava/lang/String;Ljava/lang/String;)F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 4231
    if-eqz p0, :cond_e

    .line 4235
    :try_start_2
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_6} :catch_7

    return p0

    .line 4236
    :catch_7
    move-exception p0

    .line 4237
    new-instance p0, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {p0, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4232
    :cond_e
    new-instance p0, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {p0, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist parseFloatSettingWithDefault(Ljava/lang/String;F)F
    .registers 2

    .line 4243
    if-eqz p0, :cond_9

    :try_start_2
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_6} :catch_7

    goto :goto_9

    .line 4244
    :catch_7
    move-exception p0

    .line 4245
    return p1

    .line 4243
    :cond_9
    :goto_9
    return p1
.end method

.method private static blacklist parseIntSetting(Ljava/lang/String;Ljava/lang/String;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 4251
    if-eqz p0, :cond_e

    .line 4255
    :try_start_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_6} :catch_7

    return p0

    .line 4256
    :catch_7
    move-exception p0

    .line 4257
    new-instance p0, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {p0, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4252
    :cond_e
    new-instance p0, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {p0, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist parseIntSettingWithDefault(Ljava/lang/String;I)I
    .registers 2

    .line 4263
    if-eqz p0, :cond_9

    :try_start_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_6} :catch_7

    goto :goto_9

    .line 4264
    :catch_7
    move-exception p0

    .line 4265
    return p1

    .line 4263
    :cond_9
    :goto_9
    return p1
.end method

.method private static blacklist parseLongSetting(Ljava/lang/String;Ljava/lang/String;)J
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 4271
    if-eqz p0, :cond_e

    .line 4275
    :try_start_2
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_6} :catch_7

    return-wide p0

    .line 4276
    :catch_7
    move-exception p0

    .line 4277
    new-instance p0, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {p0, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4272
    :cond_e
    new-instance p0, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {p0, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist parseLongSettingWithDefault(Ljava/lang/String;J)J
    .registers 3

    .line 4283
    if-eqz p0, :cond_9

    :try_start_2
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_6} :catch_7

    goto :goto_9

    .line 4284
    :catch_7
    move-exception p0

    .line 4285
    return-wide p1

    .line 4283
    :cond_9
    :goto_9
    return-wide p1
.end method

.method public static greylist-max-o setInSystemServer()V
    .registers 2

    .line 3407
    sget-object v0, Landroid/provider/Settings;->sInSystemServerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3408
    const/4 v1, 0x1

    :try_start_4
    sput-boolean v1, Landroid/provider/Settings;->sInSystemServer:Z

    .line 3409
    monitor-exit v0

    .line 3410
    return-void

    .line 3409
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method
