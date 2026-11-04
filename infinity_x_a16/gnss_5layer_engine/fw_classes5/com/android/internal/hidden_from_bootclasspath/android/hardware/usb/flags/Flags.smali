.class public final Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ENABLE_ACCESSORY_STREAM_API:Ljava/lang/String; = "android.hardware.usb.flags.enable_accessory_stream_api"

.field public static final blacklist FLAG_ENABLE_AOA_USERSPACE_IMPLEMENTATION:Ljava/lang/String; = "android.hardware.usb.flags.enable_aoa_userspace_implementation"

.field public static final blacklist FLAG_ENABLE_INPUT_POWER_LIMITED_WARNING:Ljava/lang/String; = "android.hardware.usb.flags.enable_input_power_limited_warning"

.field public static final blacklist FLAG_ENABLE_INTERFACE_NAME_DEVICE_FILTER:Ljava/lang/String; = "android.hardware.usb.flags.enable_interface_name_device_filter"

.field public static final blacklist FLAG_ENABLE_IS_MODE_CHANGE_SUPPORTED_API:Ljava/lang/String; = "android.hardware.usb.flags.enable_is_mode_change_supported_api"

.field public static final blacklist FLAG_ENABLE_IS_PD_COMPLIANT_API:Ljava/lang/String; = "android.hardware.usb.flags.enable_is_pd_compliant_api"

.field public static final blacklist FLAG_ENABLE_REPORT_USB_DATA_COMPLIANCE_WARNING:Ljava/lang/String; = "android.hardware.usb.flags.enable_report_usb_data_compliance_warning"

.field public static final blacklist FLAG_ENABLE_UAOA_ALL_PIXELS_EXCEPT_P8:Ljava/lang/String; = "android.hardware.usb.flags.enable_uaoa_all_pixels_except_p8"

.field public static final blacklist FLAG_ENABLE_UAOA_P8:Ljava/lang/String; = "android.hardware.usb.flags.enable_uaoa_p8"

.field public static final blacklist FLAG_ENABLE_UDC_SYSFS_USB_STATE_UPDATE:Ljava/lang/String; = "android.hardware.usb.flags.enable_udc_sysfs_usb_state_update"

.field public static final blacklist FLAG_ENABLE_USB_DATA_COMPLIANCE_WARNING:Ljava/lang/String; = "android.hardware.usb.flags.enable_usb_data_compliance_warning"

.field public static final blacklist FLAG_ENABLE_USB_DATA_SIGNAL_STAKING:Ljava/lang/String; = "android.hardware.usb.flags.enable_usb_data_signal_staking"

.field public static final blacklist FLAG_ENABLE_USB_DATA_SIGNAL_STAKING_INTERNAL:Ljava/lang/String; = "android.hardware.usb.flags.enable_usb_data_signal_staking_internal"

.field public static final blacklist FLAG_ENABLE_USB_SYSFS_MIDI_IDENTIFICATION:Ljava/lang/String; = "android.hardware.usb.flags.enable_usb_sysfs_midi_identification"

.field public static final blacklist FLAG_EXPOSE_USB_SPEED_SYSTEM_API:Ljava/lang/String; = "android.hardware.usb.flags.expose_usb_speed_system_api"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 127
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist enableAccessoryStreamApi()Z
    .registers 1

    .line 40
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;->enableAccessoryStreamApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableAoaUserspaceImplementation()Z
    .registers 1

    .line 46
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;->enableAoaUserspaceImplementation()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableInputPowerLimitedWarning()Z
    .registers 1

    .line 52
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;->enableInputPowerLimitedWarning()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableInterfaceNameDeviceFilter()Z
    .registers 1

    .line 58
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;->enableInterfaceNameDeviceFilter()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableIsModeChangeSupportedApi()Z
    .registers 1

    .line 64
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;->enableIsModeChangeSupportedApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableIsPdCompliantApi()Z
    .registers 1

    .line 70
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;->enableIsPdCompliantApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableReportUsbDataComplianceWarning()Z
    .registers 1

    .line 76
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;->enableReportUsbDataComplianceWarning()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableUaoaAllPixelsExceptP8()Z
    .registers 1

    .line 82
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;->enableUaoaAllPixelsExceptP8()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableUaoaP8()Z
    .registers 1

    .line 88
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;->enableUaoaP8()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableUdcSysfsUsbStateUpdate()Z
    .registers 1

    .line 94
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;->enableUdcSysfsUsbStateUpdate()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableUsbDataComplianceWarning()Z
    .registers 1

    .line 100
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;->enableUsbDataComplianceWarning()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableUsbDataSignalStaking()Z
    .registers 1

    .line 106
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;->enableUsbDataSignalStaking()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableUsbDataSignalStakingInternal()Z
    .registers 1

    .line 112
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;->enableUsbDataSignalStakingInternal()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableUsbSysfsMidiIdentification()Z
    .registers 1

    .line 118
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;->enableUsbSysfsMidiIdentification()Z

    move-result v0

    return v0
.end method

.method public static blacklist exposeUsbSpeedSystemApi()Z
    .registers 1

    .line 124
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;->exposeUsbSpeedSystemApi()Z

    move-result v0

    return v0
.end method
