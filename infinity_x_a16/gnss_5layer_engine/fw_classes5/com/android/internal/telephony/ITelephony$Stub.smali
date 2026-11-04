.class public abstract Lcom/android/internal/telephony/ITelephony$Stub;
.super Landroid/os/Binder;
.source "ITelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-r DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephony"

.field static final blacklist TRANSACTION_addAttachRestrictionForCarrier:I = 0x17d

.field static final blacklist TRANSACTION_addUceRegistrationOverrideShell:I = 0x12d

.field static final blacklist TRANSACTION_bootstrapAuthenticationRequest:I = 0x112

.field static final greylist TRANSACTION_call:I = 0x2

.field static final greylist-max-o TRANSACTION_canChangeDtmfToneLength:I = 0x79

.field static final blacklist TRANSACTION_canConnectTo5GInDsdsMode:I = 0x10a

.field static final greylist-max-o TRANSACTION_carrierActionReportDefaultNetworkStatus:I = 0x9e

.field static final blacklist TRANSACTION_carrierActionResetAll:I = 0x9f

.field static final greylist-max-o TRANSACTION_carrierActionSetRadioEnabled:I = 0x9d

.field static final blacklist TRANSACTION_changeIccLockPassword:I = 0x106

.field static final greylist-max-o TRANSACTION_checkCarrierPrivilegesForPackage:I = 0x69

.field static final greylist-max-o TRANSACTION_checkCarrierPrivilegesForPackageAnyPhone:I = 0x6a

.field static final blacklist TRANSACTION_clearCarrierImsServiceOverride:I = 0x55

.field static final blacklist TRANSACTION_clearDomainSelectionServiceOverride:I = 0x187

.field static final blacklist TRANSACTION_clearRadioPowerOffForReason:I = 0x16

.field static final blacklist TRANSACTION_clearSignalStrengthUpdateRequest:I = 0x135

.field static final blacklist TRANSACTION_clearUceRegistrationOverrideShell:I = 0x12f

.field static final blacklist TRANSACTION_deprovisionSatellite:I = 0x19f

.field static final blacklist TRANSACTION_deprovisionSatelliteService:I = 0x158

.field static final greylist-max-r TRANSACTION_dial:I = 0x1

.field static final greylist-max-o TRANSACTION_disableDataConnectivity:I = 0x1d

.field static final greylist-max-o TRANSACTION_disableIms:I = 0x4e

.field static final greylist-max-o TRANSACTION_disableLocationUpdates:I = 0x1b

.field static final greylist-max-o TRANSACTION_disableVisualVoicemailSmsFilter:I = 0x32

.field static final blacklist TRANSACTION_doesSwitchMultiSimConfigTriggerReboot:I = 0xf0

.field static final greylist-max-o TRANSACTION_enableDataConnectivity:I = 0x1c

.field static final greylist-max-o TRANSACTION_enableIms:I = 0x4d

.field static final greylist-max-o TRANSACTION_enableLocationUpdates:I = 0x1a

.field static final blacklist TRANSACTION_enableModemForSlot:I = 0xec

.field static final greylist-max-o TRANSACTION_enableVideoCalling:I = 0x77

.field static final greylist-max-o TRANSACTION_enableVisualVoicemailSmsFilter:I = 0x31

.field static final blacklist TRANSACTION_enqueueSmsPickResult:I = 0xfc

.field static final greylist-max-o TRANSACTION_factoryReset:I = 0x8a

.field static final greylist-max-o TRANSACTION_getActiveVisualVoicemailSmsFilterSettings:I = 0x34

.field static final greylist-max-o TRANSACTION_getAidForAppType:I = 0x94

.field static final greylist-max-o TRANSACTION_getAllCellInfo:I = 0x3d

.field static final greylist-max-o TRANSACTION_getAllowedCarriers:I = 0x97

.field static final blacklist TRANSACTION_getAllowedNetworkTypesBitmask:I = 0x4b

.field static final blacklist TRANSACTION_getAllowedNetworkTypesForReason:I = 0x5d

.field static final blacklist TRANSACTION_getAttachRestrictionReasonsForCarrier:I = 0x17f

.field static final blacklist TRANSACTION_getBoundGbaService:I = 0x114

.field static final blacklist TRANSACTION_getBoundImsServicePackage:I = 0x56

.field static final blacklist TRANSACTION_getCallComposerStatus:I = 0x8

.field static final blacklist TRANSACTION_getCallForwarding:I = 0xa0

.field static final greylist-max-o TRANSACTION_getCallState:I = 0x22

.field static final blacklist TRANSACTION_getCallStateForSubscription:I = 0x23

.field static final blacklist TRANSACTION_getCallWaitingStatus:I = 0xa2

.field static final blacklist TRANSACTION_getCapabilityFromEab:I = 0x12a

.field static final blacklist TRANSACTION_getCardIdForDefaultEuicc:I = 0xab

.field static final blacklist TRANSACTION_getCarrierIdFromIdentifier:I = 0x1a1

.field static final blacklist TRANSACTION_getCarrierIdFromMccMnc:I = 0x9c

.field static final greylist-max-o TRANSACTION_getCarrierIdListVersion:I = 0xb4

.field static final greylist-max-o TRANSACTION_getCarrierPackageNamesForIntentAndPhone:I = 0x6b

.field static final greylist-max-o TRANSACTION_getCarrierPrivilegeStatus:I = 0x67

.field static final greylist-max-o TRANSACTION_getCarrierPrivilegeStatusForUid:I = 0x68

.field static final blacklist TRANSACTION_getCarrierRestrictionStatus:I = 0x14e

.field static final blacklist TRANSACTION_getCarrierServicePackageNameForLogicalSlot:I = 0x143

.field static final blacklist TRANSACTION_getCarrierSingleRegistrationEnabled:I = 0x124

.field static final blacklist TRANSACTION_getCellBroadcastIdRanges:I = 0x14b

.field static final greylist-max-o TRANSACTION_getCellLocation:I = 0x1f

.field static final greylist-max-o TRANSACTION_getCellNetworkScanResults:I = 0x59

.field static final blacklist TRANSACTION_getCertsFromCarrierPrivilegeAccessRules:I = 0xd8

.field static final greylist-max-o TRANSACTION_getClientRequestStats:I = 0xa4

.field static final blacklist TRANSACTION_getContactFromEab:I = 0x129

.field static final blacklist TRANSACTION_getCurrentPackageName:I = 0xf4

.field static final greylist-max-o TRANSACTION_getDataActivationState:I = 0x2c

.field static final greylist-max-o TRANSACTION_getDataActivity:I = 0x24

.field static final blacklist TRANSACTION_getDataActivityForSubId:I = 0x25

.field static final greylist-max-o TRANSACTION_getDataEnabled:I = 0x5f

.field static final greylist-max-o TRANSACTION_getDataNetworkType:I = 0x38

.field static final greylist-max-o TRANSACTION_getDataNetworkTypeForSubscriber:I = 0x39

.field static final greylist-max-o TRANSACTION_getDataState:I = 0x26

.field static final blacklist TRANSACTION_getDataStateForSubId:I = 0x27

.field static final blacklist TRANSACTION_getDefaultRespondViaMessageApplication:I = 0x146

.field static final greylist TRANSACTION_getDeviceId:I = 0x82

.field static final blacklist TRANSACTION_getDeviceIdWithFeature:I = 0x83

.field static final blacklist TRANSACTION_getDeviceSingleRegistrationEnabled:I = 0x11f

.field static final greylist-max-o TRANSACTION_getDeviceSoftwareVersionForSlot:I = 0x87

.field static final blacklist TRANSACTION_getDeviceUceEnabled:I = 0x12b

.field static final greylist-max-o TRANSACTION_getEmergencyCallbackMode:I = 0xa9

.field static final blacklist TRANSACTION_getEmergencyNumberDbVersion:I = 0xe8

.field static final blacklist TRANSACTION_getEmergencyNumberList:I = 0xd6

.field static final blacklist TRANSACTION_getEmergencyNumberListTestMode:I = 0xe7

.field static final blacklist TRANSACTION_getEquivalentHomePlmns:I = 0x10b

.field static final greylist-max-o TRANSACTION_getForbiddenPlmns:I = 0xa7

.field static final blacklist TRANSACTION_getGbaReleaseTime:I = 0x116

.field static final blacklist TRANSACTION_getHalVersion:I = 0xf3

.field static final greylist-max-o TRANSACTION_getImeiForSlot:I = 0x84

.field static final greylist-max-o TRANSACTION_getImsConfig:I = 0x53

.field static final blacklist TRANSACTION_getImsFeatureValidationOverride:I = 0x126

.field static final blacklist TRANSACTION_getImsMmTelFeatureState:I = 0x57

.field static final blacklist TRANSACTION_getImsMmTelRegistrationState:I = 0xbe

.field static final blacklist TRANSACTION_getImsMmTelRegistrationTransportType:I = 0xbf

.field static final blacklist TRANSACTION_getImsProvisioningInt:I = 0xe1

.field static final blacklist TRANSACTION_getImsProvisioningStatusForCapability:I = 0xde

.field static final blacklist TRANSACTION_getImsProvisioningString:I = 0xe2

.field static final greylist-max-o TRANSACTION_getImsRegTechnologyForMmTel:I = 0x81

.field static final greylist-max-o TRANSACTION_getImsRegistration:I = 0x52

.field static final blacklist TRANSACTION_getLastKnownCellIdentity:I = 0x13d

.field static final blacklist TRANSACTION_getLastUcePidfXmlShell:I = 0x131

.field static final blacklist TRANSACTION_getLatestRcsContactUceCapabilityShell:I = 0x130

.field static final greylist-max-o TRANSACTION_getLine1AlphaTagForDisplay:I = 0x6e

.field static final greylist-max-o TRANSACTION_getLine1NumberForDisplay:I = 0x6d

.field static final blacklist TRANSACTION_getManualNetworkSelectionPlmn:I = 0x109

.field static final blacklist TRANSACTION_getMergedImsisFromGroup:I = 0x70

.field static final greylist-max-o TRANSACTION_getMergedSubscriberIds:I = 0x6f

.field static final blacklist TRANSACTION_getMmsUAProfUrl:I = 0xff

.field static final blacklist TRANSACTION_getMmsUserAgent:I = 0xfe

.field static final blacklist TRANSACTION_getMobileProvisioningUrl:I = 0x127

.field static final blacklist TRANSACTION_getModemService:I = 0x13f

.field static final greylist-max-o TRANSACTION_getNeighboringCellInfo:I = 0x21

.field static final greylist-max-o TRANSACTION_getNetworkCountryIsoForPhone:I = 0x20

.field static final blacklist TRANSACTION_getNetworkSelectionMode:I = 0xb7

.field static final greylist-max-o TRANSACTION_getNetworkTypeForSubscriber:I = 0x37

.field static final blacklist TRANSACTION_getNumberOfModemsWithSimultaneousDataConnections:I = 0xb6

.field static final greylist-max-o TRANSACTION_getPackagesWithCarrierPrivileges:I = 0x92

.field static final blacklist TRANSACTION_getPackagesWithCarrierPrivilegesForAllPhones:I = 0x93

.field static final blacklist TRANSACTION_getPhoneAccountHandleForSubscriptionId:I = 0x89

.field static final blacklist TRANSACTION_getPhoneCapability:I = 0x136

.field static final blacklist TRANSACTION_getPrimaryImei:I = 0x85

.field static final greylist-max-o TRANSACTION_getRadioAccessFamily:I = 0x75

.field static final blacklist TRANSACTION_getRadioHalVersion:I = 0xf2

.field static final blacklist TRANSACTION_getRadioPowerOffReasons:I = 0x17

.field static final blacklist TRANSACTION_getRadioPowerState:I = 0xb9

.field static final blacklist TRANSACTION_getRcsProvisioningStatusForCapability:I = 0xdf

.field static final blacklist TRANSACTION_getRcsSingleRegistrationTestModeEnabled:I = 0x11d

.field static final blacklist TRANSACTION_getSatelliteDataOptimizedApps:I = 0x1a2

.field static final blacklist TRANSACTION_getSatelliteDataSupportMode:I = 0x1a3

.field static final blacklist TRANSACTION_getSatelliteDisallowedReasons:I = 0x162

.field static final blacklist TRANSACTION_getSatellitePlmnsForCarrier:I = 0x18d

.field static final blacklist TRANSACTION_getServiceStateForSlot:I = 0x8d

.field static final blacklist TRANSACTION_getShaIdFromAllowList:I = 0x17c

.field static final greylist-max-o TRANSACTION_getSignalStrength:I = 0xaa

.field static final blacklist TRANSACTION_getSimLocaleForSubscriber:I = 0x8b

.field static final blacklist TRANSACTION_getSimStateForSlotIndex:I = 0x147

.field static final blacklist TRANSACTION_getSlicingConfig:I = 0x138

.field static final blacklist TRANSACTION_getSlotsMapping:I = 0xf1

.field static final blacklist TRANSACTION_getSubIdForPhoneAccountHandle:I = 0x88

.field static final greylist-max-o TRANSACTION_getSubscriptionCarrierId:I = 0x98

.field static final greylist-max-o TRANSACTION_getSubscriptionCarrierName:I = 0x99

.field static final blacklist TRANSACTION_getSubscriptionSpecificCarrierId:I = 0x9a

.field static final blacklist TRANSACTION_getSubscriptionSpecificCarrierName:I = 0x9b

.field static final blacklist TRANSACTION_getSystemSelectionChannels:I = 0xfa

.field static final greylist-max-o TRANSACTION_getTelephonyHistograms:I = 0x95

.field static final blacklist TRANSACTION_getTestEuiccUiComponent:I = 0x19d

.field static final blacklist TRANSACTION_getTypeAllocationCodeForSlot:I = 0x86

.field static final blacklist TRANSACTION_getUiccCardsInfo:I = 0xac

.field static final greylist-max-o TRANSACTION_getUiccSlotsInfo:I = 0xad

.field static final greylist-max-o TRANSACTION_getVisualVoicemailPackageName:I = 0x30

.field static final greylist-max-o TRANSACTION_getVisualVoicemailSettings:I = 0x2f

.field static final greylist-max-o TRANSACTION_getVisualVoicemailSmsFilterSettings:I = 0x33

.field static final blacklist TRANSACTION_getVoWiFiModeSetting:I = 0xd0

.field static final blacklist TRANSACTION_getVoWiFiRoamingModeSetting:I = 0xd2

.field static final greylist-max-o TRANSACTION_getVoiceActivationState:I = 0x2b

.field static final greylist-max-o TRANSACTION_getVoiceMessageCountForSubscriber:I = 0x2d

.field static final greylist-max-o TRANSACTION_getVoiceNetworkTypeForSubscriber:I = 0x3a

.field static final greylist-max-o TRANSACTION_getVoicemailRingtoneUri:I = 0x8e

.field static final greylist-max-o TRANSACTION_handlePinMmi:I = 0xd

.field static final greylist-max-o TRANSACTION_handlePinMmiForSubscriber:I = 0xf

.field static final greylist-max-o TRANSACTION_handleUssdRequest:I = 0xe

.field static final greylist-max-o TRANSACTION_hasIccCard:I = 0x3b

.field static final greylist-max-o TRANSACTION_hasIccCardUsingSlotIndex:I = 0x3c

.field static final greylist-max-o TRANSACTION_iccCloseLogicalChannel:I = 0x42

.field static final greylist-max-o TRANSACTION_iccExchangeSimIO:I = 0x47

.field static final greylist-max-o TRANSACTION_iccOpenLogicalChannel:I = 0x41

.field static final greylist-max-o TRANSACTION_iccTransmitApduBasicChannel:I = 0x46

.field static final blacklist TRANSACTION_iccTransmitApduBasicChannelByPort:I = 0x45

.field static final greylist-max-o TRANSACTION_iccTransmitApduLogicalChannel:I = 0x44

.field static final blacklist TRANSACTION_iccTransmitApduLogicalChannelByPort:I = 0x43

.field static final blacklist TRANSACTION_isAdvancedCallingSettingEnabled:I = 0xc5

.field static final blacklist TRANSACTION_isAospDomainSelectionService:I = 0x188

.field static final blacklist TRANSACTION_isApnMetered:I = 0xf8

.field static final blacklist TRANSACTION_isApplicationOnUicc:I = 0xf5

.field static final blacklist TRANSACTION_isAvailable:I = 0xc3

.field static final blacklist TRANSACTION_isCapable:I = 0xc2

.field static final blacklist TRANSACTION_isCellularIdentifierDisclosureNotificationsEnabled:I = 0x18a

.field static final greylist-max-o TRANSACTION_isConcurrentVoiceAndDataAllowed:I = 0x2e

.field static final blacklist TRANSACTION_isCrossSimCallingEnabledByUser:I = 0xcb

.field static final greylist-max-o TRANSACTION_isDataConnectivityPossible:I = 0x1e

.field static final greylist-max-o TRANSACTION_isDataEnabled:I = 0x61

.field static final blacklist TRANSACTION_isDataEnabledForApn:I = 0xf7

.field static final blacklist TRANSACTION_isDataEnabledForReason:I = 0x63

.field static final blacklist TRANSACTION_isDataRoamingEnabled:I = 0xb0

.field static final blacklist TRANSACTION_isDomainSelectionSupported:I = 0x14d

.field static final blacklist TRANSACTION_isEmergencyNumber:I = 0xd7

.field static final greylist-max-o TRANSACTION_isHearingAidCompatibilitySupported:I = 0x7d

.field static final blacklist TRANSACTION_isIccLockEnabled:I = 0x104

.field static final greylist-max-o TRANSACTION_isImsRegistered:I = 0x7e

.field static final blacklist TRANSACTION_isInEmergencySmsMode:I = 0xb8

.field static final blacklist TRANSACTION_isManualNetworkSelectionAllowed:I = 0x64

.field static final blacklist TRANSACTION_isMmTelCapabilitySupported:I = 0xc4

.field static final blacklist TRANSACTION_isMobileDataPolicyEnabled:I = 0x101

.field static final blacklist TRANSACTION_isModemEnabledForSlot:I = 0xf6

.field static final blacklist TRANSACTION_isMultiSimSupported:I = 0xee

.field static final blacklist TRANSACTION_isMvnoMatched:I = 0xfb

.field static final blacklist TRANSACTION_isNrDualConnectivityEnabled:I = 0x10f

.field static final blacklist TRANSACTION_isNullCipherAndIntegrityPreferenceEnabled:I = 0x14a

.field static final blacklist TRANSACTION_isNullCipherNotificationsEnabled:I = 0x18c

.field static final blacklist TRANSACTION_isPremiumCapabilityAvailableForPurchase:I = 0x139

.field static final blacklist TRANSACTION_isProvisioningRequiredForCapability:I = 0x140

.field static final blacklist TRANSACTION_isRadioInterfaceCapabilitySupported:I = 0x110

.field static final greylist-max-o TRANSACTION_isRadioOn:I = 0x3

.field static final greylist-max-o TRANSACTION_isRadioOnForSubscriber:I = 0x5

.field static final blacklist TRANSACTION_isRadioOnForSubscriberWithFeature:I = 0x6

.field static final blacklist TRANSACTION_isRadioOnWithFeature:I = 0x4

.field static final blacklist TRANSACTION_isRcsProvisioningRequiredForCapability:I = 0x141

.field static final blacklist TRANSACTION_isRcsVolteSingleRegistrationCapable:I = 0x118

.field static final blacklist TRANSACTION_isRemovableEsimDefaultEuicc:I = 0x145

.field static final blacklist TRANSACTION_isRttSupported:I = 0x7c

.field static final blacklist TRANSACTION_isTetheringApnRequiredForSubscriber:I = 0x4c

.field static final greylist-max-o TRANSACTION_isTtyModeSupported:I = 0x7b

.field static final blacklist TRANSACTION_isTtyOverVolteEnabled:I = 0xd5

.field static final greylist-max-o TRANSACTION_isUserDataEnabled:I = 0x60

.field static final greylist-max-o TRANSACTION_isVideoCallingEnabled:I = 0x78

.field static final greylist-max-o TRANSACTION_isVideoTelephonyAvailable:I = 0x80

.field static final blacklist TRANSACTION_isVoNrEnabled:I = 0x10d

.field static final blacklist TRANSACTION_isVoWiFiRoamingSettingEnabled:I = 0xcd

.field static final blacklist TRANSACTION_isVoWiFiSettingEnabled:I = 0xc9

.field static final greylist-max-o TRANSACTION_isVoicemailVibrationEnabled:I = 0x90

.field static final blacklist TRANSACTION_isVtSettingEnabled:I = 0xc7

.field static final greylist-max-o TRANSACTION_isWifiCallingAvailable:I = 0x7f

.field static final greylist-max-o TRANSACTION_isWorldPhone:I = 0x7a

.field static final greylist-max-o TRANSACTION_needMobileRadioShutdown:I = 0x73

.field static final blacklist TRANSACTION_notifyOtaEmergencyNumberDbInstalled:I = 0xe9

.field static final blacklist TRANSACTION_notifyRcsAutoConfigurationReceived:I = 0x103

.field static final blacklist TRANSACTION_overrideCarrierRoamingNtnEligibilityChanged:I = 0x19e

.field static final blacklist TRANSACTION_overrideConfigDataVersion:I = 0x17b

.field static final blacklist TRANSACTION_overrideSatelliteEntilementQueryConditions:I = 0x195

.field static final blacklist TRANSACTION_overrideSatelliteEntilementStatusResponseForCtsTest:I = 0x194

.field static final blacklist TRANSACTION_persistEmergencyCallDiagnosticData:I = 0x148

.field static final blacklist TRANSACTION_pollPendingDatagrams:I = 0x160

.field static final blacklist TRANSACTION_prepareForUnattendedReboot:I = 0x137

.field static final blacklist TRANSACTION_provisionSatellite:I = 0x19a

.field static final blacklist TRANSACTION_provisionSatelliteService:I = 0x157

.field static final blacklist TRANSACTION_purchasePremiumCapability:I = 0x13a

.field static final blacklist TRANSACTION_rebootModem:I = 0x4a

.field static final greylist-max-o TRANSACTION_refreshUiccProfile:I = 0xb5

.field static final blacklist TRANSACTION_registerFeatureProvisioningChangedCallback:I = 0xdb

.field static final blacklist TRANSACTION_registerForCapabilitiesChanged:I = 0x183

.field static final blacklist TRANSACTION_registerForCommunicationAccessStateChanged:I = 0x190

.field static final blacklist TRANSACTION_registerForIncomingDatagram:I = 0x15e

.field static final blacklist TRANSACTION_registerForNtnSignalStrengthChanged:I = 0x181

.field static final blacklist TRANSACTION_registerForSatelliteDisallowedReasonsChanged:I = 0x163

.field static final blacklist TRANSACTION_registerForSatelliteModemStateChanged:I = 0x15c

.field static final blacklist TRANSACTION_registerForSatelliteProvisionStateChanged:I = 0x159

.field static final blacklist TRANSACTION_registerForSatelliteSupportedStateChanged:I = 0x18e

.field static final blacklist TRANSACTION_registerForSelectedNbIotSatelliteSubscriptionChanged:I = 0x169

.field static final blacklist TRANSACTION_registerImsEmergencyRegistrationCallback:I = 0xbc

.field static final blacklist TRANSACTION_registerImsProvisioningChangedCallback:I = 0xd9

.field static final blacklist TRANSACTION_registerImsRegistrationCallback:I = 0xba

.field static final blacklist TRANSACTION_registerImsStateCallback:I = 0x13b

.field static final blacklist TRANSACTION_registerMmTelCapabilityCallback:I = 0xc0

.field static final blacklist TRANSACTION_registerMmTelFeatureCallback:I = 0x50

.field static final blacklist TRANSACTION_registerRcsProvisioningCallback:I = 0x119

.field static final blacklist TRANSACTION_removeAttachRestrictionForCarrier:I = 0x17e

.field static final blacklist TRANSACTION_removeContactFromEab:I = 0x128

.field static final blacklist TRANSACTION_removeUceRegistrationOverrideShell:I = 0x12e

.field static final blacklist TRANSACTION_removeUceRequestDisallowedStatus:I = 0x132

.field static final blacklist TRANSACTION_requestCellInfoUpdate:I = 0x3e

.field static final blacklist TRANSACTION_requestCellInfoUpdateWithWorkSource:I = 0x3f

.field static final blacklist TRANSACTION_requestIsCommunicationAllowedForCurrentLocation:I = 0x165

.field static final blacklist TRANSACTION_requestIsDemoModeEnabled:I = 0x151

.field static final blacklist TRANSACTION_requestIsEmergencyModeEnabled:I = 0x152

.field static final blacklist TRANSACTION_requestIsSatelliteEnabled:I = 0x150

.field static final blacklist TRANSACTION_requestIsSatelliteProvisioned:I = 0x15b

.field static final blacklist TRANSACTION_requestIsSatelliteSupported:I = 0x153

.field static final greylist-max-o TRANSACTION_requestModemActivityInfo:I = 0x8c

.field static final greylist-max-o TRANSACTION_requestNetworkScan:I = 0x5a

.field static final blacklist TRANSACTION_requestNtnSignalStrength:I = 0x180

.field static final blacklist TRANSACTION_requestNumberVerification:I = 0x66

.field static final blacklist TRANSACTION_requestRadioPowerOffForReason:I = 0x15

.field static final blacklist TRANSACTION_requestSatelliteAccessConfigurationForCurrentLocation:I = 0x166

.field static final blacklist TRANSACTION_requestSatelliteCapabilities:I = 0x154

.field static final blacklist TRANSACTION_requestSatelliteDisplayName:I = 0x199

.field static final blacklist TRANSACTION_requestSatelliteEnabled:I = 0x14f

.field static final blacklist TRANSACTION_requestSatelliteSessionStats:I = 0x197

.field static final blacklist TRANSACTION_requestSatelliteSubscriberProvisionStatus:I = 0x198

.field static final blacklist TRANSACTION_requestSelectedNbIotSatelliteSubscriptionId:I = 0x168

.field static final blacklist TRANSACTION_requestTimeForNextSatelliteVisibility:I = 0x167

.field static final blacklist TRANSACTION_requestUserActivityNotification:I = 0x107

.field static final blacklist TRANSACTION_resetIms:I = 0x4f

.field static final blacklist TRANSACTION_resetModemConfig:I = 0x49

.field static final blacklist TRANSACTION_resetOtaEmergencyNumberDbFilePath:I = 0xeb

.field static final blacklist TRANSACTION_sendDatagram:I = 0x161

.field static final blacklist TRANSACTION_sendDeviceToDeviceMessage:I = 0x121

.field static final greylist-max-o TRANSACTION_sendDialerSpecialCode:I = 0x36

.field static final greylist-max-o TRANSACTION_sendEnvelopeWithStatus:I = 0x48

.field static final blacklist TRANSACTION_sendThermalMitigationRequest:I = 0x111

.field static final greylist-max-o TRANSACTION_sendVisualVoicemailSmsForSubscriber:I = 0x35

.field static final blacklist TRANSACTION_setActiveDeviceToDeviceTransport:I = 0x122

.field static final blacklist TRANSACTION_setAdvancedCallingSettingEnabled:I = 0xc6

.field static final greylist-max-o TRANSACTION_setAllowedCarriers:I = 0x96

.field static final blacklist TRANSACTION_setAllowedNetworkTypesForReason:I = 0x5e

.field static final blacklist TRANSACTION_setBoundGbaServiceOverride:I = 0x113

.field static final blacklist TRANSACTION_setBoundImsServiceOverride:I = 0x54

.field static final blacklist TRANSACTION_setCallComposerStatus:I = 0x7

.field static final blacklist TRANSACTION_setCallForwarding:I = 0xa1

.field static final blacklist TRANSACTION_setCallWaitingStatus:I = 0xa3

.field static final blacklist TRANSACTION_setCapabilitiesRequestTimeout:I = 0x133

.field static final blacklist TRANSACTION_setCarrierServicePackageOverride:I = 0xb3

.field static final blacklist TRANSACTION_setCarrierSingleRegistrationEnabledOverride:I = 0x120

.field static final greylist-max-o TRANSACTION_setCarrierTestOverride:I = 0xb2

.field static final blacklist TRANSACTION_setCellBroadcastIdRanges:I = 0x14c

.field static final greylist-max-o TRANSACTION_setCellInfoListRate:I = 0x40

.field static final blacklist TRANSACTION_setCepEnabled:I = 0x102

.field static final blacklist TRANSACTION_setCountryCodes:I = 0x176

.field static final blacklist TRANSACTION_setCrossSimCallingEnabled:I = 0xcc

.field static final blacklist TRANSACTION_setCtsMode:I = 0x16c

.field static final greylist-max-o TRANSACTION_setDataActivationState:I = 0x2a

.field static final blacklist TRANSACTION_setDataEnabledForReason:I = 0x62

.field static final blacklist TRANSACTION_setDataRoamingEnabled:I = 0xb1

.field static final blacklist TRANSACTION_setDatagramControllerBooleanConfig:I = 0x192

.field static final blacklist TRANSACTION_setDatagramControllerTimeoutDuration:I = 0x173

.field static final blacklist TRANSACTION_setDeviceAlignedWithSatellite:I = 0x16b

.field static final blacklist TRANSACTION_setDeviceSingleRegistrationEnabledOverride:I = 0x11e

.field static final blacklist TRANSACTION_setDeviceToDeviceForceEnabled:I = 0x123

.field static final blacklist TRANSACTION_setDeviceUceEnabled:I = 0x12c

.field static final blacklist TRANSACTION_setDomainSelectionServiceOverride:I = 0x186

.field static final blacklist TRANSACTION_setEmergencyCallToSatelliteHandoverType:I = 0x175

.field static final blacklist TRANSACTION_setEnableCellularIdentifierDisclosureNotifications:I = 0x189

.field static final blacklist TRANSACTION_setForbiddenPlmns:I = 0xa8

.field static final blacklist TRANSACTION_setGbaReleaseTimeOverride:I = 0x115

.field static final blacklist TRANSACTION_setIccLockEnabled:I = 0x105

.field static final blacklist TRANSACTION_setImsFeatureValidationOverride:I = 0x125

.field static final blacklist TRANSACTION_setImsProvisioningInt:I = 0xe3

.field static final blacklist TRANSACTION_setImsProvisioningStatusForCapability:I = 0xdd

.field static final blacklist TRANSACTION_setImsProvisioningString:I = 0xe4

.field static final greylist-max-o TRANSACTION_setImsRegistrationState:I = 0x65

.field static final blacklist TRANSACTION_setIsSatelliteCommunicationAllowedForCurrentLocationCache:I = 0x193

.field static final greylist-max-o TRANSACTION_setLine1NumberForDisplayForSubscriber:I = 0x6c

.field static final blacklist TRANSACTION_setMaxAllowedSatelliteDataModeForCtsTest:I = 0x196

.field static final blacklist TRANSACTION_setMobileDataPolicyEnabled:I = 0x100

.field static final blacklist TRANSACTION_setModemService:I = 0x13e

.field static final blacklist TRANSACTION_setMultiSimCarrierRestriction:I = 0xed

.field static final greylist-max-o TRANSACTION_setNetworkSelectionModeAutomatic:I = 0x58

.field static final greylist-max-o TRANSACTION_setNetworkSelectionModeManual:I = 0x5c

.field static final blacklist TRANSACTION_setNrDualConnectivityState:I = 0x10e

.field static final blacklist TRANSACTION_setNtnSmsSupported:I = 0x1a0

.field static final blacklist TRANSACTION_setNullCipherAndIntegrityEnabled:I = 0x149

.field static final blacklist TRANSACTION_setNullCipherNotificationsEnabled:I = 0x18b

.field static final blacklist TRANSACTION_setOemEnabledSatelliteProvisionStatus:I = 0x17a

.field static final greylist-max-o TRANSACTION_setOperatorBrandOverride:I = 0x71

.field static final greylist-max-o TRANSACTION_setRadio:I = 0x12

.field static final greylist-max-o TRANSACTION_setRadioForSubscriber:I = 0x13

.field static final greylist-max-o TRANSACTION_setRadioPower:I = 0x14

.field static final blacklist TRANSACTION_setRcsClientConfiguration:I = 0x117

.field static final blacklist TRANSACTION_setRcsProvisioningStatusForCapability:I = 0xe0

.field static final blacklist TRANSACTION_setRcsSingleRegistrationTestModeEnabled:I = 0x11c

.field static final blacklist TRANSACTION_setRemovableEsimAsDefaultEuicc:I = 0x144

.field static final greylist-max-o TRANSACTION_setRoamingOverride:I = 0x72

.field static final blacklist TRANSACTION_setRttCapabilitySetting:I = 0xd4

.field static final blacklist TRANSACTION_setSatelliteAccessAllowedForSubscriptions:I = 0x178

.field static final blacklist TRANSACTION_setSatelliteAccessControlOverlayConfigs:I = 0x177

.field static final blacklist TRANSACTION_setSatelliteControllerTimeoutDuration:I = 0x174

.field static final blacklist TRANSACTION_setSatelliteGatewayServicePackageName:I = 0x16e

.field static final blacklist TRANSACTION_setSatelliteIgnoreCellularServiceState:I = 0x170

.field static final blacklist TRANSACTION_setSatelliteIgnorePlmnListFromStorage:I = 0x1a4

.field static final blacklist TRANSACTION_setSatelliteListeningTimeoutDuration:I = 0x16f

.field static final blacklist TRANSACTION_setSatellitePointingUiClassName:I = 0x172

.field static final blacklist TRANSACTION_setSatelliteServicePackageName:I = 0x16d

.field static final blacklist TRANSACTION_setSatelliteSubscriberIdListChangedIntentComponent:I = 0x19b

.field static final blacklist TRANSACTION_setShouldSendDatagramToModemInDemoMode:I = 0x185

.field static final blacklist TRANSACTION_setSignalStrengthUpdateRequest:I = 0x134

.field static final greylist-max-o TRANSACTION_setSimPowerStateForSlot:I = 0xa5

.field static final blacklist TRANSACTION_setSimPowerStateForSlotWithCallback:I = 0xa6

.field static final blacklist TRANSACTION_setSimSlotMapping:I = 0xaf

.field static final blacklist TRANSACTION_setSupportDisableSatelliteWhileEnableInProgress:I = 0x171

.field static final blacklist TRANSACTION_setSystemSelectionChannels:I = 0xf9

.field static final blacklist TRANSACTION_setTestEuiccUiComponent:I = 0x19c

.field static final blacklist TRANSACTION_setTnScanningSupport:I = 0x179

.field static final blacklist TRANSACTION_setVoNrEnabled:I = 0x10c

.field static final blacklist TRANSACTION_setVoWiFiModeSetting:I = 0xd1

.field static final blacklist TRANSACTION_setVoWiFiNonPersistent:I = 0xcf

.field static final blacklist TRANSACTION_setVoWiFiRoamingModeSetting:I = 0xd3

.field static final blacklist TRANSACTION_setVoWiFiRoamingSettingEnabled:I = 0xce

.field static final blacklist TRANSACTION_setVoWiFiSettingEnabled:I = 0xca

.field static final greylist-max-o TRANSACTION_setVoiceActivationState:I = 0x29

.field static final greylist-max-o TRANSACTION_setVoiceMailNumber:I = 0x28

.field static final blacklist TRANSACTION_setVoiceServiceStateOverride:I = 0x142

.field static final greylist-max-o TRANSACTION_setVoicemailRingtoneUri:I = 0x8f

.field static final greylist-max-o TRANSACTION_setVoicemailVibrationEnabled:I = 0x91

.field static final blacklist TRANSACTION_setVtSettingEnabled:I = 0xc8

.field static final blacklist TRANSACTION_showSwitchToManagedProfileDialog:I = 0xfd

.field static final greylist-max-o TRANSACTION_shutdownMobileRadios:I = 0x74

.field static final blacklist TRANSACTION_startEmergencyCallbackMode:I = 0xe5

.field static final blacklist TRANSACTION_startSatelliteTransmissionUpdates:I = 0x155

.field static final greylist-max-o TRANSACTION_stopNetworkScan:I = 0x5b

.field static final blacklist TRANSACTION_stopSatelliteTransmissionUpdates:I = 0x156

.field static final greylist-max-o TRANSACTION_supplyPinForSubscriber:I = 0x9

.field static final greylist-max-o TRANSACTION_supplyPinReportResultForSubscriber:I = 0xb

.field static final greylist-max-o TRANSACTION_supplyPukForSubscriber:I = 0xa

.field static final greylist-max-o TRANSACTION_supplyPukReportResultForSubscriber:I = 0xc

.field static final blacklist TRANSACTION_switchMultiSimConfig:I = 0xef

.field static final greylist-max-o TRANSACTION_switchSlots:I = 0xae

.field static final greylist-max-o TRANSACTION_toggleRadioOnOff:I = 0x10

.field static final greylist-max-o TRANSACTION_toggleRadioOnOffForSubscriber:I = 0x11

.field static final blacklist TRANSACTION_triggerRcsReconfiguration:I = 0x11b

.field static final blacklist TRANSACTION_unregisterFeatureProvisioningChangedCallback:I = 0xdc

.field static final blacklist TRANSACTION_unregisterForCapabilitiesChanged:I = 0x184

.field static final blacklist TRANSACTION_unregisterForCommunicationAccessStateChanged:I = 0x191

.field static final blacklist TRANSACTION_unregisterForIncomingDatagram:I = 0x15f

.field static final blacklist TRANSACTION_unregisterForModemStateChanged:I = 0x15d

.field static final blacklist TRANSACTION_unregisterForNtnSignalStrengthChanged:I = 0x182

.field static final blacklist TRANSACTION_unregisterForSatelliteDisallowedReasonsChanged:I = 0x164

.field static final blacklist TRANSACTION_unregisterForSatelliteProvisionStateChanged:I = 0x15a

.field static final blacklist TRANSACTION_unregisterForSatelliteSupportedStateChanged:I = 0x18f

.field static final blacklist TRANSACTION_unregisterForSelectedNbIotSatelliteSubscriptionChanged:I = 0x16a

.field static final blacklist TRANSACTION_unregisterImsEmergencyRegistrationCallback:I = 0xbd

.field static final blacklist TRANSACTION_unregisterImsFeatureCallback:I = 0x51

.field static final blacklist TRANSACTION_unregisterImsProvisioningChangedCallback:I = 0xda

.field static final blacklist TRANSACTION_unregisterImsRegistrationCallback:I = 0xbb

.field static final blacklist TRANSACTION_unregisterImsStateCallback:I = 0x13c

.field static final blacklist TRANSACTION_unregisterMmTelCapabilityCallback:I = 0xc1

.field static final blacklist TRANSACTION_unregisterRcsProvisioningCallback:I = 0x11a

.field static final blacklist TRANSACTION_updateEmergencyNumberListTestMode:I = 0xe6

.field static final blacklist TRANSACTION_updateOtaEmergencyNumberDbFilePath:I = 0xea

.field static final greylist-max-o TRANSACTION_updateServiceLocation:I = 0x18

.field static final blacklist TRANSACTION_updateServiceLocationWithPackageName:I = 0x19

.field static final blacklist TRANSACTION_uploadCallComposerPicture:I = 0x76

.field static final blacklist TRANSACTION_userActivity:I = 0x108


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 3607
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 3608
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 3609
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    .registers 3

    .line 3616
    if-nez p0, :cond_4

    .line 3617
    const/4 p0, 0x0

    return-object p0

    .line 3619
    :cond_4
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 3620
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_13

    .line 3621
    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    return-object v0

    .line 3623
    :cond_13
    new-instance v0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 3632
    packed-switch p0, :pswitch_data_4f2

    .line 5316
    const/4 p0, 0x0

    return-object p0

    .line 5312
    :pswitch_5
    const-string p0, "setSatelliteIgnorePlmnListFromStorage"

    return-object p0

    .line 5308
    :pswitch_8
    const-string p0, "getSatelliteDataSupportMode"

    return-object p0

    .line 5304
    :pswitch_b
    const-string p0, "getSatelliteDataOptimizedApps"

    return-object p0

    .line 5300
    :pswitch_e
    const-string p0, "getCarrierIdFromIdentifier"

    return-object p0

    .line 5296
    :pswitch_11
    const-string p0, "setNtnSmsSupported"

    return-object p0

    .line 5292
    :pswitch_14
    const-string p0, "deprovisionSatellite"

    return-object p0

    .line 5288
    :pswitch_17
    const-string p0, "overrideCarrierRoamingNtnEligibilityChanged"

    return-object p0

    .line 5284
    :pswitch_1a
    const-string p0, "getTestEuiccUiComponent"

    return-object p0

    .line 5280
    :pswitch_1d
    const-string p0, "setTestEuiccUiComponent"

    return-object p0

    .line 5276
    :pswitch_20
    const-string p0, "setSatelliteSubscriberIdListChangedIntentComponent"

    return-object p0

    .line 5272
    :pswitch_23
    const-string p0, "provisionSatellite"

    return-object p0

    .line 5268
    :pswitch_26
    const-string p0, "requestSatelliteDisplayName"

    return-object p0

    .line 5264
    :pswitch_29
    const-string p0, "requestSatelliteSubscriberProvisionStatus"

    return-object p0

    .line 5260
    :pswitch_2c
    const-string p0, "requestSatelliteSessionStats"

    return-object p0

    .line 5256
    :pswitch_2f
    const-string p0, "setMaxAllowedSatelliteDataModeForCtsTest"

    return-object p0

    .line 5252
    :pswitch_32
    const-string p0, "overrideSatelliteEntilementQueryConditions"

    return-object p0

    .line 5248
    :pswitch_35
    const-string p0, "overrideSatelliteEntilementStatusResponseForCtsTest"

    return-object p0

    .line 5244
    :pswitch_38
    const-string p0, "setIsSatelliteCommunicationAllowedForCurrentLocationCache"

    return-object p0

    .line 5240
    :pswitch_3b
    const-string p0, "setDatagramControllerBooleanConfig"

    return-object p0

    .line 5236
    :pswitch_3e
    const-string p0, "unregisterForCommunicationAccessStateChanged"

    return-object p0

    .line 5232
    :pswitch_41
    const-string p0, "registerForCommunicationAccessStateChanged"

    return-object p0

    .line 5228
    :pswitch_44
    const-string p0, "unregisterForSatelliteSupportedStateChanged"

    return-object p0

    .line 5224
    :pswitch_47
    const-string p0, "registerForSatelliteSupportedStateChanged"

    return-object p0

    .line 5220
    :pswitch_4a
    const-string p0, "getSatellitePlmnsForCarrier"

    return-object p0

    .line 5216
    :pswitch_4d
    const-string p0, "isNullCipherNotificationsEnabled"

    return-object p0

    .line 5212
    :pswitch_50
    const-string p0, "setNullCipherNotificationsEnabled"

    return-object p0

    .line 5208
    :pswitch_53
    const-string p0, "isCellularIdentifierDisclosureNotificationsEnabled"

    return-object p0

    .line 5204
    :pswitch_56
    const-string p0, "setEnableCellularIdentifierDisclosureNotifications"

    return-object p0

    .line 5200
    :pswitch_59
    const-string p0, "isAospDomainSelectionService"

    return-object p0

    .line 5196
    :pswitch_5c
    const-string p0, "clearDomainSelectionServiceOverride"

    return-object p0

    .line 5192
    :pswitch_5f
    const-string p0, "setDomainSelectionServiceOverride"

    return-object p0

    .line 5188
    :pswitch_62
    const-string p0, "setShouldSendDatagramToModemInDemoMode"

    return-object p0

    .line 5184
    :pswitch_65
    const-string p0, "unregisterForCapabilitiesChanged"

    return-object p0

    .line 5180
    :pswitch_68
    const-string p0, "registerForCapabilitiesChanged"

    return-object p0

    .line 5176
    :pswitch_6b
    const-string p0, "unregisterForNtnSignalStrengthChanged"

    return-object p0

    .line 5172
    :pswitch_6e
    const-string p0, "registerForNtnSignalStrengthChanged"

    return-object p0

    .line 5168
    :pswitch_71
    const-string p0, "requestNtnSignalStrength"

    return-object p0

    .line 5164
    :pswitch_74
    const-string p0, "getAttachRestrictionReasonsForCarrier"

    return-object p0

    .line 5160
    :pswitch_77
    const-string p0, "removeAttachRestrictionForCarrier"

    return-object p0

    .line 5156
    :pswitch_7a
    const-string p0, "addAttachRestrictionForCarrier"

    return-object p0

    .line 5152
    :pswitch_7d
    const-string p0, "getShaIdFromAllowList"

    return-object p0

    .line 5148
    :pswitch_80
    const-string p0, "overrideConfigDataVersion"

    return-object p0

    .line 5144
    :pswitch_83
    const-string p0, "setOemEnabledSatelliteProvisionStatus"

    return-object p0

    .line 5140
    :pswitch_86
    const-string p0, "setTnScanningSupport"

    return-object p0

    .line 5136
    :pswitch_89
    const-string p0, "setSatelliteAccessAllowedForSubscriptions"

    return-object p0

    .line 5132
    :pswitch_8c
    const-string p0, "setSatelliteAccessControlOverlayConfigs"

    return-object p0

    .line 5128
    :pswitch_8f
    const-string p0, "setCountryCodes"

    return-object p0

    .line 5124
    :pswitch_92
    const-string p0, "setEmergencyCallToSatelliteHandoverType"

    return-object p0

    .line 5120
    :pswitch_95
    const-string p0, "setSatelliteControllerTimeoutDuration"

    return-object p0

    .line 5116
    :pswitch_98
    const-string p0, "setDatagramControllerTimeoutDuration"

    return-object p0

    .line 5112
    :pswitch_9b
    const-string p0, "setSatellitePointingUiClassName"

    return-object p0

    .line 5108
    :pswitch_9e
    const-string p0, "setSupportDisableSatelliteWhileEnableInProgress"

    return-object p0

    .line 5104
    :pswitch_a1
    const-string p0, "setSatelliteIgnoreCellularServiceState"

    return-object p0

    .line 5100
    :pswitch_a4
    const-string p0, "setSatelliteListeningTimeoutDuration"

    return-object p0

    .line 5096
    :pswitch_a7
    const-string p0, "setSatelliteGatewayServicePackageName"

    return-object p0

    .line 5092
    :pswitch_aa
    const-string p0, "setSatelliteServicePackageName"

    return-object p0

    .line 5088
    :pswitch_ad
    const-string p0, "setCtsMode"

    return-object p0

    .line 5084
    :pswitch_b0
    const-string p0, "setDeviceAlignedWithSatellite"

    return-object p0

    .line 5080
    :pswitch_b3
    const-string p0, "unregisterForSelectedNbIotSatelliteSubscriptionChanged"

    return-object p0

    .line 5076
    :pswitch_b6
    const-string p0, "registerForSelectedNbIotSatelliteSubscriptionChanged"

    return-object p0

    .line 5072
    :pswitch_b9
    const-string p0, "requestSelectedNbIotSatelliteSubscriptionId"

    return-object p0

    .line 5068
    :pswitch_bc
    const-string p0, "requestTimeForNextSatelliteVisibility"

    return-object p0

    .line 5064
    :pswitch_bf
    const-string p0, "requestSatelliteAccessConfigurationForCurrentLocation"

    return-object p0

    .line 5060
    :pswitch_c2
    const-string p0, "requestIsCommunicationAllowedForCurrentLocation"

    return-object p0

    .line 5056
    :pswitch_c5
    const-string p0, "unregisterForSatelliteDisallowedReasonsChanged"

    return-object p0

    .line 5052
    :pswitch_c8
    const-string p0, "registerForSatelliteDisallowedReasonsChanged"

    return-object p0

    .line 5048
    :pswitch_cb
    const-string p0, "getSatelliteDisallowedReasons"

    return-object p0

    .line 5044
    :pswitch_ce
    const-string p0, "sendDatagram"

    return-object p0

    .line 5040
    :pswitch_d1
    const-string p0, "pollPendingDatagrams"

    return-object p0

    .line 5036
    :pswitch_d4
    const-string p0, "unregisterForIncomingDatagram"

    return-object p0

    .line 5032
    :pswitch_d7
    const-string p0, "registerForIncomingDatagram"

    return-object p0

    .line 5028
    :pswitch_da
    const-string p0, "unregisterForModemStateChanged"

    return-object p0

    .line 5024
    :pswitch_dd
    const-string p0, "registerForSatelliteModemStateChanged"

    return-object p0

    .line 5020
    :pswitch_e0
    const-string p0, "requestIsSatelliteProvisioned"

    return-object p0

    .line 5016
    :pswitch_e3
    const-string p0, "unregisterForSatelliteProvisionStateChanged"

    return-object p0

    .line 5012
    :pswitch_e6
    const-string p0, "registerForSatelliteProvisionStateChanged"

    return-object p0

    .line 5008
    :pswitch_e9
    const-string p0, "deprovisionSatelliteService"

    return-object p0

    .line 5004
    :pswitch_ec
    const-string p0, "provisionSatelliteService"

    return-object p0

    .line 5000
    :pswitch_ef
    const-string p0, "stopSatelliteTransmissionUpdates"

    return-object p0

    .line 4996
    :pswitch_f2
    const-string p0, "startSatelliteTransmissionUpdates"

    return-object p0

    .line 4992
    :pswitch_f5
    const-string p0, "requestSatelliteCapabilities"

    return-object p0

    .line 4988
    :pswitch_f8
    const-string p0, "requestIsSatelliteSupported"

    return-object p0

    .line 4984
    :pswitch_fb
    const-string p0, "requestIsEmergencyModeEnabled"

    return-object p0

    .line 4980
    :pswitch_fe
    const-string p0, "requestIsDemoModeEnabled"

    return-object p0

    .line 4976
    :pswitch_101
    const-string p0, "requestIsSatelliteEnabled"

    return-object p0

    .line 4972
    :pswitch_104
    const-string p0, "requestSatelliteEnabled"

    return-object p0

    .line 4968
    :pswitch_107
    const-string p0, "getCarrierRestrictionStatus"

    return-object p0

    .line 4964
    :pswitch_10a
    const-string p0, "isDomainSelectionSupported"

    return-object p0

    .line 4960
    :pswitch_10d
    const-string p0, "setCellBroadcastIdRanges"

    return-object p0

    .line 4956
    :pswitch_110
    const-string p0, "getCellBroadcastIdRanges"

    return-object p0

    .line 4952
    :pswitch_113
    const-string p0, "isNullCipherAndIntegrityPreferenceEnabled"

    return-object p0

    .line 4948
    :pswitch_116
    const-string p0, "setNullCipherAndIntegrityEnabled"

    return-object p0

    .line 4944
    :pswitch_119
    const-string p0, "persistEmergencyCallDiagnosticData"

    return-object p0

    .line 4940
    :pswitch_11c
    const-string p0, "getSimStateForSlotIndex"

    return-object p0

    .line 4936
    :pswitch_11f
    const-string p0, "getDefaultRespondViaMessageApplication"

    return-object p0

    .line 4932
    :pswitch_122
    const-string p0, "isRemovableEsimDefaultEuicc"

    return-object p0

    .line 4928
    :pswitch_125
    const-string p0, "setRemovableEsimAsDefaultEuicc"

    return-object p0

    .line 4924
    :pswitch_128
    const-string p0, "getCarrierServicePackageNameForLogicalSlot"

    return-object p0

    .line 4920
    :pswitch_12b
    const-string p0, "setVoiceServiceStateOverride"

    return-object p0

    .line 4916
    :pswitch_12e
    const-string p0, "isRcsProvisioningRequiredForCapability"

    return-object p0

    .line 4912
    :pswitch_131
    const-string p0, "isProvisioningRequiredForCapability"

    return-object p0

    .line 4908
    :pswitch_134
    const-string p0, "getModemService"

    return-object p0

    .line 4904
    :pswitch_137
    const-string p0, "setModemService"

    return-object p0

    .line 4900
    :pswitch_13a
    const-string p0, "getLastKnownCellIdentity"

    return-object p0

    .line 4896
    :pswitch_13d
    const-string p0, "unregisterImsStateCallback"

    return-object p0

    .line 4892
    :pswitch_140
    const-string p0, "registerImsStateCallback"

    return-object p0

    .line 4888
    :pswitch_143
    const-string p0, "purchasePremiumCapability"

    return-object p0

    .line 4884
    :pswitch_146
    const-string p0, "isPremiumCapabilityAvailableForPurchase"

    return-object p0

    .line 4880
    :pswitch_149
    const-string p0, "getSlicingConfig"

    return-object p0

    .line 4876
    :pswitch_14c
    const-string p0, "prepareForUnattendedReboot"

    return-object p0

    .line 4872
    :pswitch_14f
    const-string p0, "getPhoneCapability"

    return-object p0

    .line 4868
    :pswitch_152
    const-string p0, "clearSignalStrengthUpdateRequest"

    return-object p0

    .line 4864
    :pswitch_155
    const-string p0, "setSignalStrengthUpdateRequest"

    return-object p0

    .line 4860
    :pswitch_158
    const-string p0, "setCapabilitiesRequestTimeout"

    return-object p0

    .line 4856
    :pswitch_15b
    const-string p0, "removeUceRequestDisallowedStatus"

    return-object p0

    .line 4852
    :pswitch_15e
    const-string p0, "getLastUcePidfXmlShell"

    return-object p0

    .line 4848
    :pswitch_161
    const-string p0, "getLatestRcsContactUceCapabilityShell"

    return-object p0

    .line 4844
    :pswitch_164
    const-string p0, "clearUceRegistrationOverrideShell"

    return-object p0

    .line 4840
    :pswitch_167
    const-string p0, "removeUceRegistrationOverrideShell"

    return-object p0

    .line 4836
    :pswitch_16a
    const-string p0, "addUceRegistrationOverrideShell"

    return-object p0

    .line 4832
    :pswitch_16d
    const-string p0, "setDeviceUceEnabled"

    return-object p0

    .line 4828
    :pswitch_170
    const-string p0, "getDeviceUceEnabled"

    return-object p0

    .line 4824
    :pswitch_173
    const-string p0, "getCapabilityFromEab"

    return-object p0

    .line 4820
    :pswitch_176
    const-string p0, "getContactFromEab"

    return-object p0

    .line 4816
    :pswitch_179
    const-string p0, "removeContactFromEab"

    return-object p0

    .line 4812
    :pswitch_17c
    const-string p0, "getMobileProvisioningUrl"

    return-object p0

    .line 4808
    :pswitch_17f
    const-string p0, "getImsFeatureValidationOverride"

    return-object p0

    .line 4804
    :pswitch_182
    const-string p0, "setImsFeatureValidationOverride"

    return-object p0

    .line 4800
    :pswitch_185
    const-string p0, "getCarrierSingleRegistrationEnabled"

    return-object p0

    .line 4796
    :pswitch_188
    const-string p0, "setDeviceToDeviceForceEnabled"

    return-object p0

    .line 4792
    :pswitch_18b
    const-string p0, "setActiveDeviceToDeviceTransport"

    return-object p0

    .line 4788
    :pswitch_18e
    const-string p0, "sendDeviceToDeviceMessage"

    return-object p0

    .line 4784
    :pswitch_191
    const-string p0, "setCarrierSingleRegistrationEnabledOverride"

    return-object p0

    .line 4780
    :pswitch_194
    const-string p0, "getDeviceSingleRegistrationEnabled"

    return-object p0

    .line 4776
    :pswitch_197
    const-string p0, "setDeviceSingleRegistrationEnabledOverride"

    return-object p0

    .line 4772
    :pswitch_19a
    const-string p0, "getRcsSingleRegistrationTestModeEnabled"

    return-object p0

    .line 4768
    :pswitch_19d
    const-string p0, "setRcsSingleRegistrationTestModeEnabled"

    return-object p0

    .line 4764
    :pswitch_1a0
    const-string p0, "triggerRcsReconfiguration"

    return-object p0

    .line 4760
    :pswitch_1a3
    const-string p0, "unregisterRcsProvisioningCallback"

    return-object p0

    .line 4756
    :pswitch_1a6
    const-string p0, "registerRcsProvisioningCallback"

    return-object p0

    .line 4752
    :pswitch_1a9
    const-string p0, "isRcsVolteSingleRegistrationCapable"

    return-object p0

    .line 4748
    :pswitch_1ac
    const-string p0, "setRcsClientConfiguration"

    return-object p0

    .line 4744
    :pswitch_1af
    const-string p0, "getGbaReleaseTime"

    return-object p0

    .line 4740
    :pswitch_1b2
    const-string p0, "setGbaReleaseTimeOverride"

    return-object p0

    .line 4736
    :pswitch_1b5
    const-string p0, "getBoundGbaService"

    return-object p0

    .line 4732
    :pswitch_1b8
    const-string p0, "setBoundGbaServiceOverride"

    return-object p0

    .line 4728
    :pswitch_1bb
    const-string p0, "bootstrapAuthenticationRequest"

    return-object p0

    .line 4724
    :pswitch_1be
    const-string p0, "sendThermalMitigationRequest"

    return-object p0

    .line 4720
    :pswitch_1c1
    const-string p0, "isRadioInterfaceCapabilitySupported"

    return-object p0

    .line 4716
    :pswitch_1c4
    const-string p0, "isNrDualConnectivityEnabled"

    return-object p0

    .line 4712
    :pswitch_1c7
    const-string p0, "setNrDualConnectivityState"

    return-object p0

    .line 4708
    :pswitch_1ca
    const-string p0, "isVoNrEnabled"

    return-object p0

    .line 4704
    :pswitch_1cd
    const-string p0, "setVoNrEnabled"

    return-object p0

    .line 4700
    :pswitch_1d0
    const-string p0, "getEquivalentHomePlmns"

    return-object p0

    .line 4696
    :pswitch_1d3
    const-string p0, "canConnectTo5GInDsdsMode"

    return-object p0

    .line 4692
    :pswitch_1d6
    const-string p0, "getManualNetworkSelectionPlmn"

    return-object p0

    .line 4688
    :pswitch_1d9
    const-string p0, "userActivity"

    return-object p0

    .line 4684
    :pswitch_1dc
    const-string p0, "requestUserActivityNotification"

    return-object p0

    .line 4680
    :pswitch_1df
    const-string p0, "changeIccLockPassword"

    return-object p0

    .line 4676
    :pswitch_1e2
    const-string p0, "setIccLockEnabled"

    return-object p0

    .line 4672
    :pswitch_1e5
    const-string p0, "isIccLockEnabled"

    return-object p0

    .line 4668
    :pswitch_1e8
    const-string p0, "notifyRcsAutoConfigurationReceived"

    return-object p0

    .line 4664
    :pswitch_1eb
    const-string p0, "setCepEnabled"

    return-object p0

    .line 4660
    :pswitch_1ee
    const-string p0, "isMobileDataPolicyEnabled"

    return-object p0

    .line 4656
    :pswitch_1f1
    const-string p0, "setMobileDataPolicyEnabled"

    return-object p0

    .line 4652
    :pswitch_1f4
    const-string p0, "getMmsUAProfUrl"

    return-object p0

    .line 4648
    :pswitch_1f7
    const-string p0, "getMmsUserAgent"

    return-object p0

    .line 4644
    :pswitch_1fa
    const-string p0, "showSwitchToManagedProfileDialog"

    return-object p0

    .line 4640
    :pswitch_1fd
    const-string p0, "enqueueSmsPickResult"

    return-object p0

    .line 4636
    :pswitch_200
    const-string p0, "isMvnoMatched"

    return-object p0

    .line 4632
    :pswitch_203
    const-string p0, "getSystemSelectionChannels"

    return-object p0

    .line 4628
    :pswitch_206
    const-string p0, "setSystemSelectionChannels"

    return-object p0

    .line 4624
    :pswitch_209
    const-string p0, "isApnMetered"

    return-object p0

    .line 4620
    :pswitch_20c
    const-string p0, "isDataEnabledForApn"

    return-object p0

    .line 4616
    :pswitch_20f
    const-string p0, "isModemEnabledForSlot"

    return-object p0

    .line 4612
    :pswitch_212
    const-string p0, "isApplicationOnUicc"

    return-object p0

    .line 4608
    :pswitch_215
    const-string p0, "getCurrentPackageName"

    return-object p0

    .line 4604
    :pswitch_218
    const-string p0, "getHalVersion"

    return-object p0

    .line 4600
    :pswitch_21b
    const-string p0, "getRadioHalVersion"

    return-object p0

    .line 4596
    :pswitch_21e
    const-string p0, "getSlotsMapping"

    return-object p0

    .line 4592
    :pswitch_221
    const-string p0, "doesSwitchMultiSimConfigTriggerReboot"

    return-object p0

    .line 4588
    :pswitch_224
    const-string p0, "switchMultiSimConfig"

    return-object p0

    .line 4584
    :pswitch_227
    const-string p0, "isMultiSimSupported"

    return-object p0

    .line 4580
    :pswitch_22a
    const-string p0, "setMultiSimCarrierRestriction"

    return-object p0

    .line 4576
    :pswitch_22d
    const-string p0, "enableModemForSlot"

    return-object p0

    .line 4572
    :pswitch_230
    const-string p0, "resetOtaEmergencyNumberDbFilePath"

    return-object p0

    .line 4568
    :pswitch_233
    const-string p0, "updateOtaEmergencyNumberDbFilePath"

    return-object p0

    .line 4564
    :pswitch_236
    const-string p0, "notifyOtaEmergencyNumberDbInstalled"

    return-object p0

    .line 4560
    :pswitch_239
    const-string p0, "getEmergencyNumberDbVersion"

    return-object p0

    .line 4556
    :pswitch_23c
    const-string p0, "getEmergencyNumberListTestMode"

    return-object p0

    .line 4552
    :pswitch_23f
    const-string p0, "updateEmergencyNumberListTestMode"

    return-object p0

    .line 4548
    :pswitch_242
    const-string p0, "startEmergencyCallbackMode"

    return-object p0

    .line 4544
    :pswitch_245
    const-string p0, "setImsProvisioningString"

    return-object p0

    .line 4540
    :pswitch_248
    const-string p0, "setImsProvisioningInt"

    return-object p0

    .line 4536
    :pswitch_24b
    const-string p0, "getImsProvisioningString"

    return-object p0

    .line 4532
    :pswitch_24e
    const-string p0, "getImsProvisioningInt"

    return-object p0

    .line 4528
    :pswitch_251
    const-string p0, "setRcsProvisioningStatusForCapability"

    return-object p0

    .line 4524
    :pswitch_254
    const-string p0, "getRcsProvisioningStatusForCapability"

    return-object p0

    .line 4520
    :pswitch_257
    const-string p0, "getImsProvisioningStatusForCapability"

    return-object p0

    .line 4516
    :pswitch_25a
    const-string p0, "setImsProvisioningStatusForCapability"

    return-object p0

    .line 4512
    :pswitch_25d
    const-string p0, "unregisterFeatureProvisioningChangedCallback"

    return-object p0

    .line 4508
    :pswitch_260
    const-string p0, "registerFeatureProvisioningChangedCallback"

    return-object p0

    .line 4504
    :pswitch_263
    const-string p0, "unregisterImsProvisioningChangedCallback"

    return-object p0

    .line 4500
    :pswitch_266
    const-string p0, "registerImsProvisioningChangedCallback"

    return-object p0

    .line 4496
    :pswitch_269
    const-string p0, "getCertsFromCarrierPrivilegeAccessRules"

    return-object p0

    .line 4492
    :pswitch_26c
    const-string p0, "isEmergencyNumber"

    return-object p0

    .line 4488
    :pswitch_26f
    const-string p0, "getEmergencyNumberList"

    return-object p0

    .line 4484
    :pswitch_272
    const-string p0, "isTtyOverVolteEnabled"

    return-object p0

    .line 4480
    :pswitch_275
    const-string p0, "setRttCapabilitySetting"

    return-object p0

    .line 4476
    :pswitch_278
    const-string p0, "setVoWiFiRoamingModeSetting"

    return-object p0

    .line 4472
    :pswitch_27b
    const-string p0, "getVoWiFiRoamingModeSetting"

    return-object p0

    .line 4468
    :pswitch_27e
    const-string p0, "setVoWiFiModeSetting"

    return-object p0

    .line 4464
    :pswitch_281
    const-string p0, "getVoWiFiModeSetting"

    return-object p0

    .line 4460
    :pswitch_284
    const-string p0, "setVoWiFiNonPersistent"

    return-object p0

    .line 4456
    :pswitch_287
    const-string p0, "setVoWiFiRoamingSettingEnabled"

    return-object p0

    .line 4452
    :pswitch_28a
    const-string p0, "isVoWiFiRoamingSettingEnabled"

    return-object p0

    .line 4448
    :pswitch_28d
    const-string p0, "setCrossSimCallingEnabled"

    return-object p0

    .line 4444
    :pswitch_290
    const-string p0, "isCrossSimCallingEnabledByUser"

    return-object p0

    .line 4440
    :pswitch_293
    const-string p0, "setVoWiFiSettingEnabled"

    return-object p0

    .line 4436
    :pswitch_296
    const-string p0, "isVoWiFiSettingEnabled"

    return-object p0

    .line 4432
    :pswitch_299
    const-string p0, "setVtSettingEnabled"

    return-object p0

    .line 4428
    :pswitch_29c
    const-string p0, "isVtSettingEnabled"

    return-object p0

    .line 4424
    :pswitch_29f
    const-string p0, "setAdvancedCallingSettingEnabled"

    return-object p0

    .line 4420
    :pswitch_2a2
    const-string p0, "isAdvancedCallingSettingEnabled"

    return-object p0

    .line 4416
    :pswitch_2a5
    const-string p0, "isMmTelCapabilitySupported"

    return-object p0

    .line 4412
    :pswitch_2a8
    const-string p0, "isAvailable"

    return-object p0

    .line 4408
    :pswitch_2ab
    const-string p0, "isCapable"

    return-object p0

    .line 4404
    :pswitch_2ae
    const-string p0, "unregisterMmTelCapabilityCallback"

    return-object p0

    .line 4400
    :pswitch_2b1
    const-string p0, "registerMmTelCapabilityCallback"

    return-object p0

    .line 4396
    :pswitch_2b4
    const-string p0, "getImsMmTelRegistrationTransportType"

    return-object p0

    .line 4392
    :pswitch_2b7
    const-string p0, "getImsMmTelRegistrationState"

    return-object p0

    .line 4388
    :pswitch_2ba
    const-string p0, "unregisterImsEmergencyRegistrationCallback"

    return-object p0

    .line 4384
    :pswitch_2bd
    const-string p0, "registerImsEmergencyRegistrationCallback"

    return-object p0

    .line 4380
    :pswitch_2c0
    const-string p0, "unregisterImsRegistrationCallback"

    return-object p0

    .line 4376
    :pswitch_2c3
    const-string p0, "registerImsRegistrationCallback"

    return-object p0

    .line 4372
    :pswitch_2c6
    const-string p0, "getRadioPowerState"

    return-object p0

    .line 4368
    :pswitch_2c9
    const-string p0, "isInEmergencySmsMode"

    return-object p0

    .line 4364
    :pswitch_2cc
    const-string p0, "getNetworkSelectionMode"

    return-object p0

    .line 4360
    :pswitch_2cf
    const-string p0, "getNumberOfModemsWithSimultaneousDataConnections"

    return-object p0

    .line 4356
    :pswitch_2d2
    const-string p0, "refreshUiccProfile"

    return-object p0

    .line 4352
    :pswitch_2d5
    const-string p0, "getCarrierIdListVersion"

    return-object p0

    .line 4348
    :pswitch_2d8
    const-string p0, "setCarrierServicePackageOverride"

    return-object p0

    .line 4344
    :pswitch_2db
    const-string p0, "setCarrierTestOverride"

    return-object p0

    .line 4340
    :pswitch_2de
    const-string p0, "setDataRoamingEnabled"

    return-object p0

    .line 4336
    :pswitch_2e1
    const-string p0, "isDataRoamingEnabled"

    return-object p0

    .line 4332
    :pswitch_2e4
    const-string p0, "setSimSlotMapping"

    return-object p0

    .line 4328
    :pswitch_2e7
    const-string p0, "switchSlots"

    return-object p0

    .line 4324
    :pswitch_2ea
    const-string p0, "getUiccSlotsInfo"

    return-object p0

    .line 4320
    :pswitch_2ed
    const-string p0, "getUiccCardsInfo"

    return-object p0

    .line 4316
    :pswitch_2f0
    const-string p0, "getCardIdForDefaultEuicc"

    return-object p0

    .line 4312
    :pswitch_2f3
    const-string p0, "getSignalStrength"

    return-object p0

    .line 4308
    :pswitch_2f6
    const-string p0, "getEmergencyCallbackMode"

    return-object p0

    .line 4304
    :pswitch_2f9
    const-string p0, "setForbiddenPlmns"

    return-object p0

    .line 4300
    :pswitch_2fc
    const-string p0, "getForbiddenPlmns"

    return-object p0

    .line 4296
    :pswitch_2ff
    const-string p0, "setSimPowerStateForSlotWithCallback"

    return-object p0

    .line 4292
    :pswitch_302
    const-string p0, "setSimPowerStateForSlot"

    return-object p0

    .line 4288
    :pswitch_305
    const-string p0, "getClientRequestStats"

    return-object p0

    .line 4284
    :pswitch_308
    const-string p0, "setCallWaitingStatus"

    return-object p0

    .line 4280
    :pswitch_30b
    const-string p0, "getCallWaitingStatus"

    return-object p0

    .line 4276
    :pswitch_30e
    const-string p0, "setCallForwarding"

    return-object p0

    .line 4272
    :pswitch_311
    const-string p0, "getCallForwarding"

    return-object p0

    .line 4268
    :pswitch_314
    const-string p0, "carrierActionResetAll"

    return-object p0

    .line 4264
    :pswitch_317
    const-string p0, "carrierActionReportDefaultNetworkStatus"

    return-object p0

    .line 4260
    :pswitch_31a
    const-string p0, "carrierActionSetRadioEnabled"

    return-object p0

    .line 4256
    :pswitch_31d
    const-string p0, "getCarrierIdFromMccMnc"

    return-object p0

    .line 4252
    :pswitch_320
    const-string p0, "getSubscriptionSpecificCarrierName"

    return-object p0

    .line 4248
    :pswitch_323
    const-string p0, "getSubscriptionSpecificCarrierId"

    return-object p0

    .line 4244
    :pswitch_326
    const-string p0, "getSubscriptionCarrierName"

    return-object p0

    .line 4240
    :pswitch_329
    const-string p0, "getSubscriptionCarrierId"

    return-object p0

    .line 4236
    :pswitch_32c
    const-string p0, "getAllowedCarriers"

    return-object p0

    .line 4232
    :pswitch_32f
    const-string p0, "setAllowedCarriers"

    return-object p0

    .line 4228
    :pswitch_332
    const-string p0, "getTelephonyHistograms"

    return-object p0

    .line 4224
    :pswitch_335
    const-string p0, "getAidForAppType"

    return-object p0

    .line 4220
    :pswitch_338
    const-string p0, "getPackagesWithCarrierPrivilegesForAllPhones"

    return-object p0

    .line 4216
    :pswitch_33b
    const-string p0, "getPackagesWithCarrierPrivileges"

    return-object p0

    .line 4212
    :pswitch_33e
    const-string p0, "setVoicemailVibrationEnabled"

    return-object p0

    .line 4208
    :pswitch_341
    const-string p0, "isVoicemailVibrationEnabled"

    return-object p0

    .line 4204
    :pswitch_344
    const-string p0, "setVoicemailRingtoneUri"

    return-object p0

    .line 4200
    :pswitch_347
    const-string p0, "getVoicemailRingtoneUri"

    return-object p0

    .line 4196
    :pswitch_34a
    const-string p0, "getServiceStateForSlot"

    return-object p0

    .line 4192
    :pswitch_34d
    const-string p0, "requestModemActivityInfo"

    return-object p0

    .line 4188
    :pswitch_350
    const-string p0, "getSimLocaleForSubscriber"

    return-object p0

    .line 4184
    :pswitch_353
    const-string p0, "factoryReset"

    return-object p0

    .line 4180
    :pswitch_356
    const-string p0, "getPhoneAccountHandleForSubscriptionId"

    return-object p0

    .line 4176
    :pswitch_359
    const-string p0, "getSubIdForPhoneAccountHandle"

    return-object p0

    .line 4172
    :pswitch_35c
    const-string p0, "getDeviceSoftwareVersionForSlot"

    return-object p0

    .line 4168
    :pswitch_35f
    const-string p0, "getTypeAllocationCodeForSlot"

    return-object p0

    .line 4164
    :pswitch_362
    const-string p0, "getPrimaryImei"

    return-object p0

    .line 4160
    :pswitch_365
    const-string p0, "getImeiForSlot"

    return-object p0

    .line 4156
    :pswitch_368
    const-string p0, "getDeviceIdWithFeature"

    return-object p0

    .line 4152
    :pswitch_36b
    const-string p0, "getDeviceId"

    return-object p0

    .line 4148
    :pswitch_36e
    const-string p0, "getImsRegTechnologyForMmTel"

    return-object p0

    .line 4144
    :pswitch_371
    const-string p0, "isVideoTelephonyAvailable"

    return-object p0

    .line 4140
    :pswitch_374
    const-string p0, "isWifiCallingAvailable"

    return-object p0

    .line 4136
    :pswitch_377
    const-string p0, "isImsRegistered"

    return-object p0

    .line 4132
    :pswitch_37a
    const-string p0, "isHearingAidCompatibilitySupported"

    return-object p0

    .line 4128
    :pswitch_37d
    const-string p0, "isRttSupported"

    return-object p0

    .line 4124
    :pswitch_380
    const-string p0, "isTtyModeSupported"

    return-object p0

    .line 4120
    :pswitch_383
    const-string p0, "isWorldPhone"

    return-object p0

    .line 4116
    :pswitch_386
    const-string p0, "canChangeDtmfToneLength"

    return-object p0

    .line 4112
    :pswitch_389
    const-string p0, "isVideoCallingEnabled"

    return-object p0

    .line 4108
    :pswitch_38c
    const-string p0, "enableVideoCalling"

    return-object p0

    .line 4104
    :pswitch_38f
    const-string p0, "uploadCallComposerPicture"

    return-object p0

    .line 4100
    :pswitch_392
    const-string p0, "getRadioAccessFamily"

    return-object p0

    .line 4096
    :pswitch_395
    const-string p0, "shutdownMobileRadios"

    return-object p0

    .line 4092
    :pswitch_398
    const-string p0, "needMobileRadioShutdown"

    return-object p0

    .line 4088
    :pswitch_39b
    const-string p0, "setRoamingOverride"

    return-object p0

    .line 4084
    :pswitch_39e
    const-string p0, "setOperatorBrandOverride"

    return-object p0

    .line 4080
    :pswitch_3a1
    const-string p0, "getMergedImsisFromGroup"

    return-object p0

    .line 4076
    :pswitch_3a4
    const-string p0, "getMergedSubscriberIds"

    return-object p0

    .line 4072
    :pswitch_3a7
    const-string p0, "getLine1AlphaTagForDisplay"

    return-object p0

    .line 4068
    :pswitch_3aa
    const-string p0, "getLine1NumberForDisplay"

    return-object p0

    .line 4064
    :pswitch_3ad
    const-string p0, "setLine1NumberForDisplayForSubscriber"

    return-object p0

    .line 4060
    :pswitch_3b0
    const-string p0, "getCarrierPackageNamesForIntentAndPhone"

    return-object p0

    .line 4056
    :pswitch_3b3
    const-string p0, "checkCarrierPrivilegesForPackageAnyPhone"

    return-object p0

    .line 4052
    :pswitch_3b6
    const-string p0, "checkCarrierPrivilegesForPackage"

    return-object p0

    .line 4048
    :pswitch_3b9
    const-string p0, "getCarrierPrivilegeStatusForUid"

    return-object p0

    .line 4044
    :pswitch_3bc
    const-string p0, "getCarrierPrivilegeStatus"

    return-object p0

    .line 4040
    :pswitch_3bf
    const-string p0, "requestNumberVerification"

    return-object p0

    .line 4036
    :pswitch_3c2
    const-string p0, "setImsRegistrationState"

    return-object p0

    .line 4032
    :pswitch_3c5
    const-string p0, "isManualNetworkSelectionAllowed"

    return-object p0

    .line 4028
    :pswitch_3c8
    const-string p0, "isDataEnabledForReason"

    return-object p0

    .line 4024
    :pswitch_3cb
    const-string p0, "setDataEnabledForReason"

    return-object p0

    .line 4020
    :pswitch_3ce
    const-string p0, "isDataEnabled"

    return-object p0

    .line 4016
    :pswitch_3d1
    const-string p0, "isUserDataEnabled"

    return-object p0

    .line 4012
    :pswitch_3d4
    const-string p0, "getDataEnabled"

    return-object p0

    .line 4008
    :pswitch_3d7
    const-string p0, "setAllowedNetworkTypesForReason"

    return-object p0

    .line 4004
    :pswitch_3da
    const-string p0, "getAllowedNetworkTypesForReason"

    return-object p0

    .line 4000
    :pswitch_3dd
    const-string p0, "setNetworkSelectionModeManual"

    return-object p0

    .line 3996
    :pswitch_3e0
    const-string p0, "stopNetworkScan"

    return-object p0

    .line 3992
    :pswitch_3e3
    const-string p0, "requestNetworkScan"

    return-object p0

    .line 3988
    :pswitch_3e6
    const-string p0, "getCellNetworkScanResults"

    return-object p0

    .line 3984
    :pswitch_3e9
    const-string p0, "setNetworkSelectionModeAutomatic"

    return-object p0

    .line 3980
    :pswitch_3ec
    const-string p0, "getImsMmTelFeatureState"

    return-object p0

    .line 3976
    :pswitch_3ef
    const-string p0, "getBoundImsServicePackage"

    return-object p0

    .line 3972
    :pswitch_3f2
    const-string p0, "clearCarrierImsServiceOverride"

    return-object p0

    .line 3968
    :pswitch_3f5
    const-string p0, "setBoundImsServiceOverride"

    return-object p0

    .line 3964
    :pswitch_3f8
    const-string p0, "getImsConfig"

    return-object p0

    .line 3960
    :pswitch_3fb
    const-string p0, "getImsRegistration"

    return-object p0

    .line 3956
    :pswitch_3fe
    const-string p0, "unregisterImsFeatureCallback"

    return-object p0

    .line 3952
    :pswitch_401
    const-string p0, "registerMmTelFeatureCallback"

    return-object p0

    .line 3948
    :pswitch_404
    const-string p0, "resetIms"

    return-object p0

    .line 3944
    :pswitch_407
    const-string p0, "disableIms"

    return-object p0

    .line 3940
    :pswitch_40a
    const-string p0, "enableIms"

    return-object p0

    .line 3936
    :pswitch_40d
    const-string p0, "isTetheringApnRequiredForSubscriber"

    return-object p0

    .line 3932
    :pswitch_410
    const-string p0, "getAllowedNetworkTypesBitmask"

    return-object p0

    .line 3928
    :pswitch_413
    const-string p0, "rebootModem"

    return-object p0

    .line 3924
    :pswitch_416
    const-string p0, "resetModemConfig"

    return-object p0

    .line 3920
    :pswitch_419
    const-string p0, "sendEnvelopeWithStatus"

    return-object p0

    .line 3916
    :pswitch_41c
    const-string p0, "iccExchangeSimIO"

    return-object p0

    .line 3912
    :pswitch_41f
    const-string p0, "iccTransmitApduBasicChannel"

    return-object p0

    .line 3908
    :pswitch_422
    const-string p0, "iccTransmitApduBasicChannelByPort"

    return-object p0

    .line 3904
    :pswitch_425
    const-string p0, "iccTransmitApduLogicalChannel"

    return-object p0

    .line 3900
    :pswitch_428
    const-string p0, "iccTransmitApduLogicalChannelByPort"

    return-object p0

    .line 3896
    :pswitch_42b
    const-string p0, "iccCloseLogicalChannel"

    return-object p0

    .line 3892
    :pswitch_42e
    const-string p0, "iccOpenLogicalChannel"

    return-object p0

    .line 3888
    :pswitch_431
    const-string p0, "setCellInfoListRate"

    return-object p0

    .line 3884
    :pswitch_434
    const-string p0, "requestCellInfoUpdateWithWorkSource"

    return-object p0

    .line 3880
    :pswitch_437
    const-string p0, "requestCellInfoUpdate"

    return-object p0

    .line 3876
    :pswitch_43a
    const-string p0, "getAllCellInfo"

    return-object p0

    .line 3872
    :pswitch_43d
    const-string p0, "hasIccCardUsingSlotIndex"

    return-object p0

    .line 3868
    :pswitch_440
    const-string p0, "hasIccCard"

    return-object p0

    .line 3864
    :pswitch_443
    const-string p0, "getVoiceNetworkTypeForSubscriber"

    return-object p0

    .line 3860
    :pswitch_446
    const-string p0, "getDataNetworkTypeForSubscriber"

    return-object p0

    .line 3856
    :pswitch_449
    const-string p0, "getDataNetworkType"

    return-object p0

    .line 3852
    :pswitch_44c
    const-string p0, "getNetworkTypeForSubscriber"

    return-object p0

    .line 3848
    :pswitch_44f
    const-string p0, "sendDialerSpecialCode"

    return-object p0

    .line 3844
    :pswitch_452
    const-string p0, "sendVisualVoicemailSmsForSubscriber"

    return-object p0

    .line 3840
    :pswitch_455
    const-string p0, "getActiveVisualVoicemailSmsFilterSettings"

    return-object p0

    .line 3836
    :pswitch_458
    const-string p0, "getVisualVoicemailSmsFilterSettings"

    return-object p0

    .line 3832
    :pswitch_45b
    const-string p0, "disableVisualVoicemailSmsFilter"

    return-object p0

    .line 3828
    :pswitch_45e
    const-string p0, "enableVisualVoicemailSmsFilter"

    return-object p0

    .line 3824
    :pswitch_461
    const-string p0, "getVisualVoicemailPackageName"

    return-object p0

    .line 3820
    :pswitch_464
    const-string p0, "getVisualVoicemailSettings"

    return-object p0

    .line 3816
    :pswitch_467
    const-string p0, "isConcurrentVoiceAndDataAllowed"

    return-object p0

    .line 3812
    :pswitch_46a
    const-string p0, "getVoiceMessageCountForSubscriber"

    return-object p0

    .line 3808
    :pswitch_46d
    const-string p0, "getDataActivationState"

    return-object p0

    .line 3804
    :pswitch_470
    const-string p0, "getVoiceActivationState"

    return-object p0

    .line 3800
    :pswitch_473
    const-string p0, "setDataActivationState"

    return-object p0

    .line 3796
    :pswitch_476
    const-string p0, "setVoiceActivationState"

    return-object p0

    .line 3792
    :pswitch_479
    const-string p0, "setVoiceMailNumber"

    return-object p0

    .line 3788
    :pswitch_47c
    const-string p0, "getDataStateForSubId"

    return-object p0

    .line 3784
    :pswitch_47f
    const-string p0, "getDataState"

    return-object p0

    .line 3780
    :pswitch_482
    const-string p0, "getDataActivityForSubId"

    return-object p0

    .line 3776
    :pswitch_485
    const-string p0, "getDataActivity"

    return-object p0

    .line 3772
    :pswitch_488
    const-string p0, "getCallStateForSubscription"

    return-object p0

    .line 3768
    :pswitch_48b
    const-string p0, "getCallState"

    return-object p0

    .line 3764
    :pswitch_48e
    const-string p0, "getNeighboringCellInfo"

    return-object p0

    .line 3760
    :pswitch_491
    const-string p0, "getNetworkCountryIsoForPhone"

    return-object p0

    .line 3756
    :pswitch_494
    const-string p0, "getCellLocation"

    return-object p0

    .line 3752
    :pswitch_497
    const-string p0, "isDataConnectivityPossible"

    return-object p0

    .line 3748
    :pswitch_49a
    const-string p0, "disableDataConnectivity"

    return-object p0

    .line 3744
    :pswitch_49d
    const-string p0, "enableDataConnectivity"

    return-object p0

    .line 3740
    :pswitch_4a0
    const-string p0, "disableLocationUpdates"

    return-object p0

    .line 3736
    :pswitch_4a3
    const-string p0, "enableLocationUpdates"

    return-object p0

    .line 3732
    :pswitch_4a6
    const-string p0, "updateServiceLocationWithPackageName"

    return-object p0

    .line 3728
    :pswitch_4a9
    const-string p0, "updateServiceLocation"

    return-object p0

    .line 3724
    :pswitch_4ac
    const-string p0, "getRadioPowerOffReasons"

    return-object p0

    .line 3720
    :pswitch_4af
    const-string p0, "clearRadioPowerOffForReason"

    return-object p0

    .line 3716
    :pswitch_4b2
    const-string p0, "requestRadioPowerOffForReason"

    return-object p0

    .line 3712
    :pswitch_4b5
    const-string p0, "setRadioPower"

    return-object p0

    .line 3708
    :pswitch_4b8
    const-string p0, "setRadioForSubscriber"

    return-object p0

    .line 3704
    :pswitch_4bb
    const-string p0, "setRadio"

    return-object p0

    .line 3700
    :pswitch_4be
    const-string p0, "toggleRadioOnOffForSubscriber"

    return-object p0

    .line 3696
    :pswitch_4c1
    const-string p0, "toggleRadioOnOff"

    return-object p0

    .line 3692
    :pswitch_4c4
    const-string p0, "handlePinMmiForSubscriber"

    return-object p0

    .line 3688
    :pswitch_4c7
    const-string p0, "handleUssdRequest"

    return-object p0

    .line 3684
    :pswitch_4ca
    const-string p0, "handlePinMmi"

    return-object p0

    .line 3680
    :pswitch_4cd
    const-string p0, "supplyPukReportResultForSubscriber"

    return-object p0

    .line 3676
    :pswitch_4d0
    const-string p0, "supplyPinReportResultForSubscriber"

    return-object p0

    .line 3672
    :pswitch_4d3
    const-string p0, "supplyPukForSubscriber"

    return-object p0

    .line 3668
    :pswitch_4d6
    const-string p0, "supplyPinForSubscriber"

    return-object p0

    .line 3664
    :pswitch_4d9
    const-string p0, "getCallComposerStatus"

    return-object p0

    .line 3660
    :pswitch_4dc
    const-string p0, "setCallComposerStatus"

    return-object p0

    .line 3656
    :pswitch_4df
    const-string p0, "isRadioOnForSubscriberWithFeature"

    return-object p0

    .line 3652
    :pswitch_4e2
    const-string p0, "isRadioOnForSubscriber"

    return-object p0

    .line 3648
    :pswitch_4e5
    const-string p0, "isRadioOnWithFeature"

    return-object p0

    .line 3644
    :pswitch_4e8
    const-string p0, "isRadioOn"

    return-object p0

    .line 3640
    :pswitch_4eb
    const-string p0, "call"

    return-object p0

    .line 3636
    :pswitch_4ee
    const-string p0, "dial"

    return-object p0

    nop

    :pswitch_data_4f2
    .packed-switch 0x1
        :pswitch_4ee
        :pswitch_4eb
        :pswitch_4e8
        :pswitch_4e5
        :pswitch_4e2
        :pswitch_4df
        :pswitch_4dc
        :pswitch_4d9
        :pswitch_4d6
        :pswitch_4d3
        :pswitch_4d0
        :pswitch_4cd
        :pswitch_4ca
        :pswitch_4c7
        :pswitch_4c4
        :pswitch_4c1
        :pswitch_4be
        :pswitch_4bb
        :pswitch_4b8
        :pswitch_4b5
        :pswitch_4b2
        :pswitch_4af
        :pswitch_4ac
        :pswitch_4a9
        :pswitch_4a6
        :pswitch_4a3
        :pswitch_4a0
        :pswitch_49d
        :pswitch_49a
        :pswitch_497
        :pswitch_494
        :pswitch_491
        :pswitch_48e
        :pswitch_48b
        :pswitch_488
        :pswitch_485
        :pswitch_482
        :pswitch_47f
        :pswitch_47c
        :pswitch_479
        :pswitch_476
        :pswitch_473
        :pswitch_470
        :pswitch_46d
        :pswitch_46a
        :pswitch_467
        :pswitch_464
        :pswitch_461
        :pswitch_45e
        :pswitch_45b
        :pswitch_458
        :pswitch_455
        :pswitch_452
        :pswitch_44f
        :pswitch_44c
        :pswitch_449
        :pswitch_446
        :pswitch_443
        :pswitch_440
        :pswitch_43d
        :pswitch_43a
        :pswitch_437
        :pswitch_434
        :pswitch_431
        :pswitch_42e
        :pswitch_42b
        :pswitch_428
        :pswitch_425
        :pswitch_422
        :pswitch_41f
        :pswitch_41c
        :pswitch_419
        :pswitch_416
        :pswitch_413
        :pswitch_410
        :pswitch_40d
        :pswitch_40a
        :pswitch_407
        :pswitch_404
        :pswitch_401
        :pswitch_3fe
        :pswitch_3fb
        :pswitch_3f8
        :pswitch_3f5
        :pswitch_3f2
        :pswitch_3ef
        :pswitch_3ec
        :pswitch_3e9
        :pswitch_3e6
        :pswitch_3e3
        :pswitch_3e0
        :pswitch_3dd
        :pswitch_3da
        :pswitch_3d7
        :pswitch_3d4
        :pswitch_3d1
        :pswitch_3ce
        :pswitch_3cb
        :pswitch_3c8
        :pswitch_3c5
        :pswitch_3c2
        :pswitch_3bf
        :pswitch_3bc
        :pswitch_3b9
        :pswitch_3b6
        :pswitch_3b3
        :pswitch_3b0
        :pswitch_3ad
        :pswitch_3aa
        :pswitch_3a7
        :pswitch_3a4
        :pswitch_3a1
        :pswitch_39e
        :pswitch_39b
        :pswitch_398
        :pswitch_395
        :pswitch_392
        :pswitch_38f
        :pswitch_38c
        :pswitch_389
        :pswitch_386
        :pswitch_383
        :pswitch_380
        :pswitch_37d
        :pswitch_37a
        :pswitch_377
        :pswitch_374
        :pswitch_371
        :pswitch_36e
        :pswitch_36b
        :pswitch_368
        :pswitch_365
        :pswitch_362
        :pswitch_35f
        :pswitch_35c
        :pswitch_359
        :pswitch_356
        :pswitch_353
        :pswitch_350
        :pswitch_34d
        :pswitch_34a
        :pswitch_347
        :pswitch_344
        :pswitch_341
        :pswitch_33e
        :pswitch_33b
        :pswitch_338
        :pswitch_335
        :pswitch_332
        :pswitch_32f
        :pswitch_32c
        :pswitch_329
        :pswitch_326
        :pswitch_323
        :pswitch_320
        :pswitch_31d
        :pswitch_31a
        :pswitch_317
        :pswitch_314
        :pswitch_311
        :pswitch_30e
        :pswitch_30b
        :pswitch_308
        :pswitch_305
        :pswitch_302
        :pswitch_2ff
        :pswitch_2fc
        :pswitch_2f9
        :pswitch_2f6
        :pswitch_2f3
        :pswitch_2f0
        :pswitch_2ed
        :pswitch_2ea
        :pswitch_2e7
        :pswitch_2e4
        :pswitch_2e1
        :pswitch_2de
        :pswitch_2db
        :pswitch_2d8
        :pswitch_2d5
        :pswitch_2d2
        :pswitch_2cf
        :pswitch_2cc
        :pswitch_2c9
        :pswitch_2c6
        :pswitch_2c3
        :pswitch_2c0
        :pswitch_2bd
        :pswitch_2ba
        :pswitch_2b7
        :pswitch_2b4
        :pswitch_2b1
        :pswitch_2ae
        :pswitch_2ab
        :pswitch_2a8
        :pswitch_2a5
        :pswitch_2a2
        :pswitch_29f
        :pswitch_29c
        :pswitch_299
        :pswitch_296
        :pswitch_293
        :pswitch_290
        :pswitch_28d
        :pswitch_28a
        :pswitch_287
        :pswitch_284
        :pswitch_281
        :pswitch_27e
        :pswitch_27b
        :pswitch_278
        :pswitch_275
        :pswitch_272
        :pswitch_26f
        :pswitch_26c
        :pswitch_269
        :pswitch_266
        :pswitch_263
        :pswitch_260
        :pswitch_25d
        :pswitch_25a
        :pswitch_257
        :pswitch_254
        :pswitch_251
        :pswitch_24e
        :pswitch_24b
        :pswitch_248
        :pswitch_245
        :pswitch_242
        :pswitch_23f
        :pswitch_23c
        :pswitch_239
        :pswitch_236
        :pswitch_233
        :pswitch_230
        :pswitch_22d
        :pswitch_22a
        :pswitch_227
        :pswitch_224
        :pswitch_221
        :pswitch_21e
        :pswitch_21b
        :pswitch_218
        :pswitch_215
        :pswitch_212
        :pswitch_20f
        :pswitch_20c
        :pswitch_209
        :pswitch_206
        :pswitch_203
        :pswitch_200
        :pswitch_1fd
        :pswitch_1fa
        :pswitch_1f7
        :pswitch_1f4
        :pswitch_1f1
        :pswitch_1ee
        :pswitch_1eb
        :pswitch_1e8
        :pswitch_1e5
        :pswitch_1e2
        :pswitch_1df
        :pswitch_1dc
        :pswitch_1d9
        :pswitch_1d6
        :pswitch_1d3
        :pswitch_1d0
        :pswitch_1cd
        :pswitch_1ca
        :pswitch_1c7
        :pswitch_1c4
        :pswitch_1c1
        :pswitch_1be
        :pswitch_1bb
        :pswitch_1b8
        :pswitch_1b5
        :pswitch_1b2
        :pswitch_1af
        :pswitch_1ac
        :pswitch_1a9
        :pswitch_1a6
        :pswitch_1a3
        :pswitch_1a0
        :pswitch_19d
        :pswitch_19a
        :pswitch_197
        :pswitch_194
        :pswitch_191
        :pswitch_18e
        :pswitch_18b
        :pswitch_188
        :pswitch_185
        :pswitch_182
        :pswitch_17f
        :pswitch_17c
        :pswitch_179
        :pswitch_176
        :pswitch_173
        :pswitch_170
        :pswitch_16d
        :pswitch_16a
        :pswitch_167
        :pswitch_164
        :pswitch_161
        :pswitch_15e
        :pswitch_15b
        :pswitch_158
        :pswitch_155
        :pswitch_152
        :pswitch_14f
        :pswitch_14c
        :pswitch_149
        :pswitch_146
        :pswitch_143
        :pswitch_140
        :pswitch_13d
        :pswitch_13a
        :pswitch_137
        :pswitch_134
        :pswitch_131
        :pswitch_12e
        :pswitch_12b
        :pswitch_128
        :pswitch_125
        :pswitch_122
        :pswitch_11f
        :pswitch_11c
        :pswitch_119
        :pswitch_116
        :pswitch_113
        :pswitch_110
        :pswitch_10d
        :pswitch_10a
        :pswitch_107
        :pswitch_104
        :pswitch_101
        :pswitch_fe
        :pswitch_fb
        :pswitch_f8
        :pswitch_f5
        :pswitch_f2
        :pswitch_ef
        :pswitch_ec
        :pswitch_e9
        :pswitch_e6
        :pswitch_e3
        :pswitch_e0
        :pswitch_dd
        :pswitch_da
        :pswitch_d7
        :pswitch_d4
        :pswitch_d1
        :pswitch_ce
        :pswitch_cb
        :pswitch_c8
        :pswitch_c5
        :pswitch_c2
        :pswitch_bf
        :pswitch_bc
        :pswitch_b9
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private blacklist onTransact$addAttachRestrictionForCarrier$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 20366
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 20367
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20368
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->addAttachRestrictionForCarrier(IILcom/android/internal/telephony/IIntegerConsumer;)V

    .line 20369
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20370
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$addUceRegistrationOverrideShell$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19794
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19796
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 19797
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19798
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->addUceRegistrationOverrideShell(ILjava/util/List;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object p1

    .line 19799
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19800
    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 19801
    return v0
.end method

.method private blacklist onTransact$bootstrapAuthenticationRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19644
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19646
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 19648
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/Uri;

    .line 19650
    sget-object v0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/telephony/gba/UaSecurityProtocolIdentifier;

    .line 19652
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 19654
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/IBootstrapAuthenticationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IBootstrapAuthenticationCallback;

    move-result-object v6

    .line 19655
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19656
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/ITelephony$Stub;->bootstrapAuthenticationRequest(IILandroid/net/Uri;Landroid/telephony/gba/UaSecurityProtocolIdentifier;ZLandroid/telephony/IBootstrapAuthenticationCallback;)V

    .line 19657
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19658
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$canChangeDtmfToneLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18772
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18774
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 18776
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 18777
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18778
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->canChangeDtmfToneLength(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 18779
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18780
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 18781
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$changeIccLockPassword$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19566
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19568
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19570
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19571
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19572
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->changeIccLockPassword(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 19573
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19574
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 19575
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$clearSignalStrengthUpdateRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19851
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19853
    sget-object v1, Landroid/telephony/SignalStrengthUpdateRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SignalStrengthUpdateRequest;

    .line 19855
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19856
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19857
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->clearSignalStrengthUpdateRequest(ILandroid/telephony/SignalStrengthUpdateRequest;Ljava/lang/String;)V

    .line 19858
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19859
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$deprovisionSatellite$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20517
    sget-object v0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 20519
    sget-object v1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 20520
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20521
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->deprovisionSatellite(Ljava/util/List;Landroid/os/ResultReceiver;)V

    .line 20522
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20523
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$deprovisionSatelliteService$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 20111
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v1

    .line 20112
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20113
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->deprovisionSatelliteService(Ljava/lang/String;Lcom/android/internal/telephony/IIntegerConsumer;)V

    .line 20114
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20115
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$doesSwitchMultiSimConfigTriggerReboot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19388
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19390
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19392
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19393
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19394
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->doesSwitchMultiSimConfigTriggerReboot(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 19395
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19396
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 19397
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$enableModemForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19360
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19362
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 19363
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19364
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->enableModemForSlot(IZ)Z

    move-result p1

    .line 19365
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19366
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 19367
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$enableVisualVoicemailSmsFilter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18251
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 18253
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 18255
    sget-object v2, Landroid/telephony/VisualVoicemailSmsFilterSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/VisualVoicemailSmsFilterSettings;

    .line 18256
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18257
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->enableVisualVoicemailSmsFilter(Ljava/lang/String;ILandroid/telephony/VisualVoicemailSmsFilterSettings;)V

    .line 18258
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18259
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$enqueueSmsPickResult$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19492
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 19494
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 19496
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v1

    .line 19497
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19498
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->enqueueSmsPickResult(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IIntegerConsumer;)V

    .line 19499
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getBoundImsServicePackage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18536
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18538
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 18540
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 18541
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18542
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getBoundImsServicePackage(IZI)Ljava/lang/String;

    move-result-object p1

    .line 18543
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18544
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18545
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getCallForwarding$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18939
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18941
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 18943
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ICallForwardingInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ICallForwardingInfoCallback;

    move-result-object v2

    .line 18944
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18945
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallForwarding(IILcom/android/internal/telephony/ICallForwardingInfoCallback;)V

    .line 18946
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18947
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getCallStateForSubscription$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 18185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 18186
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18187
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallStateForSubscription(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 18188
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18189
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 18190
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getCarrierIdFromMccMnc$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18921
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18923
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 18925
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 18926
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18927
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierIdFromMccMnc(ILjava/lang/String;Z)I

    move-result p1

    .line 18928
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18929
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 18930
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getCarrierRestrictionStatus$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20037
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v0

    .line 20039
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 20040
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20041
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierRestrictionStatus(Lcom/android/internal/telephony/IIntegerConsumer;Ljava/lang/String;)V

    .line 20042
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20043
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getCellNetworkScanResults$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18553
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18555
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 18557
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 18558
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18559
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellNetworkScanResults(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/CellNetworkScanResult;

    move-result-object p1

    .line 18560
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18561
    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 18562
    return v0
.end method

.method private blacklist onTransact$getClientRequestStats$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18982
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 18984
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 18986
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 18987
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18988
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getClientRequestStats(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 18989
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18990
    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 18991
    return v0
.end method

.method private blacklist onTransact$getDataNetworkTypeForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18307
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18309
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 18311
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 18312
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18313
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 18314
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18315
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 18316
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getDefaultRespondViaMessageApplication$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19987
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19989
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 19990
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19991
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDefaultRespondViaMessageApplication(IZ)Landroid/content/ComponentName;

    move-result-object p1

    .line 19992
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19993
    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 19994
    return v0
.end method

.method private blacklist onTransact$getDeviceSoftwareVersionForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18828
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18830
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 18832
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 18833
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18834
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceSoftwareVersionForSlot(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18835
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18836
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18837
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getEquivalentHomePlmns$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19585
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19587
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19589
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19590
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19591
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getEquivalentHomePlmns(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 19592
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19593
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 19594
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getForbiddenPlmns$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19012
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19014
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19016
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19018
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 19019
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19020
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getForbiddenPlmns(IILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 19021
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19022
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 19023
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getImeiForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18811
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18813
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 18815
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 18816
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18817
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getImeiForSlot(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18818
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18819
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18820
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getImsProvisioningInt$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19286
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19288
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19289
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19290
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsProvisioningInt(II)I

    move-result p1

    .line 19291
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19292
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 19293
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getImsProvisioningStatusForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19240
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19242
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19244
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 19245
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19246
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsProvisioningStatusForCapability(III)Z

    move-result p1

    .line 19247
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19248
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 19249
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getImsProvisioningString$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19299
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19302
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19303
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsProvisioningString(II)Ljava/lang/String;

    move-result-object p1

    .line 19304
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19305
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19306
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getLastKnownCellIdentity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19912
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19914
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19916
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19917
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19918
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getLastKnownCellIdentity(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;

    move-result-object p1

    .line 19919
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19920
    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 19921
    return v0
.end method

.method private blacklist onTransact$getLine1AlphaTagForDisplay$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18698
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18700
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 18702
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 18703
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18704
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getLine1AlphaTagForDisplay(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18705
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18706
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18707
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getLine1NumberForDisplay$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18683
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18685
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 18687
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 18688
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18689
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getLine1NumberForDisplay(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18690
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18691
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18692
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getMergedSubscriberIds$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18713
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18715
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 18717
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 18718
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18719
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getMergedSubscriberIds(ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 18720
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18721
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 18722
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getNetworkTypeForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18291
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18293
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 18295
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 18296
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18297
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 18298
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18299
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 18300
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getNumberOfModemsWithSimultaneousDataConnections$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19106
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19107
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getNumberOfModemsWithSimultaneousDataConnections(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 19108
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19109
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 19110
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getRadioPowerOffReasons$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 18159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 18160
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18161
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getRadioPowerOffReasons(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 18162
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18163
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 18164
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getRadioPowerState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19123
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19124
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getRadioPowerState(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 19125
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19126
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 19127
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getRcsProvisioningStatusForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19255
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19257
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19259
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 19260
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19261
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getRcsProvisioningStatusForCapability(III)Z

    move-result p1

    .line 19262
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19263
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 19264
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getServiceStateForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18862
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 18864
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 18866
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 18868
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 18870
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 18871
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18872
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getServiceStateForSlot(IZZLjava/lang/String;Ljava/lang/String;)Landroid/telephony/ServiceState;

    move-result-object p1

    .line 18873
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18874
    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 18875
    return v0
.end method

.method private blacklist onTransact$getShaIdFromAllowList$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20349
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 20351
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 20352
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20353
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getShaIdFromAllowList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 20354
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20355
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 20356
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getSubIdForPhoneAccountHandle$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18843
    sget-object v0, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 18845
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 18847
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 18848
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18849
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubIdForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 18850
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18851
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 18852
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getVisualVoicemailPackageName$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18236
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 18238
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 18240
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 18241
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18242
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getVisualVoicemailPackageName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 18243
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18244
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18245
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getVoiceMessageCountForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18221
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 18223
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 18224
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18225
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCountForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 18226
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18227
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 18228
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getVoiceNetworkTypeForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18322
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18324
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 18326
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 18327
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18328
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceNetworkTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 18329
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18330
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 18331
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$handleUssdRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 18137
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 18138
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18139
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->handleUssdRequest(ILjava/lang/String;Landroid/os/ResultReceiver;)V

    .line 18140
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18141
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$iccExchangeSimIO$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18481
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 18483
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 18485
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 18487
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 18489
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 18491
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 18493
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 18494
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18495
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephony$Stub;->iccExchangeSimIO(IIIIIILjava/lang/String;)[B

    move-result-object p1

    .line 18496
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18497
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 18498
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$iccTransmitApduBasicChannel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18456
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 18458
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 18460
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 18462
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 18464
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 18466
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 18468
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 18470
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 18471
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18472
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduBasicChannel(ILjava/lang/String;IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18473
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18474
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18475
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$iccTransmitApduBasicChannelByPort$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18429
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 18431
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 18433
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 18435
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 18437
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 18439
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 18441
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 18443
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 18445
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 18446
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18447
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduBasicChannelByPort(IILjava/lang/String;IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18448
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18449
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18450
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$iccTransmitApduLogicalChannel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18404
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 18406
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 18408
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 18410
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 18412
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 18414
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 18416
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 18418
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 18419
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18420
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18421
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18422
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18423
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$iccTransmitApduLogicalChannelByPort$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18377
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 18379
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 18381
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 18383
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 18385
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 18387
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 18389
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 18391
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 18393
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 18394
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18395
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduLogicalChannelByPort(IIIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18396
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18397
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18398
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$isApnMetered$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19450
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19452
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19453
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19454
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isApnMetered(II)Z

    move-result p1

    .line 19455
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19456
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 19457
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$isApplicationOnUicc$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19407
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19409
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19410
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19411
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isApplicationOnUicc(II)Z

    move-result p1

    .line 19412
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19413
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 19414
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$isAvailable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 19161
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19162
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isAvailable(III)Z

    move-result p1

    .line 19163
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19164
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 19165
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$isCapable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 19146
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19147
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isCapable(III)Z

    move-result p1

    .line 19148
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19149
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 19150
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$isDataEnabledForApn$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19435
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19437
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19439
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19440
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19441
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataEnabledForApn(IILjava/lang/String;)Z

    move-result p1

    .line 19442
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19443
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 19444
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$isMmTelCapabilitySupported$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19173
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v1

    .line 19175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 19177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 19178
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19179
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->isMmTelCapabilitySupported(ILcom/android/internal/telephony/IIntegerConsumer;II)V

    .line 19180
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19181
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$isMobileDataPolicyEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19522
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19524
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19525
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19526
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isMobileDataPolicyEnabled(II)Z

    move-result p1

    .line 19527
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19528
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 19529
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$isModemEnabledForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19420
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19422
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19424
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19425
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19426
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isModemEnabledForSlot(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 19427
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19428
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 19429
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$isMultiSimSupported$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19374
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 19376
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19377
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19378
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isMultiSimSupported(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 19379
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19380
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 19381
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$isMvnoMatched$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19477
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19479
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19481
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19482
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19483
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isMvnoMatched(IILjava/lang/String;)Z

    move-result p1

    .line 19484
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19485
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 19486
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$isPremiumCapabilityAvailableForPurchase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19868
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19870
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19871
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19872
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isPremiumCapabilityAvailableForPurchase(II)Z

    move-result p1

    .line 19873
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19874
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 19875
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$isProvisioningRequiredForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19929
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19931
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19933
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 19934
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19935
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isProvisioningRequiredForCapability(III)Z

    move-result p1

    .line 19936
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19937
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 19938
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$isRadioOnForSubscriberWithFeature$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18083
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18085
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 18087
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 18088
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18089
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOnForSubscriberWithFeature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 18090
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18091
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 18092
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$isRcsProvisioningRequiredForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19944
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19946
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19948
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 19949
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19950
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isRcsProvisioningRequiredForCapability(III)Z

    move-result p1

    .line 19951
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19952
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 19953
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$isWorldPhone$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18787
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18789
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 18791
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 18792
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18793
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isWorldPhone(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 18794
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18795
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 18796
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$notifyRcsAutoConfigurationReceived$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19536
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19538
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 19540
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 19541
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19542
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->notifyRcsAutoConfigurationReceived(I[BZ)V

    .line 19543
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19544
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$overrideCarrierRoamingNtnEligibilityChanged$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20504
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 20506
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 20507
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20508
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->overrideCarrierRoamingNtnEligibilityChanged(ZZ)Z

    move-result p1

    .line 20509
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20510
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 20511
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$overrideConfigDataVersion$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20336
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 20338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 20339
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20340
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->overrideConfigDataVersion(ZI)Z

    move-result p1

    .line 20341
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20342
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 20343
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$overrideSatelliteEntilementQueryConditions$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20461
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 20463
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 20464
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20465
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->overrideSatelliteEntilementQueryConditions(ZZ)Z

    move-result p1

    .line 20466
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20467
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 20468
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$overrideSatelliteEntilementStatusResponseForCtsTest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20448
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 20450
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 20451
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20452
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->overrideSatelliteEntilementStatusResponseForCtsTest(Ljava/lang/String;Z)Z

    move-result p1

    .line 20453
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20454
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 20455
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$persistEmergencyCallDiagnosticData$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20001
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 20003
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 20005
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 20007
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 20009
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 20010
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20011
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/ITelephony$Stub;->persistEmergencyCallDiagnosticData(Ljava/lang/String;ZJZZ)V

    .line 20012
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20013
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$provisionSatellite$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20489
    sget-object v0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 20491
    sget-object v1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 20492
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20493
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->provisionSatellite(Ljava/util/List;Landroid/os/ResultReceiver;)V

    .line 20494
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20495
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$provisionSatelliteService$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20094
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 20096
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 20098
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 20099
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20100
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->provisionSatelliteService(Ljava/lang/String;[BLcom/android/internal/telephony/IIntegerConsumer;)Landroid/os/ICancellationSignal;

    move-result-object p1

    .line 20101
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20102
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 20103
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$purchasePremiumCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19881
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19883
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v1

    .line 19885
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 19886
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19887
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->purchasePremiumCapability(ILcom/android/internal/telephony/IIntegerConsumer;I)V

    .line 19888
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19889
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$registerForCommunicationAccessStateChanged$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20407
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20409
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback;

    move-result-object v1

    .line 20410
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20411
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->registerForCommunicationAccessStateChanged(ILandroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback;)I

    move-result p1

    .line 20412
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20413
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 20414
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$registerImsStateCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19895
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19897
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19899
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IImsStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IImsStateCallback;

    move-result-object v2

    .line 19901
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 19902
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19903
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->registerImsStateCallback(IILcom/android/internal/telephony/IImsStateCallback;Ljava/lang/String;)V

    .line 19904
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19905
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$registerRcsProvisioningCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19705
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19707
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IRcsConfigCallback;

    move-result-object v1

    .line 19708
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19709
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->registerRcsProvisioningCallback(ILandroid/telephony/ims/aidl/IRcsConfigCallback;)V

    .line 19710
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19711
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$removeAttachRestrictionForCarrier$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20376
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20378
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 20380
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 20381
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20382
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->removeAttachRestrictionForCarrier(IILcom/android/internal/telephony/IIntegerConsumer;)V

    .line 20383
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20384
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$removeContactFromEab$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19777
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19779
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19780
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19781
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->removeContactFromEab(ILjava/lang/String;)I

    move-result p1

    .line 19782
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19783
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 19784
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$removeUceRegistrationOverrideShell$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19807
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19809
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 19810
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19811
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->removeUceRegistrationOverrideShell(ILjava/util/List;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object p1

    .line 19812
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19813
    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 19814
    return v0
.end method

.method private blacklist onTransact$requestCellInfoUpdate$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18340
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18342
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ICellInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ICellInfoCallback;

    move-result-object v1

    .line 18344
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 18346
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 18347
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18348
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->requestCellInfoUpdate(ILandroid/telephony/ICellInfoCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 18349
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18350
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$requestCellInfoUpdateWithWorkSource$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 18358
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ICellInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ICellInfoCallback;

    move-result-object v2

    .line 18360
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 18362
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 18364
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/WorkSource;

    .line 18365
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18366
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony$Stub;->requestCellInfoUpdateWithWorkSource(ILandroid/telephony/ICellInfoCallback;Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    .line 18367
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18368
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$requestIsCommunicationAllowedForCurrentLocation$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20150
    sget-object v1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 20151
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20152
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->requestIsCommunicationAllowedForCurrentLocation(ILandroid/os/ResultReceiver;)V

    .line 20153
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20154
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$requestNetworkScan$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18568
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 18570
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 18572
    sget-object v0, Landroid/telephony/NetworkScanRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/telephony/NetworkScanRequest;

    .line 18574
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/Messenger;

    .line 18576
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 18578
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 18580
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 18581
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18582
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephony$Stub;->requestNetworkScan(IZLandroid/telephony/NetworkScanRequest;Landroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 18583
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18584
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 18585
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$requestNumberVerification$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18647
    sget-object v0, Landroid/telephony/PhoneNumberRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/telephony/PhoneNumberRange;

    .line 18649
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 18651
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/INumberVerificationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/INumberVerificationCallback;

    move-result-object v5

    .line 18653
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 18654
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18655
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/ITelephony$Stub;->requestNumberVerification(Landroid/telephony/PhoneNumberRange;JLcom/android/internal/telephony/INumberVerificationCallback;Ljava/lang/String;)V

    .line 18656
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18657
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$requestSatelliteEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20049
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 20051
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 20053
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 20055
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v3

    .line 20056
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20057
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->requestSatelliteEnabled(ZZZLcom/android/internal/telephony/IIntegerConsumer;)V

    .line 20058
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20059
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$requestSatelliteSessionStats$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20475
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20477
    sget-object v1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 20478
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20479
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->requestSatelliteSessionStats(ILandroid/os/ResultReceiver;)V

    .line 20480
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20481
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$sendDatagram$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20131
    sget-object v1, Landroid/telephony/satellite/SatelliteDatagram;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/satellite/SatelliteDatagram;

    .line 20133
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 20135
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v3

    .line 20136
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20137
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->sendDatagram(ILandroid/telephony/satellite/SatelliteDatagram;ZLcom/android/internal/telephony/IIntegerConsumer;)V

    .line 20138
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20139
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$sendDeviceToDeviceMessage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19747
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19749
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19750
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19751
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->sendDeviceToDeviceMessage(II)V

    .line 19752
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19753
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$sendThermalMitigationRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19629
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19631
    sget-object v1, Landroid/telephony/ThermalMitigationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ThermalMitigationRequest;

    .line 19633
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19634
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19635
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->sendThermalMitigationRequest(ILandroid/telephony/ThermalMitigationRequest;Ljava/lang/String;)I

    move-result p1

    .line 19636
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19637
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 19638
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$sendVisualVoicemailSmsForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18268
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 18270
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 18272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 18274
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 18276
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 18278
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 18280
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/app/PendingIntent;

    .line 18281
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18282
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephony$Stub;->sendVisualVoicemailSmsForSubscriber(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 18283
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18284
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setAllowedNetworkTypesForReason$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18608
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 18610
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 18612
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 18614
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 18615
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18616
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setAllowedNetworkTypesForReason(IIJLjava/lang/String;)Z

    move-result p1

    .line 18617
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18618
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 18619
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setBoundGbaServiceOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19664
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19666
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19667
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19668
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setBoundGbaServiceOverride(ILjava/lang/String;)Z

    move-result p1

    .line 19669
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19670
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 19671
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setBoundImsServiceOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18516
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 18518
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 18520
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 18522
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 18524
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 18525
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18526
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setBoundImsServiceOverride(IIZ[ILjava/lang/String;)Z

    move-result p1

    .line 18527
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18528
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 18529
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setCallForwarding$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18953
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18955
    sget-object v1, Landroid/telephony/CallForwardingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CallForwardingInfo;

    .line 18957
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 18958
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18959
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setCallForwarding(ILandroid/telephony/CallForwardingInfo;Lcom/android/internal/telephony/IIntegerConsumer;)V

    .line 18960
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18961
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setCallWaitingStatus$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18968
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18970
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 18972
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 18973
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18974
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setCallWaitingStatus(IZLcom/android/internal/telephony/IIntegerConsumer;)V

    .line 18975
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18976
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setCapabilitiesRequestTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19824
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19826
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 19827
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19828
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setCapabilitiesRequestTimeout(IJ)Z

    move-result p1

    .line 19829
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19830
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 19831
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setCarrierServicePackageOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19085
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19087
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19089
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19090
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19091
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setCarrierServicePackageOverride(ILjava/lang/String;Ljava/lang/String;)V

    .line 19092
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19093
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setCarrierSingleRegistrationEnabledOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19734
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19736
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19737
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19738
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setCarrierSingleRegistrationEnabledOverride(ILjava/lang/String;)Z

    move-result p1

    .line 19739
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19740
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 19741
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setCarrierTestOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19057
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19059
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19061
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 19063
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 19065
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 19067
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 19069
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 19071
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 19073
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 19075
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 19076
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19077
    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/ITelephony$Stub;->setCarrierTestOverride(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19078
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19079
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setCellBroadcastIdRanges$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20022
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20024
    sget-object v1, Landroid/telephony/CellBroadcastIdRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 20026
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 20027
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20028
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setCellBroadcastIdRanges(ILjava/util/List;Lcom/android/internal/telephony/IIntegerConsumer;)V

    .line 20029
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20030
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setCountryCodes$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20254
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 20256
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 20258
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 20259
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v3

    .line 20261
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 20263
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 20264
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20265
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/ITelephony$Stub;->setCountryCodes(ZLjava/util/List;Ljava/util/Map;Ljava/lang/String;J)Z

    move-result p1

    .line 20266
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20267
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 20268
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setDataEnabledForReason$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18628
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18630
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 18632
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 18634
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 18635
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18636
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataEnabledForReason(IIZLjava/lang/String;)V

    .line 18637
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18638
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setDatagramControllerBooleanConfig$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20432
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 20434
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 20436
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 20437
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20438
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setDatagramControllerBooleanConfig(ZIZ)Z

    move-result p1

    .line 20439
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20440
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 20441
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setDatagramControllerTimeoutDuration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20209
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 20211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 20213
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 20214
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20215
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setDatagramControllerTimeoutDuration(ZIJ)Z

    move-result p1

    .line 20216
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20217
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 20218
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setEmergencyCallToSatelliteHandoverType$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20239
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20241
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 20243
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 20244
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20245
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setEmergencyCallToSatelliteHandoverType(III)Z

    move-result p1

    .line 20246
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20247
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 20248
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setForbiddenPlmns$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19029
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19031
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 19033
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 19035
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 19037
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 19038
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19039
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setForbiddenPlmns(IILjava/util/List;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 19040
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19041
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 19042
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setGbaReleaseTimeOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19678
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19680
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19681
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19682
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setGbaReleaseTimeOverride(II)Z

    move-result p1

    .line 19683
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19684
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 19685
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setIccLockEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19551
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19553
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 19555
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19556
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19557
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setIccLockEnabled(IZLjava/lang/String;)I

    move-result p1

    .line 19558
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19559
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 19560
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setImsFeatureValidationOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19762
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19764
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19765
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19766
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setImsFeatureValidationOverride(ILjava/lang/String;)Z

    move-result p1

    .line 19767
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19768
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 19769
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setImsProvisioningInt$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19312
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19314
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19316
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 19317
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19318
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setImsProvisioningInt(III)I

    move-result p1

    .line 19319
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19320
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 19321
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setImsProvisioningStatusForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19224
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 19230
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 19231
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19232
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setImsProvisioningStatusForCapability(IIIZ)V

    .line 19233
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19234
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setImsProvisioningString$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19327
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19329
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19331
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19332
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19333
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setImsProvisioningString(IILjava/lang/String;)I

    move-result p1

    .line 19334
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19335
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 19336
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setLine1NumberForDisplayForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18668
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18670
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 18672
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 18673
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18674
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 18675
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18676
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 18677
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setMobileDataPolicyEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19508
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19510
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19512
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 19513
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19514
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setMobileDataPolicyEnabled(IIZ)V

    .line 19515
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19516
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setNetworkSelectionModeManual$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18592
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18594
    sget-object v1, Lcom/android/internal/telephony/OperatorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/OperatorInfo;

    .line 18596
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 18597
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18598
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;Z)Z

    move-result p1

    .line 18599
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18600
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 18601
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setNrDualConnectivityState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19614
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19616
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19617
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19618
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setNrDualConnectivityState(II)I

    move-result p1

    .line 19619
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19620
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 19621
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setOemEnabledSatelliteProvisionStatus$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20323
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 20325
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 20326
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20327
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setOemEnabledSatelliteProvisionStatus(ZZ)Z

    move-result p1

    .line 20328
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20329
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 20330
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setRcsClientConfiguration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19692
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19694
    sget-object v1, Landroid/telephony/ims/RcsClientConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/RcsClientConfiguration;

    .line 19695
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19696
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRcsClientConfiguration(ILandroid/telephony/ims/RcsClientConfiguration;)V

    .line 19697
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19698
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setRcsProvisioningStatusForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19274
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 19276
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 19277
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19278
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setRcsProvisioningStatusForCapability(IIIZ)V

    .line 19279
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19280
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setRemovableEsimAsDefaultEuicc$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19974
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 19976
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19977
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19978
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRemovableEsimAsDefaultEuicc(ZLjava/lang/String;)V

    .line 19979
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19980
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setRoamingOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18730
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 18732
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 18734
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 18736
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 18738
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 18739
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18740
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setRoamingOverride(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    .line 18741
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18742
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 18743
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setSatelliteAccessAllowedForSubscriptions$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20295
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 20297
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 20298
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20299
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setSatelliteAccessAllowedForSubscriptions(ZLjava/lang/String;)Z

    move-result p1

    .line 20300
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20301
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 20302
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setSatelliteAccessControlOverlayConfigs$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20274
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 20276
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 20278
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 20280
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 20282
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 20284
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 20285
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20286
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephony$Stub;->setSatelliteAccessControlOverlayConfigs(ZZLjava/lang/String;JLjava/util/List;Ljava/lang/String;)Z

    move-result p1

    .line 20287
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20288
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 20289
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setSatelliteControllerTimeoutDuration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20224
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 20226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 20228
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 20229
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20230
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setSatelliteControllerTimeoutDuration(ZIJ)Z

    move-result p1

    .line 20231
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20232
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 20233
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setSatellitePointingUiClassName$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 20198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 20199
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20200
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setSatellitePointingUiClassName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 20201
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20202
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 20203
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setSatelliteServicePackageName$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 20169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 20170
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20171
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setSatelliteServicePackageName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 20172
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20173
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 20174
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setSignalStrengthUpdateRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19837
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19839
    sget-object v1, Landroid/telephony/SignalStrengthUpdateRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SignalStrengthUpdateRequest;

    .line 19841
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19842
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19843
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setSignalStrengthUpdateRequest(ILandroid/telephony/SignalStrengthUpdateRequest;Ljava/lang/String;)V

    .line 19844
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19845
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setSimPowerStateForSlotWithCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18998
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19000
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19002
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 19003
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19004
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setSimPowerStateForSlotWithCallback(IILcom/android/internal/telephony/IIntegerConsumer;)V

    .line 19005
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19006
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setSupportDisableSatelliteWhileEnableInProgress$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20183
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 20185
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 20186
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20187
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setSupportDisableSatelliteWhileEnableInProgress(ZZ)Z

    move-result p1

    .line 20188
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20189
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 20190
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setSystemSelectionChannels$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19463
    sget-object p2, Landroid/telephony/RadioAccessSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 19465
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19467
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IBooleanConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IBooleanConsumer;

    move-result-object v1

    .line 19468
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19469
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setSystemSelectionChannels(Ljava/util/List;ILcom/android/internal/telephony/IBooleanConsumer;)V

    .line 19470
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setTnScanningSupport$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20308
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 20310
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 20312
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 20313
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20314
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setTnScanningSupport(ZZZ)Z

    move-result p1

    .line 20315
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20316
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 20317
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setVoNrEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19600
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19602
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 19603
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19604
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoNrEnabled(IZ)I

    move-result p1

    .line 19605
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19606
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 19607
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setVoWiFiNonPersistent$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19199
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 19201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 19202
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19203
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoWiFiNonPersistent(IZI)V

    .line 19204
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19205
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setVoiceMailNumber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 18204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 18205
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18206
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 18207
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18208
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 18209
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setVoiceServiceStateOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19959
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19961
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 19963
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19964
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19965
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoiceServiceStateOverride(IZLjava/lang/String;)V

    .line 19966
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19967
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setVoicemailRingtoneUri$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18882
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 18884
    sget-object v1, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 18886
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 18887
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18888
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoicemailRingtoneUri(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;)V

    .line 18889
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18890
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setVoicemailVibrationEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18897
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 18899
    sget-object v1, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 18901
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 18902
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18903
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoicemailVibrationEnabled(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V

    .line 18904
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18905
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$startSatelliteTransmissionUpdates$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20070
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v0

    .line 20072
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;

    move-result-object v1

    .line 20073
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20074
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->startSatelliteTransmissionUpdates(Lcom/android/internal/telephony/IIntegerConsumer;Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;)V

    .line 20075
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20076
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$stopSatelliteTransmissionUpdates$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20082
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v0

    .line 20084
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;

    move-result-object v1

    .line 20085
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20086
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->stopSatelliteTransmissionUpdates(Lcom/android/internal/telephony/IIntegerConsumer;Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;)V

    .line 20087
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20088
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$supplyPukForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 18105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 18106
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18107
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 18108
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18109
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 18110
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$supplyPukReportResultForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 18121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 18122
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18123
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object p1

    .line 18124
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18125
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 18126
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$unregisterForCommunicationAccessStateChanged$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20420
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20422
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback;

    move-result-object v1

    .line 20423
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 20424
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterForCommunicationAccessStateChanged(ILandroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback;)V

    .line 20425
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20426
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$unregisterRcsProvisioningCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19717
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19719
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IRcsConfigCallback;

    move-result-object v1

    .line 19720
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19721
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterRcsProvisioningCallback(ILandroid/telephony/ims/aidl/IRcsConfigCallback;)V

    .line 19722
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19723
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$updateEmergencyNumberListTestMode$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19343
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19345
    sget-object v1, Landroid/telephony/emergency/EmergencyNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/emergency/EmergencyNumber;

    .line 19346
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 19347
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->updateEmergencyNumberListTestMode(ILandroid/telephony/emergency/EmergencyNumber;)V

    .line 19348
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 19349
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$uploadCallComposerPicture$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18752
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 18754
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 18756
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 18758
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    .line 18760
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/ResultReceiver;

    .line 18761
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18762
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony$Stub;->uploadCallComposerPicture(ILjava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ResultReceiver;)V

    .line 18763
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18764
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 3627
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 20533
    const/16 v0, 0x1a3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 5323
    invoke-static {p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5327
    nop

    .line 5328
    const-string v0, "com.android.internal.telephony.ITelephony"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 5329
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5331
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 5332
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5333
    return v1

    .line 5335
    :cond_17
    packed-switch p1, :pswitch_data_168e

    .line 8576
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 8567
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 8568
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8569
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->setSatelliteIgnorePlmnListFromStorage(Z)Z

    move-result p1

    .line 8570
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8571
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8572
    goto/16 :goto_168d

    .line 8557
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 8558
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8559
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getSatelliteDataSupportMode(I)I

    move-result p1

    .line 8560
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8561
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8562
    goto/16 :goto_168d

    .line 8549
    :pswitch_45
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSatelliteDataOptimizedApps()Ljava/util/List;

    move-result-object p1

    .line 8550
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8551
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 8552
    goto/16 :goto_168d

    .line 8540
    :pswitch_51
    sget-object p1, Landroid/service/carrier/CarrierIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/carrier/CarrierIdentifier;

    .line 8541
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8542
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierIdFromIdentifier(Landroid/service/carrier/CarrierIdentifier;)I

    move-result p1

    .line 8543
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8544
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8545
    goto/16 :goto_168d

    .line 8531
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 8532
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8533
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->setNtnSmsSupported(Z)V

    .line 8534
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8535
    goto/16 :goto_168d

    .line 8526
    :pswitch_77
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$deprovisionSatellite$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 8522
    :pswitch_7c
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$overrideCarrierRoamingNtnEligibilityChanged$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 8515
    :pswitch_81
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getTestEuiccUiComponent()Landroid/content/ComponentName;

    move-result-object p1

    .line 8516
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8517
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8518
    goto/16 :goto_168d

    .line 8507
    :pswitch_8d
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 8508
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8509
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->setTestEuiccUiComponent(Landroid/content/ComponentName;)V

    .line 8510
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8511
    goto/16 :goto_168d

    .line 8497
    :pswitch_a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 8498
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8499
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->setSatelliteSubscriberIdListChangedIntentComponent(Ljava/lang/String;)Z

    move-result p1

    .line 8500
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8501
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8502
    goto/16 :goto_168d

    .line 8492
    :pswitch_b3
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$provisionSatellite$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 8484
    :pswitch_b8
    sget-object p1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    .line 8485
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8486
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->requestSatelliteDisplayName(Landroid/os/ResultReceiver;)V

    .line 8487
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8488
    goto/16 :goto_168d

    .line 8475
    :pswitch_cb
    sget-object p1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    .line 8476
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8477
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->requestSatelliteSubscriberProvisionStatus(Landroid/os/ResultReceiver;)V

    .line 8478
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8479
    goto/16 :goto_168d

    .line 8470
    :pswitch_de
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$requestSatelliteSessionStats$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 8461
    :pswitch_e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 8462
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8463
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->setMaxAllowedSatelliteDataModeForCtsTest(I)Z

    move-result p1

    .line 8464
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8465
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8466
    goto/16 :goto_168d

    .line 8456
    :pswitch_f6
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$overrideSatelliteEntilementQueryConditions$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 8452
    :pswitch_fb
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$overrideSatelliteEntilementStatusResponseForCtsTest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 8443
    :pswitch_100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 8444
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8445
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->setIsSatelliteCommunicationAllowedForCurrentLocationCache(Ljava/lang/String;)Z

    move-result p1

    .line 8446
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8447
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8448
    goto/16 :goto_168d

    .line 8438
    :pswitch_113
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setDatagramControllerBooleanConfig$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 8434
    :pswitch_118
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$unregisterForCommunicationAccessStateChanged$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 8430
    :pswitch_11d
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$registerForCommunicationAccessStateChanged$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 8422
    :pswitch_122
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/IBooleanConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IBooleanConsumer;

    move-result-object p1

    .line 8423
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8424
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterForSatelliteSupportedStateChanged(Lcom/android/internal/telephony/IBooleanConsumer;)V

    .line 8425
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8426
    goto/16 :goto_168d

    .line 8412
    :pswitch_135
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/IBooleanConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IBooleanConsumer;

    move-result-object p1

    .line 8413
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8414
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->registerForSatelliteSupportedStateChanged(Lcom/android/internal/telephony/IBooleanConsumer;)I

    move-result p1

    .line 8415
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8416
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8417
    goto/16 :goto_168d

    .line 8402
    :pswitch_14c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 8403
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8404
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getSatellitePlmnsForCarrier(I)Ljava/util/List;

    move-result-object p1

    .line 8405
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8406
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 8407
    goto/16 :goto_168d

    .line 8394
    :pswitch_15f
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isNullCipherNotificationsEnabled()Z

    move-result p1

    .line 8395
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8396
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8397
    goto/16 :goto_168d

    .line 8386
    :pswitch_16b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 8387
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8388
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->setNullCipherNotificationsEnabled(Z)V

    .line 8389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8390
    goto/16 :goto_168d

    .line 8378
    :pswitch_17a
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isCellularIdentifierDisclosureNotificationsEnabled()Z

    move-result p1

    .line 8379
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8380
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8381
    goto/16 :goto_168d

    .line 8370
    :pswitch_186
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 8371
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8372
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->setEnableCellularIdentifierDisclosureNotifications(Z)V

    .line 8373
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8374
    goto/16 :goto_168d

    .line 8362
    :pswitch_195
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isAospDomainSelectionService()Z

    move-result p1

    .line 8363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8364
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8365
    goto/16 :goto_168d

    .line 8355
    :pswitch_1a1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->clearDomainSelectionServiceOverride()Z

    move-result p1

    .line 8356
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8357
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8358
    goto/16 :goto_168d

    .line 8346
    :pswitch_1ad
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 8347
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8348
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->setDomainSelectionServiceOverride(Landroid/content/ComponentName;)Z

    move-result p1

    .line 8349
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8350
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8351
    goto/16 :goto_168d

    .line 8336
    :pswitch_1c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 8337
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8338
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->setShouldSendDatagramToModemInDemoMode(Z)Z

    move-result p1

    .line 8339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8340
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8341
    goto/16 :goto_168d

    .line 8327
    :pswitch_1d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/ISatelliteCapabilitiesCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;

    move-result-object p1

    .line 8328
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8329
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterForCapabilitiesChanged(Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;)V

    .line 8330
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8331
    goto/16 :goto_168d

    .line 8317
    :pswitch_1ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/ISatelliteCapabilitiesCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;

    move-result-object p1

    .line 8318
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8319
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->registerForCapabilitiesChanged(Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;)I

    move-result p1

    .line 8320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8321
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8322
    goto/16 :goto_168d

    .line 8308
    :pswitch_201
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/INtnSignalStrengthCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/INtnSignalStrengthCallback;

    move-result-object p1

    .line 8309
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8310
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterForNtnSignalStrengthChanged(Landroid/telephony/satellite/INtnSignalStrengthCallback;)V

    .line 8311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8312
    goto/16 :goto_168d

    .line 8299
    :pswitch_214
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/INtnSignalStrengthCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/INtnSignalStrengthCallback;

    move-result-object p1

    .line 8300
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8301
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->registerForNtnSignalStrengthChanged(Landroid/telephony/satellite/INtnSignalStrengthCallback;)V

    .line 8302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8303
    goto/16 :goto_168d

    .line 8290
    :pswitch_227
    sget-object p1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    .line 8291
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8292
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->requestNtnSignalStrength(Landroid/os/ResultReceiver;)V

    .line 8293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8294
    goto/16 :goto_168d

    .line 8280
    :pswitch_23a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 8281
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8282
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getAttachRestrictionReasonsForCarrier(I)[I

    move-result-object p1

    .line 8283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8284
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 8285
    goto/16 :goto_168d

    .line 8275
    :pswitch_24d
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$removeAttachRestrictionForCarrier$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 8271
    :pswitch_252
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$addAttachRestrictionForCarrier$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 8267
    :pswitch_257
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getShaIdFromAllowList$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 8263
    :pswitch_25c
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$overrideConfigDataVersion$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 8259
    :pswitch_261
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setOemEnabledSatelliteProvisionStatus$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 8255
    :pswitch_266
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setTnScanningSupport$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 8251
    :pswitch_26b
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setSatelliteAccessAllowedForSubscriptions$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 8247
    :pswitch_270
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setSatelliteAccessControlOverlayConfigs$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 8243
    :pswitch_275
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setCountryCodes$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 8239
    :pswitch_27a
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setEmergencyCallToSatelliteHandoverType$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 8235
    :pswitch_27f
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setSatelliteControllerTimeoutDuration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 8231
    :pswitch_284
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setDatagramControllerTimeoutDuration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 8227
    :pswitch_289
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setSatellitePointingUiClassName$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 8223
    :pswitch_28e
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setSupportDisableSatelliteWhileEnableInProgress$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 8214
    :pswitch_293
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 8215
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8216
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->setSatelliteIgnoreCellularServiceState(Z)Z

    move-result p1

    .line 8217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8218
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8219
    goto/16 :goto_168d

    .line 8204
    :pswitch_2a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 8205
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8206
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setSatelliteListeningTimeoutDuration(J)Z

    move-result p1

    .line 8207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8208
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8209
    goto/16 :goto_168d

    .line 8194
    :pswitch_2b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 8195
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8196
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->setSatelliteGatewayServicePackageName(Ljava/lang/String;)Z

    move-result p1

    .line 8197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8198
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8199
    goto/16 :goto_168d

    .line 8189
    :pswitch_2cc
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setSatelliteServicePackageName$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 8180
    :pswitch_2d1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 8181
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8182
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->setCtsMode(Z)Z

    move-result p1

    .line 8183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8184
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8185
    goto/16 :goto_168d

    .line 8171
    :pswitch_2e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 8172
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8173
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->setDeviceAlignedWithSatellite(Z)V

    .line 8174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8175
    goto/16 :goto_168d

    .line 8162
    :pswitch_2f3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;

    move-result-object p1

    .line 8163
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8164
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterForSelectedNbIotSatelliteSubscriptionChanged(Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;)V

    .line 8165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8166
    goto/16 :goto_168d

    .line 8152
    :pswitch_306
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;

    move-result-object p1

    .line 8153
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8154
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->registerForSelectedNbIotSatelliteSubscriptionChanged(Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;)I

    move-result p1

    .line 8155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8156
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8157
    goto/16 :goto_168d

    .line 8143
    :pswitch_31d
    sget-object p1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    .line 8144
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8145
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->requestSelectedNbIotSatelliteSubscriptionId(Landroid/os/ResultReceiver;)V

    .line 8146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8147
    goto/16 :goto_168d

    .line 8134
    :pswitch_330
    sget-object p1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    .line 8135
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8136
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->requestTimeForNextSatelliteVisibility(Landroid/os/ResultReceiver;)V

    .line 8137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8138
    goto/16 :goto_168d

    .line 8125
    :pswitch_343
    sget-object p1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    .line 8126
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8127
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->requestSatelliteAccessConfigurationForCurrentLocation(Landroid/os/ResultReceiver;)V

    .line 8128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8129
    goto/16 :goto_168d

    .line 8120
    :pswitch_356
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$requestIsCommunicationAllowedForCurrentLocation$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 8112
    :pswitch_35b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;

    move-result-object p1

    .line 8113
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8114
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterForSatelliteDisallowedReasonsChanged(Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;)V

    .line 8115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8116
    goto/16 :goto_168d

    .line 8103
    :pswitch_36e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;

    move-result-object p1

    .line 8104
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->registerForSatelliteDisallowedReasonsChanged(Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;)V

    .line 8106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8107
    goto/16 :goto_168d

    .line 8095
    :pswitch_381
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSatelliteDisallowedReasons()[I

    move-result-object p1

    .line 8096
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8097
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 8098
    goto/16 :goto_168d

    .line 8091
    :pswitch_38d
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$sendDatagram$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 8083
    :pswitch_392
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object p1

    .line 8084
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8085
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->pollPendingDatagrams(Lcom/android/internal/telephony/IIntegerConsumer;)V

    .line 8086
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8087
    goto/16 :goto_168d

    .line 8074
    :pswitch_3a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/ISatelliteDatagramCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteDatagramCallback;

    move-result-object p1

    .line 8075
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8076
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterForIncomingDatagram(Landroid/telephony/satellite/ISatelliteDatagramCallback;)V

    .line 8077
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8078
    goto/16 :goto_168d

    .line 8064
    :pswitch_3b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/ISatelliteDatagramCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteDatagramCallback;

    move-result-object p1

    .line 8065
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8066
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->registerForIncomingDatagram(Landroid/telephony/satellite/ISatelliteDatagramCallback;)I

    move-result p1

    .line 8067
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8068
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8069
    goto/16 :goto_168d

    .line 8055
    :pswitch_3cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/ISatelliteModemStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteModemStateCallback;

    move-result-object p1

    .line 8056
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8057
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterForModemStateChanged(Landroid/telephony/satellite/ISatelliteModemStateCallback;)V

    .line 8058
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8059
    goto/16 :goto_168d

    .line 8045
    :pswitch_3e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/ISatelliteModemStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteModemStateCallback;

    move-result-object p1

    .line 8046
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8047
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->registerForSatelliteModemStateChanged(Landroid/telephony/satellite/ISatelliteModemStateCallback;)I

    move-result p1

    .line 8048
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8049
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8050
    goto/16 :goto_168d

    .line 8036
    :pswitch_3f9
    sget-object p1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    .line 8037
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8038
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->requestIsSatelliteProvisioned(Landroid/os/ResultReceiver;)V

    .line 8039
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8040
    goto/16 :goto_168d

    .line 8027
    :pswitch_40c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/ISatelliteProvisionStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteProvisionStateCallback;

    move-result-object p1

    .line 8028
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8029
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterForSatelliteProvisionStateChanged(Landroid/telephony/satellite/ISatelliteProvisionStateCallback;)V

    .line 8030
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8031
    goto/16 :goto_168d

    .line 8017
    :pswitch_41f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/ISatelliteProvisionStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteProvisionStateCallback;

    move-result-object p1

    .line 8018
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 8019
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->registerForSatelliteProvisionStateChanged(Landroid/telephony/satellite/ISatelliteProvisionStateCallback;)I

    move-result p1

    .line 8020
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8021
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8022
    goto/16 :goto_168d

    .line 8012
    :pswitch_436
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$deprovisionSatelliteService$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 8008
    :pswitch_43b
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$provisionSatelliteService$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 8004
    :pswitch_440
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$stopSatelliteTransmissionUpdates$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 8000
    :pswitch_445
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$startSatelliteTransmissionUpdates$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7992
    :pswitch_44a
    sget-object p1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    .line 7993
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7994
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->requestSatelliteCapabilities(Landroid/os/ResultReceiver;)V

    .line 7995
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7996
    goto/16 :goto_168d

    .line 7983
    :pswitch_45d
    sget-object p1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    .line 7984
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7985
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->requestIsSatelliteSupported(Landroid/os/ResultReceiver;)V

    .line 7986
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7987
    goto/16 :goto_168d

    .line 7974
    :pswitch_470
    sget-object p1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    .line 7975
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7976
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->requestIsEmergencyModeEnabled(Landroid/os/ResultReceiver;)V

    .line 7977
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7978
    goto/16 :goto_168d

    .line 7965
    :pswitch_483
    sget-object p1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    .line 7966
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7967
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->requestIsDemoModeEnabled(Landroid/os/ResultReceiver;)V

    .line 7968
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7969
    goto/16 :goto_168d

    .line 7956
    :pswitch_496
    sget-object p1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    .line 7957
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7958
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->requestIsSatelliteEnabled(Landroid/os/ResultReceiver;)V

    .line 7959
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7960
    goto/16 :goto_168d

    .line 7951
    :pswitch_4a9
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$requestSatelliteEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7947
    :pswitch_4ae
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getCarrierRestrictionStatus$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7940
    :pswitch_4b3
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDomainSelectionSupported()Z

    move-result p1

    .line 7941
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7942
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7943
    goto/16 :goto_168d

    .line 7936
    :pswitch_4bf
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setCellBroadcastIdRanges$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7927
    :pswitch_4c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7928
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7929
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellBroadcastIdRanges(I)Ljava/util/List;

    move-result-object p1

    .line 7930
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7931
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 7932
    goto/16 :goto_168d

    .line 7919
    :pswitch_4d7
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isNullCipherAndIntegrityPreferenceEnabled()Z

    move-result p1

    .line 7920
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7921
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7922
    goto/16 :goto_168d

    .line 7911
    :pswitch_4e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 7912
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7913
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->setNullCipherAndIntegrityEnabled(Z)V

    .line 7914
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7915
    goto/16 :goto_168d

    .line 7906
    :pswitch_4f2
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$persistEmergencyCallDiagnosticData$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7897
    :pswitch_4f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7898
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7899
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimStateForSlotIndex(I)I

    move-result p1

    .line 7900
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7901
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7902
    goto/16 :goto_168d

    .line 7892
    :pswitch_50a
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getDefaultRespondViaMessageApplication$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7883
    :pswitch_50f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 7884
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7885
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->isRemovableEsimDefaultEuicc(Ljava/lang/String;)Z

    move-result p1

    .line 7886
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7887
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7888
    goto/16 :goto_168d

    .line 7878
    :pswitch_522
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setRemovableEsimAsDefaultEuicc$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7869
    :pswitch_527
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7870
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7871
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierServicePackageNameForLogicalSlot(I)Ljava/lang/String;

    move-result-object p1

    .line 7872
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7873
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7874
    goto/16 :goto_168d

    .line 7864
    :pswitch_53a
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setVoiceServiceStateOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7860
    :pswitch_53f
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isRcsProvisioningRequiredForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7856
    :pswitch_544
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isProvisioningRequiredForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7849
    :pswitch_549
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getModemService()Ljava/lang/String;

    move-result-object p1

    .line 7850
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7851
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7852
    goto/16 :goto_168d

    .line 7840
    :pswitch_555
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 7841
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7842
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->setModemService(Ljava/lang/String;)Z

    move-result p1

    .line 7843
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7844
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7845
    goto/16 :goto_168d

    .line 7835
    :pswitch_568
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getLastKnownCellIdentity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7827
    :pswitch_56d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/IImsStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IImsStateCallback;

    move-result-object p1

    .line 7828
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7829
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterImsStateCallback(Lcom/android/internal/telephony/IImsStateCallback;)V

    .line 7830
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7831
    goto/16 :goto_168d

    .line 7822
    :pswitch_580
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$registerImsStateCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7818
    :pswitch_585
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$purchasePremiumCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7814
    :pswitch_58a
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isPremiumCapabilityAvailableForPurchase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7806
    :pswitch_58f
    sget-object p1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    .line 7807
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7808
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getSlicingConfig(Landroid/os/ResultReceiver;)V

    .line 7809
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7810
    goto/16 :goto_168d

    .line 7798
    :pswitch_5a2
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->prepareForUnattendedReboot()I

    move-result p1

    .line 7799
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7800
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7801
    goto/16 :goto_168d

    .line 7791
    :pswitch_5ae
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPhoneCapability()Landroid/telephony/PhoneCapability;

    move-result-object p1

    .line 7792
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7793
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7794
    goto/16 :goto_168d

    .line 7787
    :pswitch_5ba
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$clearSignalStrengthUpdateRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7783
    :pswitch_5bf
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setSignalStrengthUpdateRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7779
    :pswitch_5c4
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setCapabilitiesRequestTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7770
    :pswitch_5c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7771
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7772
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->removeUceRequestDisallowedStatus(I)Z

    move-result p1

    .line 7773
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7774
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7775
    goto/16 :goto_168d

    .line 7760
    :pswitch_5dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7761
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7762
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getLastUcePidfXmlShell(I)Ljava/lang/String;

    move-result-object p1

    .line 7763
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7764
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7765
    goto/16 :goto_168d

    .line 7750
    :pswitch_5ef
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7751
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7752
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getLatestRcsContactUceCapabilityShell(I)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object p1

    .line 7753
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7754
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7755
    goto/16 :goto_168d

    .line 7740
    :pswitch_602
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7741
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7742
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->clearUceRegistrationOverrideShell(I)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object p1

    .line 7743
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7744
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7745
    goto/16 :goto_168d

    .line 7735
    :pswitch_615
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$removeUceRegistrationOverrideShell$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7731
    :pswitch_61a
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$addUceRegistrationOverrideShell$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7723
    :pswitch_61f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 7724
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7725
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->setDeviceUceEnabled(Z)V

    .line 7726
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7727
    goto/16 :goto_168d

    .line 7715
    :pswitch_62e
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceUceEnabled()Z

    move-result p1

    .line 7716
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7717
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7718
    goto/16 :goto_168d

    .line 7706
    :pswitch_63a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 7707
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7708
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCapabilityFromEab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7709
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7710
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7711
    goto/16 :goto_168d

    .line 7696
    :pswitch_64d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 7697
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7698
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getContactFromEab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7699
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7700
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7701
    goto/16 :goto_168d

    .line 7691
    :pswitch_660
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$removeContactFromEab$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7684
    :pswitch_665
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object p1

    .line 7685
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7686
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7687
    goto/16 :goto_168d

    .line 7675
    :pswitch_671
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7676
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7677
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsFeatureValidationOverride(I)Z

    move-result p1

    .line 7678
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7679
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7680
    goto/16 :goto_168d

    .line 7670
    :pswitch_684
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setImsFeatureValidationOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7661
    :pswitch_689
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7662
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7663
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierSingleRegistrationEnabled(I)Z

    move-result p1

    .line 7664
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7665
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7666
    goto/16 :goto_168d

    .line 7652
    :pswitch_69c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 7653
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7654
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->setDeviceToDeviceForceEnabled(Z)V

    .line 7655
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7656
    goto/16 :goto_168d

    .line 7643
    :pswitch_6ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 7644
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7645
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->setActiveDeviceToDeviceTransport(Ljava/lang/String;)V

    .line 7646
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7647
    goto/16 :goto_168d

    .line 7638
    :pswitch_6ba
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$sendDeviceToDeviceMessage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7634
    :pswitch_6bf
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setCarrierSingleRegistrationEnabledOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7627
    :pswitch_6c4
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceSingleRegistrationEnabled()Z

    move-result p1

    .line 7628
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7629
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7630
    goto/16 :goto_168d

    .line 7619
    :pswitch_6d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 7620
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7621
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->setDeviceSingleRegistrationEnabledOverride(Ljava/lang/String;)V

    .line 7622
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7623
    goto/16 :goto_168d

    .line 7611
    :pswitch_6df
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getRcsSingleRegistrationTestModeEnabled()Z

    move-result p1

    .line 7612
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7613
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7614
    goto/16 :goto_168d

    .line 7603
    :pswitch_6eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 7604
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7605
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRcsSingleRegistrationTestModeEnabled(Z)V

    .line 7606
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7607
    goto/16 :goto_168d

    .line 7594
    :pswitch_6fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7595
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7596
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->triggerRcsReconfiguration(I)V

    .line 7597
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7598
    goto/16 :goto_168d

    .line 7589
    :pswitch_709
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$unregisterRcsProvisioningCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7585
    :pswitch_70e
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$registerRcsProvisioningCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7576
    :pswitch_713
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7577
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7578
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->isRcsVolteSingleRegistrationCapable(I)Z

    move-result p1

    .line 7579
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7580
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7581
    goto/16 :goto_168d

    .line 7571
    :pswitch_726
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setRcsClientConfiguration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7562
    :pswitch_72b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7563
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7564
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getGbaReleaseTime(I)I

    move-result p1

    .line 7565
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7566
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7567
    goto/16 :goto_168d

    .line 7557
    :pswitch_73e
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setGbaReleaseTimeOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7548
    :pswitch_743
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7549
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7550
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getBoundGbaService(I)Ljava/lang/String;

    move-result-object p1

    .line 7551
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7552
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7553
    goto/16 :goto_168d

    .line 7543
    :pswitch_756
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setBoundGbaServiceOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7539
    :pswitch_75b
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$bootstrapAuthenticationRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7535
    :pswitch_760
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$sendThermalMitigationRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7526
    :pswitch_765
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 7527
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7528
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioInterfaceCapabilitySupported(Ljava/lang/String;)Z

    move-result p1

    .line 7529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7530
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7531
    goto/16 :goto_168d

    .line 7516
    :pswitch_778
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7517
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7518
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->isNrDualConnectivityEnabled(I)Z

    move-result p1

    .line 7519
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7520
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7521
    goto/16 :goto_168d

    .line 7511
    :pswitch_78b
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setNrDualConnectivityState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7502
    :pswitch_790
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7503
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7504
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoNrEnabled(I)Z

    move-result p1

    .line 7505
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7506
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7507
    goto/16 :goto_168d

    .line 7497
    :pswitch_7a3
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setVoNrEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7493
    :pswitch_7a8
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getEquivalentHomePlmns$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7486
    :pswitch_7ad
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->canConnectTo5GInDsdsMode()Z

    move-result p1

    .line 7487
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7488
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7489
    goto/16 :goto_168d

    .line 7477
    :pswitch_7b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7478
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7479
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getManualNetworkSelectionPlmn(I)Ljava/lang/String;

    move-result-object p1

    .line 7480
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7481
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7482
    goto/16 :goto_168d

    .line 7471
    :pswitch_7cc
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->userActivity()V

    .line 7472
    goto/16 :goto_168d

    .line 7466
    :pswitch_7d1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->requestUserActivityNotification()V

    .line 7467
    goto/16 :goto_168d

    .line 7462
    :pswitch_7d6
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$changeIccLockPassword$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7458
    :pswitch_7db
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setIccLockEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7449
    :pswitch_7e0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7450
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7451
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->isIccLockEnabled(I)Z

    move-result p1

    .line 7452
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7453
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7454
    goto/16 :goto_168d

    .line 7444
    :pswitch_7f3
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$notifyRcsAutoConfigurationReceived$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7437
    :pswitch_7f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 7438
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7439
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->setCepEnabled(Z)V

    .line 7440
    goto/16 :goto_168d

    .line 7432
    :pswitch_804
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isMobileDataPolicyEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7428
    :pswitch_809
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setMobileDataPolicyEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7419
    :pswitch_80e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7420
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7421
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getMmsUAProfUrl(I)Ljava/lang/String;

    move-result-object p1

    .line 7422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7423
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7424
    goto/16 :goto_168d

    .line 7409
    :pswitch_821
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7410
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7411
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getMmsUserAgent(I)Ljava/lang/String;

    move-result-object p1

    .line 7412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7413
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7414
    goto/16 :goto_168d

    .line 7403
    :pswitch_834
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->showSwitchToManagedProfileDialog()V

    .line 7404
    goto/16 :goto_168d

    .line 7399
    :pswitch_839
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$enqueueSmsPickResult$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7395
    :pswitch_83e
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isMvnoMatched$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7386
    :pswitch_843
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7387
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7388
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getSystemSelectionChannels(I)Ljava/util/List;

    move-result-object p1

    .line 7389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7390
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 7391
    goto/16 :goto_168d

    .line 7381
    :pswitch_856
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setSystemSelectionChannels$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7377
    :pswitch_85b
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isApnMetered$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7373
    :pswitch_860
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isDataEnabledForApn$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7369
    :pswitch_865
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isModemEnabledForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7365
    :pswitch_86a
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isApplicationOnUicc$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7358
    :pswitch_86f
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCurrentPackageName()Ljava/lang/String;

    move-result-object p1

    .line 7359
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7360
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7361
    goto/16 :goto_168d

    .line 7349
    :pswitch_87b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7350
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7351
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getHalVersion(I)I

    move-result p1

    .line 7352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7353
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7354
    goto/16 :goto_168d

    .line 7341
    :pswitch_88e
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getRadioHalVersion()I

    move-result p1

    .line 7342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7343
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7344
    goto/16 :goto_168d

    .line 7332
    :pswitch_89a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 7333
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7334
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getSlotsMapping(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 7335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7336
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 7337
    goto/16 :goto_168d

    .line 7327
    :pswitch_8ad
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$doesSwitchMultiSimConfigTriggerReboot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7319
    :pswitch_8b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7320
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7321
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->switchMultiSimConfig(I)V

    .line 7322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7323
    goto/16 :goto_168d

    .line 7314
    :pswitch_8c1
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isMultiSimSupported$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7306
    :pswitch_8c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 7307
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7308
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->setMultiSimCarrierRestriction(Z)V

    .line 7309
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7310
    goto/16 :goto_168d

    .line 7301
    :pswitch_8d5
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$enableModemForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7295
    :pswitch_8da
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->resetOtaEmergencyNumberDbFilePath()V

    .line 7296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7297
    goto/16 :goto_168d

    .line 7287
    :pswitch_8e2
    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 7288
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7289
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->updateOtaEmergencyNumberDbFilePath(Landroid/os/ParcelFileDescriptor;)V

    .line 7290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7291
    goto/16 :goto_168d

    .line 7280
    :pswitch_8f5
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->notifyOtaEmergencyNumberDbInstalled()V

    .line 7281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7282
    goto/16 :goto_168d

    .line 7271
    :pswitch_8fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7272
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7273
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getEmergencyNumberDbVersion(I)I

    move-result p1

    .line 7274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7275
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7276
    goto/16 :goto_168d

    .line 7263
    :pswitch_910
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getEmergencyNumberListTestMode()Ljava/util/List;

    move-result-object p1

    .line 7264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7265
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 7266
    goto/16 :goto_168d

    .line 7259
    :pswitch_91c
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$updateEmergencyNumberListTestMode$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7253
    :pswitch_921
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->startEmergencyCallbackMode()V

    .line 7254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7255
    goto/16 :goto_168d

    .line 7249
    :pswitch_929
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setImsProvisioningString$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7245
    :pswitch_92e
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setImsProvisioningInt$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7241
    :pswitch_933
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getImsProvisioningString$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7237
    :pswitch_938
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getImsProvisioningInt$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7233
    :pswitch_93d
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setRcsProvisioningStatusForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7229
    :pswitch_942
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getRcsProvisioningStatusForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7225
    :pswitch_947
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getImsProvisioningStatusForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7221
    :pswitch_94c
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setImsProvisioningStatusForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7211
    :pswitch_951
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7213
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/telephony/ims/aidl/IFeatureProvisioningCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IFeatureProvisioningCallback;

    move-result-object p4

    .line 7214
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7215
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterFeatureProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IFeatureProvisioningCallback;)V

    .line 7216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7217
    goto/16 :goto_168d

    .line 7200
    :pswitch_968
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7202
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/telephony/ims/aidl/IFeatureProvisioningCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IFeatureProvisioningCallback;

    move-result-object p4

    .line 7203
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7204
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->registerFeatureProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IFeatureProvisioningCallback;)V

    .line 7205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7206
    goto/16 :goto_168d

    .line 7189
    :pswitch_97f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7191
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/telephony/ims/aidl/IImsConfigCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsConfigCallback;

    move-result-object p4

    .line 7192
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7193
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterImsProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IImsConfigCallback;)V

    .line 7194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7195
    goto/16 :goto_168d

    .line 7178
    :pswitch_996
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7180
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/telephony/ims/aidl/IImsConfigCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsConfigCallback;

    move-result-object p4

    .line 7181
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7182
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->registerImsProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IImsConfigCallback;)V

    .line 7183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7184
    goto/16 :goto_168d

    .line 7168
    :pswitch_9ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7169
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7170
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCertsFromCarrierPrivilegeAccessRules(I)Ljava/util/List;

    move-result-object p1

    .line 7171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7172
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 7173
    goto/16 :goto_168d

    .line 7156
    :pswitch_9c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 7158
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 7159
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7160
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->isEmergencyNumber(Ljava/lang/String;Z)Z

    move-result p1

    .line 7161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7162
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7163
    goto/16 :goto_168d

    .line 7144
    :pswitch_9d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 7146
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 7147
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7148
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->getEmergencyNumberList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 7149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7150
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 7151
    goto/16 :goto_168d

    .line 7134
    :pswitch_9ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7135
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7136
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->isTtyOverVolteEnabled(I)Z

    move-result p1

    .line 7137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7138
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7139
    goto/16 :goto_168d

    .line 7123
    :pswitch_a01
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7125
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 7126
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7127
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->setRttCapabilitySetting(IZ)V

    .line 7128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7129
    goto/16 :goto_168d

    .line 7112
    :pswitch_a14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 7115
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7116
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoWiFiRoamingModeSetting(II)V

    .line 7117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7118
    goto/16 :goto_168d

    .line 7102
    :pswitch_a27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7103
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7104
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoWiFiRoamingModeSetting(I)I

    move-result p1

    .line 7105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7106
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7107
    goto/16 :goto_168d

    .line 7091
    :pswitch_a3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7093
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 7094
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7095
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoWiFiModeSetting(II)V

    .line 7096
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7097
    goto/16 :goto_168d

    .line 7081
    :pswitch_a4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7082
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7083
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoWiFiModeSetting(I)I

    move-result p1

    .line 7084
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7085
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7086
    goto/16 :goto_168d

    .line 7076
    :pswitch_a60
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setVoWiFiNonPersistent$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7066
    :pswitch_a65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7068
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 7069
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7070
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoWiFiRoamingSettingEnabled(IZ)V

    .line 7071
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7072
    goto/16 :goto_168d

    .line 7056
    :pswitch_a78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7057
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7058
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoWiFiRoamingSettingEnabled(I)Z

    move-result p1

    .line 7059
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7060
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7061
    goto/16 :goto_168d

    .line 7045
    :pswitch_a8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7047
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 7048
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7049
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->setCrossSimCallingEnabled(IZ)V

    .line 7050
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7051
    goto/16 :goto_168d

    .line 7035
    :pswitch_a9e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7036
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7037
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->isCrossSimCallingEnabledByUser(I)Z

    move-result p1

    .line 7038
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7039
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7040
    goto/16 :goto_168d

    .line 7024
    :pswitch_ab1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7026
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 7027
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7028
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoWiFiSettingEnabled(IZ)V

    .line 7029
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7030
    goto/16 :goto_168d

    .line 7014
    :pswitch_ac4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7015
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7016
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoWiFiSettingEnabled(I)Z

    move-result p1

    .line 7017
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7018
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7019
    goto/16 :goto_168d

    .line 7003
    :pswitch_ad7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7005
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 7006
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7007
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->setVtSettingEnabled(IZ)V

    .line 7008
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7009
    goto/16 :goto_168d

    .line 6993
    :pswitch_aea
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6994
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6995
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->isVtSettingEnabled(I)Z

    move-result p1

    .line 6996
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6997
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6998
    goto/16 :goto_168d

    .line 6982
    :pswitch_afd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6984
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 6985
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6986
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->setAdvancedCallingSettingEnabled(IZ)V

    .line 6987
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6988
    goto/16 :goto_168d

    .line 6972
    :pswitch_b10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6973
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6974
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->isAdvancedCallingSettingEnabled(I)Z

    move-result p1

    .line 6975
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6976
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6977
    goto/16 :goto_168d

    .line 6967
    :pswitch_b23
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isMmTelCapabilitySupported$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6963
    :pswitch_b28
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isAvailable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6959
    :pswitch_b2d
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isCapable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6949
    :pswitch_b32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6951
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object p4

    .line 6952
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6953
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterMmTelCapabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 6954
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6955
    goto/16 :goto_168d

    .line 6938
    :pswitch_b49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6940
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object p4

    .line 6941
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6942
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->registerMmTelCapabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 6943
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6944
    goto/16 :goto_168d

    .line 6927
    :pswitch_b60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6929
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object p4

    .line 6930
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6931
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsMmTelRegistrationTransportType(ILcom/android/internal/telephony/IIntegerConsumer;)V

    .line 6932
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6933
    goto/16 :goto_168d

    .line 6916
    :pswitch_b77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6918
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object p4

    .line 6919
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6920
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsMmTelRegistrationState(ILcom/android/internal/telephony/IIntegerConsumer;)V

    .line 6921
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6922
    goto/16 :goto_168d

    .line 6905
    :pswitch_b8e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6907
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object p4

    .line 6908
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6909
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterImsEmergencyRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 6910
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6911
    goto/16 :goto_168d

    .line 6894
    :pswitch_ba5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6896
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object p4

    .line 6897
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6898
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->registerImsEmergencyRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 6899
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6900
    goto/16 :goto_168d

    .line 6883
    :pswitch_bbc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6885
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object p4

    .line 6886
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6887
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 6888
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6889
    goto/16 :goto_168d

    .line 6872
    :pswitch_bd3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6874
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object p4

    .line 6875
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6876
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->registerImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 6877
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6878
    goto/16 :goto_168d

    .line 6867
    :pswitch_bea
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getRadioPowerState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6860
    :pswitch_bef
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isInEmergencySmsMode()Z

    move-result p1

    .line 6861
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6862
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6863
    goto/16 :goto_168d

    .line 6851
    :pswitch_bfb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6852
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6853
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkSelectionMode(I)I

    move-result p1

    .line 6854
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6855
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6856
    goto/16 :goto_168d

    .line 6846
    :pswitch_c0e
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getNumberOfModemsWithSimultaneousDataConnections$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6838
    :pswitch_c13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6839
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6840
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->refreshUiccProfile(I)V

    .line 6841
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6842
    goto/16 :goto_168d

    .line 6828
    :pswitch_c22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6829
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6830
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierIdListVersion(I)I

    move-result p1

    .line 6831
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6832
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6833
    goto/16 :goto_168d

    .line 6823
    :pswitch_c35
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setCarrierServicePackageOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6819
    :pswitch_c3a
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setCarrierTestOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6809
    :pswitch_c3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6811
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 6812
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6813
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataRoamingEnabled(IZ)V

    .line 6814
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6815
    goto/16 :goto_168d

    .line 6799
    :pswitch_c52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6800
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6801
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataRoamingEnabled(I)Z

    move-result p1

    .line 6802
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6803
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6804
    goto/16 :goto_168d

    .line 6789
    :pswitch_c65
    sget-object p1, Landroid/telephony/UiccSlotMapping;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 6790
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6791
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->setSimSlotMapping(Ljava/util/List;)Z

    move-result p1

    .line 6792
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6793
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6794
    goto/16 :goto_168d

    .line 6779
    :pswitch_c7a
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 6780
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6781
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->switchSlots([I)Z

    move-result p1

    .line 6782
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6783
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6784
    goto/16 :goto_168d

    .line 6769
    :pswitch_c8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 6770
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6771
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getUiccSlotsInfo(Ljava/lang/String;)[Landroid/telephony/UiccSlotInfo;

    move-result-object p1

    .line 6772
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6773
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 6774
    goto/16 :goto_168d

    .line 6759
    :pswitch_ca0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 6760
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6761
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getUiccCardsInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 6762
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6763
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 6764
    goto/16 :goto_168d

    .line 6747
    :pswitch_cb3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6749
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 6750
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6751
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->getCardIdForDefaultEuicc(ILjava/lang/String;)I

    move-result p1

    .line 6752
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6753
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6754
    goto/16 :goto_168d

    .line 6737
    :pswitch_cca
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6738
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6739
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getSignalStrength(I)Landroid/telephony/SignalStrength;

    move-result-object p1

    .line 6740
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6741
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6742
    goto/16 :goto_168d

    .line 6727
    :pswitch_cdd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6728
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6729
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getEmergencyCallbackMode(I)Z

    move-result p1

    .line 6730
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6731
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6732
    goto/16 :goto_168d

    .line 6722
    :pswitch_cf0
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setForbiddenPlmns$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6718
    :pswitch_cf5
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getForbiddenPlmns$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6714
    :pswitch_cfa
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setSimPowerStateForSlotWithCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6704
    :pswitch_cff
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6706
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 6707
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6708
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->setSimPowerStateForSlot(II)V

    .line 6709
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6710
    goto/16 :goto_168d

    .line 6699
    :pswitch_d12
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getClientRequestStats$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6695
    :pswitch_d17
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setCallWaitingStatus$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6685
    :pswitch_d1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6687
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object p4

    .line 6688
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6689
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallWaitingStatus(ILcom/android/internal/telephony/IIntegerConsumer;)V

    .line 6690
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6691
    goto/16 :goto_168d

    .line 6680
    :pswitch_d33
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setCallForwarding$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6676
    :pswitch_d38
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getCallForwarding$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6668
    :pswitch_d3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6669
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6670
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->carrierActionResetAll(I)V

    .line 6671
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6672
    goto/16 :goto_168d

    .line 6657
    :pswitch_d4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6659
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 6660
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6661
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->carrierActionReportDefaultNetworkStatus(IZ)V

    .line 6662
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6663
    goto/16 :goto_168d

    .line 6646
    :pswitch_d5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6648
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 6649
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6650
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->carrierActionSetRadioEnabled(IZ)V

    .line 6651
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6652
    goto/16 :goto_168d

    .line 6641
    :pswitch_d72
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getCarrierIdFromMccMnc$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6632
    :pswitch_d77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6633
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6634
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubscriptionSpecificCarrierName(I)Ljava/lang/String;

    move-result-object p1

    .line 6635
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6636
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6637
    goto/16 :goto_168d

    .line 6622
    :pswitch_d8a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6623
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6624
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubscriptionSpecificCarrierId(I)I

    move-result p1

    .line 6625
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6626
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6627
    goto/16 :goto_168d

    .line 6612
    :pswitch_d9d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6613
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6614
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubscriptionCarrierName(I)Ljava/lang/String;

    move-result-object p1

    .line 6615
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6616
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6617
    goto/16 :goto_168d

    .line 6602
    :pswitch_db0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6603
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6604
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubscriptionCarrierId(I)I

    move-result p1

    .line 6605
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6606
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6607
    goto/16 :goto_168d

    .line 6594
    :pswitch_dc3
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllowedCarriers()Landroid/telephony/CarrierRestrictionRules;

    move-result-object p1

    .line 6595
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6596
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6597
    goto/16 :goto_168d

    .line 6585
    :pswitch_dcf
    sget-object p1, Landroid/telephony/CarrierRestrictionRules;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierRestrictionRules;

    .line 6586
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6587
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->setAllowedCarriers(Landroid/telephony/CarrierRestrictionRules;)I

    move-result p1

    .line 6588
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6589
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6590
    goto/16 :goto_168d

    .line 6577
    :pswitch_de6
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getTelephonyHistograms()Ljava/util/List;

    move-result-object p1

    .line 6578
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6579
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 6580
    goto/16 :goto_168d

    .line 6566
    :pswitch_df2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6568
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 6569
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6570
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->getAidForAppType(II)Ljava/lang/String;

    move-result-object p1

    .line 6571
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6572
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6573
    goto/16 :goto_168d

    .line 6558
    :pswitch_e09
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPackagesWithCarrierPrivilegesForAllPhones()Ljava/util/List;

    move-result-object p1

    .line 6559
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6560
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 6561
    goto/16 :goto_168d

    .line 6549
    :pswitch_e15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6550
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6551
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getPackagesWithCarrierPrivileges(I)Ljava/util/List;

    move-result-object p1

    .line 6552
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6553
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 6554
    goto/16 :goto_168d

    .line 6544
    :pswitch_e28
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setVoicemailVibrationEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6535
    :pswitch_e2d
    sget-object p1, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/PhoneAccountHandle;

    .line 6536
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6537
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoicemailVibrationEnabled(Landroid/telecom/PhoneAccountHandle;)Z

    move-result p1

    .line 6538
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6539
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6540
    goto/16 :goto_168d

    .line 6530
    :pswitch_e44
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setVoicemailRingtoneUri$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6521
    :pswitch_e49
    sget-object p1, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/PhoneAccountHandle;

    .line 6522
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6523
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoicemailRingtoneUri(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;

    move-result-object p1

    .line 6524
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6525
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6526
    goto/16 :goto_168d

    .line 6516
    :pswitch_e60
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getServiceStateForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6509
    :pswitch_e65
    sget-object p1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    .line 6510
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6511
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->requestModemActivityInfo(Landroid/os/ResultReceiver;)V

    .line 6512
    goto/16 :goto_168d

    .line 6499
    :pswitch_e75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6500
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6501
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimLocaleForSubscriber(I)Ljava/lang/String;

    move-result-object p1

    .line 6502
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6503
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6504
    goto/16 :goto_168d

    .line 6488
    :pswitch_e88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6490
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 6491
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6492
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->factoryReset(ILjava/lang/String;)V

    .line 6493
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6494
    goto/16 :goto_168d

    .line 6478
    :pswitch_e9b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6479
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6480
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getPhoneAccountHandleForSubscriptionId(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object p1

    .line 6481
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6482
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6483
    goto/16 :goto_168d

    .line 6473
    :pswitch_eae
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getSubIdForPhoneAccountHandle$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6469
    :pswitch_eb3
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getDeviceSoftwareVersionForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6460
    :pswitch_eb8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6461
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6462
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getTypeAllocationCodeForSlot(I)Ljava/lang/String;

    move-result-object p1

    .line 6463
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6464
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6465
    goto/16 :goto_168d

    .line 6448
    :pswitch_ecb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 6450
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 6451
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6452
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->getPrimaryImei(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6453
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6454
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6455
    goto/16 :goto_168d

    .line 6443
    :pswitch_ee2
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getImeiForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6432
    :pswitch_ee7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 6434
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 6435
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6436
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceIdWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6437
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6438
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6439
    goto/16 :goto_168d

    .line 6422
    :pswitch_efe
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 6423
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6424
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6425
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6426
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6427
    goto/16 :goto_168d

    .line 6412
    :pswitch_f11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6413
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6414
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsRegTechnologyForMmTel(I)I

    move-result p1

    .line 6415
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6416
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6417
    goto/16 :goto_168d

    .line 6402
    :pswitch_f24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6403
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6404
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->isVideoTelephonyAvailable(I)Z

    move-result p1

    .line 6405
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6406
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6407
    goto/16 :goto_168d

    .line 6392
    :pswitch_f37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6393
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6394
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->isWifiCallingAvailable(I)Z

    move-result p1

    .line 6395
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6396
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6397
    goto/16 :goto_168d

    .line 6382
    :pswitch_f4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6383
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6384
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->isImsRegistered(I)Z

    move-result p1

    .line 6385
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6386
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6387
    goto/16 :goto_168d

    .line 6374
    :pswitch_f5d
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isHearingAidCompatibilitySupported()Z

    move-result p1

    .line 6375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6376
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6377
    goto/16 :goto_168d

    .line 6365
    :pswitch_f69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6366
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6367
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->isRttSupported(I)Z

    move-result p1

    .line 6368
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6369
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6370
    goto/16 :goto_168d

    .line 6357
    :pswitch_f7c
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isTtyModeSupported()Z

    move-result p1

    .line 6358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6359
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6360
    goto/16 :goto_168d

    .line 6353
    :pswitch_f88
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isWorldPhone$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6349
    :pswitch_f8d
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$canChangeDtmfToneLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6338
    :pswitch_f92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 6340
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 6341
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6342
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->isVideoCallingEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 6343
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6344
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6345
    goto/16 :goto_168d

    .line 6329
    :pswitch_fa9
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 6330
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6331
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->enableVideoCalling(Z)V

    .line 6332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6333
    goto/16 :goto_168d

    .line 6324
    :pswitch_fb8
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$uploadCallComposerPicture$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6313
    :pswitch_fbd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6315
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 6316
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6317
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->getRadioAccessFamily(ILjava/lang/String;)I

    move-result p1

    .line 6318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6319
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6320
    goto/16 :goto_168d

    .line 6306
    :pswitch_fd4
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->shutdownMobileRadios()V

    .line 6307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6308
    goto/16 :goto_168d

    .line 6299
    :pswitch_fdc
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needMobileRadioShutdown()Z

    move-result p1

    .line 6300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6301
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6302
    goto/16 :goto_168d

    .line 6295
    :pswitch_fe8
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setRoamingOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6284
    :pswitch_fed
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6286
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 6287
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6288
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->setOperatorBrandOverride(ILjava/lang/String;)Z

    move-result p1

    .line 6289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6290
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6291
    goto/16 :goto_168d

    .line 6272
    :pswitch_1004
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6274
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 6275
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6276
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->getMergedImsisFromGroup(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 6277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6278
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 6279
    goto/16 :goto_168d

    .line 6267
    :pswitch_101b
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getMergedSubscriberIds$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6263
    :pswitch_1020
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getLine1AlphaTagForDisplay$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6259
    :pswitch_1025
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getLine1NumberForDisplay$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6255
    :pswitch_102a
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setLine1NumberForDisplayForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6244
    :pswitch_102f
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 6246
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 6247
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6248
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 6249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6250
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 6251
    goto/16 :goto_168d

    .line 6234
    :pswitch_104a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 6235
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6236
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result p1

    .line 6237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6238
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6239
    goto/16 :goto_168d

    .line 6222
    :pswitch_105d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6224
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 6225
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6226
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->checkCarrierPrivilegesForPackage(ILjava/lang/String;)I

    move-result p1

    .line 6227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6228
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6229
    goto/16 :goto_168d

    .line 6210
    :pswitch_1074
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 6213
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6214
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierPrivilegeStatusForUid(II)I

    move-result p1

    .line 6215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6216
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6217
    goto/16 :goto_168d

    .line 6200
    :pswitch_108b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6201
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6202
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierPrivilegeStatus(I)I

    move-result p1

    .line 6203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6204
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6205
    goto/16 :goto_168d

    .line 6195
    :pswitch_109e
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$requestNumberVerification$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6187
    :pswitch_10a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 6188
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6189
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->setImsRegistrationState(Z)V

    .line 6190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6191
    goto/16 :goto_168d

    .line 6177
    :pswitch_10b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6178
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6179
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->isManualNetworkSelectionAllowed(I)Z

    move-result p1

    .line 6180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6181
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6182
    goto/16 :goto_168d

    .line 6165
    :pswitch_10c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 6168
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6169
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataEnabledForReason(II)Z

    move-result p1

    .line 6170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6171
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6172
    goto/16 :goto_168d

    .line 6160
    :pswitch_10dc
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setDataEnabledForReason$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6151
    :pswitch_10e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6152
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6153
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataEnabled(I)Z

    move-result p1

    .line 6154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6155
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6156
    goto/16 :goto_168d

    .line 6141
    :pswitch_10f4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6142
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6143
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->isUserDataEnabled(I)Z

    move-result p1

    .line 6144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6145
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6146
    goto/16 :goto_168d

    .line 6131
    :pswitch_1107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6132
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6133
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataEnabled(I)Z

    move-result p1

    .line 6134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6135
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6136
    goto/16 :goto_168d

    .line 6126
    :pswitch_111a
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setAllowedNetworkTypesForReason$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6115
    :pswitch_111f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 6118
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6119
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllowedNetworkTypesForReason(II)J

    move-result-wide p1

    .line 6120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6121
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 6122
    goto/16 :goto_168d

    .line 6110
    :pswitch_1136
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setNetworkSelectionModeManual$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6100
    :pswitch_113b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 6103
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6104
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->stopNetworkScan(II)V

    .line 6105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6106
    goto/16 :goto_168d

    .line 6095
    :pswitch_114e
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$requestNetworkScan$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6091
    :pswitch_1153
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getCellNetworkScanResults$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6083
    :pswitch_1158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6084
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6085
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 6086
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6087
    goto/16 :goto_168d

    .line 6072
    :pswitch_1167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6074
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object p4

    .line 6075
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6076
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsMmTelFeatureState(ILcom/android/internal/telephony/IIntegerConsumer;)V

    .line 6077
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6078
    goto/16 :goto_168d

    .line 6067
    :pswitch_117e
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getBoundImsServicePackage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6058
    :pswitch_1183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6059
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6060
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->clearCarrierImsServiceOverride(I)Z

    move-result p1

    .line 6061
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6062
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6063
    goto/16 :goto_168d

    .line 6053
    :pswitch_1196
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setBoundImsServiceOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6042
    :pswitch_119b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6044
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 6045
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6046
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsConfig(II)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object p1

    .line 6047
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6048
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6049
    goto/16 :goto_168d

    .line 6030
    :pswitch_11b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6032
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 6033
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6034
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object p1

    .line 6035
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6036
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6037
    goto/16 :goto_168d

    .line 6021
    :pswitch_11c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceFeatureCallback;

    move-result-object p1

    .line 6022
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6023
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterImsFeatureCallback(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V

    .line 6024
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6025
    goto/16 :goto_168d

    .line 6010
    :pswitch_11dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6012
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceFeatureCallback;

    move-result-object p4

    .line 6013
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6014
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->registerMmTelFeatureCallback(ILcom/android/ims/internal/IImsServiceFeatureCallback;)V

    .line 6015
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6016
    goto/16 :goto_168d

    .line 6001
    :pswitch_11f3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6002
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6003
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->resetIms(I)V

    .line 6004
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6005
    goto/16 :goto_168d

    .line 5992
    :pswitch_1202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5993
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5994
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->disableIms(I)V

    .line 5995
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5996
    goto/16 :goto_168d

    .line 5983
    :pswitch_1211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5984
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5985
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->enableIms(I)V

    .line 5986
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5987
    goto/16 :goto_168d

    .line 5973
    :pswitch_1220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5974
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5975
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->isTetheringApnRequiredForSubscriber(I)Z

    move-result p1

    .line 5976
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5977
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5978
    goto/16 :goto_168d

    .line 5963
    :pswitch_1233
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5964
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5965
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllowedNetworkTypesBitmask(I)I

    move-result p1

    .line 5966
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5967
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5968
    goto/16 :goto_168d

    .line 5953
    :pswitch_1246
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5954
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5955
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->rebootModem(I)Z

    move-result p1

    .line 5956
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5957
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5958
    goto/16 :goto_168d

    .line 5943
    :pswitch_1259
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5944
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5945
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->resetModemConfig(I)Z

    move-result p1

    .line 5946
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5947
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5948
    goto/16 :goto_168d

    .line 5931
    :pswitch_126c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5933
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 5934
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5935
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5936
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5937
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5938
    goto/16 :goto_168d

    .line 5926
    :pswitch_1283
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$iccExchangeSimIO$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5922
    :pswitch_1288
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$iccTransmitApduBasicChannel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5918
    :pswitch_128d
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$iccTransmitApduBasicChannelByPort$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5914
    :pswitch_1292
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$iccTransmitApduLogicalChannel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5910
    :pswitch_1297
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$iccTransmitApduLogicalChannelByPort$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5901
    :pswitch_129c
    sget-object p1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/IccLogicalChannelRequest;

    .line 5902
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5903
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->iccCloseLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Z

    move-result p1

    .line 5904
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5905
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5906
    goto/16 :goto_168d

    .line 5891
    :pswitch_12b3
    sget-object p1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/IccLogicalChannelRequest;

    .line 5892
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5893
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->iccOpenLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object p1

    .line 5894
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5895
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5896
    goto/16 :goto_168d

    .line 5880
    :pswitch_12ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5882
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 5883
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5884
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->setCellInfoListRate(II)V

    .line 5885
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5886
    goto/16 :goto_168d

    .line 5875
    :pswitch_12dd
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$requestCellInfoUpdateWithWorkSource$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5871
    :pswitch_12e2
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$requestCellInfoUpdate$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5860
    :pswitch_12e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5862
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 5863
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5864
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllCellInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 5865
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5866
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 5867
    goto/16 :goto_168d

    .line 5850
    :pswitch_12fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5851
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5852
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCardUsingSlotIndex(I)Z

    move-result p1

    .line 5853
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5854
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5855
    goto/16 :goto_168d

    .line 5842
    :pswitch_1311
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCard()Z

    move-result p1

    .line 5843
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5844
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5845
    goto/16 :goto_168d

    .line 5838
    :pswitch_131d
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getVoiceNetworkTypeForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5834
    :pswitch_1322
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getDataNetworkTypeForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5823
    :pswitch_1327
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5825
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 5826
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5827
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkType(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 5828
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5829
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5830
    goto/16 :goto_168d

    .line 5818
    :pswitch_133e
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getNetworkTypeForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5808
    :pswitch_1343
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5810
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 5811
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5812
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->sendDialerSpecialCode(Ljava/lang/String;Ljava/lang/String;)V

    .line 5813
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5814
    goto/16 :goto_168d

    .line 5803
    :pswitch_1356
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$sendVisualVoicemailSmsForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5794
    :pswitch_135b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5795
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5796
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getActiveVisualVoicemailSmsFilterSettings(I)Landroid/telephony/VisualVoicemailSmsFilterSettings;

    move-result-object p1

    .line 5797
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5798
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5799
    goto/16 :goto_168d

    .line 5782
    :pswitch_136e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5784
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 5785
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5786
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->getVisualVoicemailSmsFilterSettings(Ljava/lang/String;I)Landroid/telephony/VisualVoicemailSmsFilterSettings;

    move-result-object p1

    .line 5787
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5788
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5789
    goto/16 :goto_168d

    .line 5772
    :pswitch_1385
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5774
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 5775
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5776
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->disableVisualVoicemailSmsFilter(Ljava/lang/String;I)V

    .line 5777
    goto/16 :goto_168d

    .line 5767
    :pswitch_1395
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$enableVisualVoicemailSmsFilter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5763
    :pswitch_139a
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getVisualVoicemailPackageName$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5752
    :pswitch_139f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5754
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 5755
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5756
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->getVisualVoicemailSettings(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p1

    .line 5757
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5758
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5759
    goto/16 :goto_168d

    .line 5742
    :pswitch_13b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5743
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5744
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->isConcurrentVoiceAndDataAllowed(I)Z

    move-result p1

    .line 5745
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5746
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5747
    goto/16 :goto_168d

    .line 5737
    :pswitch_13c9
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getVoiceMessageCountForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5726
    :pswitch_13ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5728
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 5729
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5730
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivationState(ILjava/lang/String;)I

    move-result p1

    .line 5731
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5732
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5733
    goto/16 :goto_168d

    .line 5714
    :pswitch_13e5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5716
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 5717
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5718
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceActivationState(ILjava/lang/String;)I

    move-result p1

    .line 5719
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5720
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5721
    goto/16 :goto_168d

    .line 5703
    :pswitch_13fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5705
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 5706
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5707
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataActivationState(II)V

    .line 5708
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5709
    goto/16 :goto_168d

    .line 5692
    :pswitch_140f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5694
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 5695
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5696
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoiceActivationState(II)V

    .line 5697
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5698
    goto/16 :goto_168d

    .line 5687
    :pswitch_1422
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setVoiceMailNumber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5678
    :pswitch_1427
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5679
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5680
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataStateForSubId(I)I

    move-result p1

    .line 5681
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5682
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5683
    goto/16 :goto_168d

    .line 5670
    :pswitch_143a
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataState()I

    move-result p1

    .line 5671
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5672
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5673
    goto/16 :goto_168d

    .line 5661
    :pswitch_1446
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5662
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5663
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivityForSubId(I)I

    move-result p1

    .line 5664
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5665
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5666
    goto/16 :goto_168d

    .line 5653
    :pswitch_1459
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivity()I

    move-result p1

    .line 5654
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5655
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5656
    goto/16 :goto_168d

    .line 5649
    :pswitch_1465
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getCallStateForSubscription$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5642
    :pswitch_146a
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallState()I

    move-result p1

    .line 5643
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5644
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5645
    goto/16 :goto_168d

    .line 5631
    :pswitch_1476
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5633
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 5634
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5635
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->getNeighboringCellInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 5636
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5637
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 5638
    goto/16 :goto_168d

    .line 5621
    :pswitch_148d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5622
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5623
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object p1

    .line 5624
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5625
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5626
    goto/16 :goto_168d

    .line 5609
    :pswitch_14a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5611
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 5612
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5613
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocation(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;

    move-result-object p1

    .line 5614
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5615
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5616
    goto/16 :goto_168d

    .line 5599
    :pswitch_14b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5600
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5601
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataConnectivityPossible(I)Z

    move-result p1

    .line 5602
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5603
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5604
    goto/16 :goto_168d

    .line 5589
    :pswitch_14ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5590
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5591
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDataConnectivity(Ljava/lang/String;)Z

    move-result p1

    .line 5592
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5593
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5594
    goto/16 :goto_168d

    .line 5579
    :pswitch_14dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5580
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5581
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDataConnectivity(Ljava/lang/String;)Z

    move-result p1

    .line 5582
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5583
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5584
    goto/16 :goto_168d

    .line 5572
    :pswitch_14f0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdates()V

    .line 5573
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5574
    goto/16 :goto_168d

    .line 5566
    :pswitch_14f8
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdates()V

    .line 5567
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5568
    goto/16 :goto_168d

    .line 5558
    :pswitch_1500
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5559
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5560
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocationWithPackageName(Ljava/lang/String;)V

    .line 5561
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5562
    goto/16 :goto_168d

    .line 5551
    :pswitch_150f
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocation()V

    .line 5552
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5553
    goto/16 :goto_168d

    .line 5547
    :pswitch_1517
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getRadioPowerOffReasons$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5536
    :pswitch_151c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5538
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 5539
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5540
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->clearRadioPowerOffForReason(II)Z

    move-result p1

    .line 5541
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5542
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5543
    goto/16 :goto_168d

    .line 5524
    :pswitch_1533
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5526
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 5527
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5528
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->requestRadioPowerOffForReason(II)Z

    move-result p1

    .line 5529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5530
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5531
    goto/16 :goto_168d

    .line 5514
    :pswitch_154a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 5515
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5516
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioPower(Z)Z

    move-result p1

    .line 5517
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5518
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5519
    goto/16 :goto_168d

    .line 5502
    :pswitch_155d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5504
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 5505
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5506
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioForSubscriber(IZ)Z

    move-result p1

    .line 5507
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5508
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5509
    goto/16 :goto_168d

    .line 5492
    :pswitch_1574
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 5493
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5494
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadio(Z)Z

    move-result p1

    .line 5495
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5496
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5497
    goto/16 :goto_168d

    .line 5483
    :pswitch_1587
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5484
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5485
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOffForSubscriber(I)V

    .line 5486
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5487
    goto/16 :goto_168d

    .line 5476
    :pswitch_1596
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOff()V

    .line 5477
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5478
    goto/16 :goto_168d

    .line 5465
    :pswitch_159e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5467
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 5468
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5469
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmiForSubscriber(ILjava/lang/String;)Z

    move-result p1

    .line 5470
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5471
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5472
    goto/16 :goto_168d

    .line 5460
    :pswitch_15b5
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$handleUssdRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5451
    :pswitch_15ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5452
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5453
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmi(Ljava/lang/String;)Z

    move-result p1

    .line 5454
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5455
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5456
    goto/16 :goto_168d

    .line 5446
    :pswitch_15cd
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$supplyPukReportResultForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5435
    :pswitch_15d2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5437
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 5438
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5439
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    move-result-object p1

    .line 5440
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5441
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 5442
    goto/16 :goto_168d

    .line 5430
    :pswitch_15e9
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$supplyPukForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5419
    :pswitch_15ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5421
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 5422
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5423
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinForSubscriber(ILjava/lang/String;)Z

    move-result p1

    .line 5424
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5425
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5426
    goto/16 :goto_168d

    .line 5409
    :pswitch_1605
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5410
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5411
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallComposerStatus(I)I

    move-result p1

    .line 5412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5413
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5414
    goto/16 :goto_168d

    .line 5398
    :pswitch_1618
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5400
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 5401
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5402
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->setCallComposerStatus(II)V

    .line 5403
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5404
    goto :goto_168d

    .line 5393
    :pswitch_162a
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isRadioOnForSubscriberWithFeature$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5382
    :pswitch_162f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5384
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 5385
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5386
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOnForSubscriber(ILjava/lang/String;)Z

    move-result p1

    .line 5387
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5388
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5389
    goto :goto_168d

    .line 5370
    :pswitch_1645
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5372
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 5373
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5374
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOnWithFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 5375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5376
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5377
    goto :goto_168d

    .line 5360
    :pswitch_165b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5361
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5362
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOn(Ljava/lang/String;)Z

    move-result p1

    .line 5363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5364
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5365
    goto :goto_168d

    .line 5349
    :pswitch_166d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5351
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 5352
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5353
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ITelephony$Stub;->call(Ljava/lang/String;Ljava/lang/String;)V

    .line 5354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5355
    goto :goto_168d

    .line 5340
    :pswitch_167f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5341
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5342
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ITelephony$Stub;->dial(Ljava/lang/String;)V

    .line 5343
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5344
    nop

    .line 8579
    :goto_168d
    return v1

    :pswitch_data_168e
    .packed-switch 0x1
        :pswitch_167f
        :pswitch_166d
        :pswitch_165b
        :pswitch_1645
        :pswitch_162f
        :pswitch_162a
        :pswitch_1618
        :pswitch_1605
        :pswitch_15ee
        :pswitch_15e9
        :pswitch_15d2
        :pswitch_15cd
        :pswitch_15ba
        :pswitch_15b5
        :pswitch_159e
        :pswitch_1596
        :pswitch_1587
        :pswitch_1574
        :pswitch_155d
        :pswitch_154a
        :pswitch_1533
        :pswitch_151c
        :pswitch_1517
        :pswitch_150f
        :pswitch_1500
        :pswitch_14f8
        :pswitch_14f0
        :pswitch_14dd
        :pswitch_14ca
        :pswitch_14b7
        :pswitch_14a0
        :pswitch_148d
        :pswitch_1476
        :pswitch_146a
        :pswitch_1465
        :pswitch_1459
        :pswitch_1446
        :pswitch_143a
        :pswitch_1427
        :pswitch_1422
        :pswitch_140f
        :pswitch_13fc
        :pswitch_13e5
        :pswitch_13ce
        :pswitch_13c9
        :pswitch_13b6
        :pswitch_139f
        :pswitch_139a
        :pswitch_1395
        :pswitch_1385
        :pswitch_136e
        :pswitch_135b
        :pswitch_1356
        :pswitch_1343
        :pswitch_133e
        :pswitch_1327
        :pswitch_1322
        :pswitch_131d
        :pswitch_1311
        :pswitch_12fe
        :pswitch_12e7
        :pswitch_12e2
        :pswitch_12dd
        :pswitch_12ca
        :pswitch_12b3
        :pswitch_129c
        :pswitch_1297
        :pswitch_1292
        :pswitch_128d
        :pswitch_1288
        :pswitch_1283
        :pswitch_126c
        :pswitch_1259
        :pswitch_1246
        :pswitch_1233
        :pswitch_1220
        :pswitch_1211
        :pswitch_1202
        :pswitch_11f3
        :pswitch_11dc
        :pswitch_11c9
        :pswitch_11b2
        :pswitch_119b
        :pswitch_1196
        :pswitch_1183
        :pswitch_117e
        :pswitch_1167
        :pswitch_1158
        :pswitch_1153
        :pswitch_114e
        :pswitch_113b
        :pswitch_1136
        :pswitch_111f
        :pswitch_111a
        :pswitch_1107
        :pswitch_10f4
        :pswitch_10e1
        :pswitch_10dc
        :pswitch_10c5
        :pswitch_10b2
        :pswitch_10a3
        :pswitch_109e
        :pswitch_108b
        :pswitch_1074
        :pswitch_105d
        :pswitch_104a
        :pswitch_102f
        :pswitch_102a
        :pswitch_1025
        :pswitch_1020
        :pswitch_101b
        :pswitch_1004
        :pswitch_fed
        :pswitch_fe8
        :pswitch_fdc
        :pswitch_fd4
        :pswitch_fbd
        :pswitch_fb8
        :pswitch_fa9
        :pswitch_f92
        :pswitch_f8d
        :pswitch_f88
        :pswitch_f7c
        :pswitch_f69
        :pswitch_f5d
        :pswitch_f4a
        :pswitch_f37
        :pswitch_f24
        :pswitch_f11
        :pswitch_efe
        :pswitch_ee7
        :pswitch_ee2
        :pswitch_ecb
        :pswitch_eb8
        :pswitch_eb3
        :pswitch_eae
        :pswitch_e9b
        :pswitch_e88
        :pswitch_e75
        :pswitch_e65
        :pswitch_e60
        :pswitch_e49
        :pswitch_e44
        :pswitch_e2d
        :pswitch_e28
        :pswitch_e15
        :pswitch_e09
        :pswitch_df2
        :pswitch_de6
        :pswitch_dcf
        :pswitch_dc3
        :pswitch_db0
        :pswitch_d9d
        :pswitch_d8a
        :pswitch_d77
        :pswitch_d72
        :pswitch_d5f
        :pswitch_d4c
        :pswitch_d3d
        :pswitch_d38
        :pswitch_d33
        :pswitch_d1c
        :pswitch_d17
        :pswitch_d12
        :pswitch_cff
        :pswitch_cfa
        :pswitch_cf5
        :pswitch_cf0
        :pswitch_cdd
        :pswitch_cca
        :pswitch_cb3
        :pswitch_ca0
        :pswitch_c8d
        :pswitch_c7a
        :pswitch_c65
        :pswitch_c52
        :pswitch_c3f
        :pswitch_c3a
        :pswitch_c35
        :pswitch_c22
        :pswitch_c13
        :pswitch_c0e
        :pswitch_bfb
        :pswitch_bef
        :pswitch_bea
        :pswitch_bd3
        :pswitch_bbc
        :pswitch_ba5
        :pswitch_b8e
        :pswitch_b77
        :pswitch_b60
        :pswitch_b49
        :pswitch_b32
        :pswitch_b2d
        :pswitch_b28
        :pswitch_b23
        :pswitch_b10
        :pswitch_afd
        :pswitch_aea
        :pswitch_ad7
        :pswitch_ac4
        :pswitch_ab1
        :pswitch_a9e
        :pswitch_a8b
        :pswitch_a78
        :pswitch_a65
        :pswitch_a60
        :pswitch_a4d
        :pswitch_a3a
        :pswitch_a27
        :pswitch_a14
        :pswitch_a01
        :pswitch_9ee
        :pswitch_9d7
        :pswitch_9c0
        :pswitch_9ad
        :pswitch_996
        :pswitch_97f
        :pswitch_968
        :pswitch_951
        :pswitch_94c
        :pswitch_947
        :pswitch_942
        :pswitch_93d
        :pswitch_938
        :pswitch_933
        :pswitch_92e
        :pswitch_929
        :pswitch_921
        :pswitch_91c
        :pswitch_910
        :pswitch_8fd
        :pswitch_8f5
        :pswitch_8e2
        :pswitch_8da
        :pswitch_8d5
        :pswitch_8c6
        :pswitch_8c1
        :pswitch_8b2
        :pswitch_8ad
        :pswitch_89a
        :pswitch_88e
        :pswitch_87b
        :pswitch_86f
        :pswitch_86a
        :pswitch_865
        :pswitch_860
        :pswitch_85b
        :pswitch_856
        :pswitch_843
        :pswitch_83e
        :pswitch_839
        :pswitch_834
        :pswitch_821
        :pswitch_80e
        :pswitch_809
        :pswitch_804
        :pswitch_7f8
        :pswitch_7f3
        :pswitch_7e0
        :pswitch_7db
        :pswitch_7d6
        :pswitch_7d1
        :pswitch_7cc
        :pswitch_7b9
        :pswitch_7ad
        :pswitch_7a8
        :pswitch_7a3
        :pswitch_790
        :pswitch_78b
        :pswitch_778
        :pswitch_765
        :pswitch_760
        :pswitch_75b
        :pswitch_756
        :pswitch_743
        :pswitch_73e
        :pswitch_72b
        :pswitch_726
        :pswitch_713
        :pswitch_70e
        :pswitch_709
        :pswitch_6fa
        :pswitch_6eb
        :pswitch_6df
        :pswitch_6d0
        :pswitch_6c4
        :pswitch_6bf
        :pswitch_6ba
        :pswitch_6ab
        :pswitch_69c
        :pswitch_689
        :pswitch_684
        :pswitch_671
        :pswitch_665
        :pswitch_660
        :pswitch_64d
        :pswitch_63a
        :pswitch_62e
        :pswitch_61f
        :pswitch_61a
        :pswitch_615
        :pswitch_602
        :pswitch_5ef
        :pswitch_5dc
        :pswitch_5c9
        :pswitch_5c4
        :pswitch_5bf
        :pswitch_5ba
        :pswitch_5ae
        :pswitch_5a2
        :pswitch_58f
        :pswitch_58a
        :pswitch_585
        :pswitch_580
        :pswitch_56d
        :pswitch_568
        :pswitch_555
        :pswitch_549
        :pswitch_544
        :pswitch_53f
        :pswitch_53a
        :pswitch_527
        :pswitch_522
        :pswitch_50f
        :pswitch_50a
        :pswitch_4f7
        :pswitch_4f2
        :pswitch_4e3
        :pswitch_4d7
        :pswitch_4c4
        :pswitch_4bf
        :pswitch_4b3
        :pswitch_4ae
        :pswitch_4a9
        :pswitch_496
        :pswitch_483
        :pswitch_470
        :pswitch_45d
        :pswitch_44a
        :pswitch_445
        :pswitch_440
        :pswitch_43b
        :pswitch_436
        :pswitch_41f
        :pswitch_40c
        :pswitch_3f9
        :pswitch_3e2
        :pswitch_3cf
        :pswitch_3b8
        :pswitch_3a5
        :pswitch_392
        :pswitch_38d
        :pswitch_381
        :pswitch_36e
        :pswitch_35b
        :pswitch_356
        :pswitch_343
        :pswitch_330
        :pswitch_31d
        :pswitch_306
        :pswitch_2f3
        :pswitch_2e4
        :pswitch_2d1
        :pswitch_2cc
        :pswitch_2b9
        :pswitch_2a6
        :pswitch_293
        :pswitch_28e
        :pswitch_289
        :pswitch_284
        :pswitch_27f
        :pswitch_27a
        :pswitch_275
        :pswitch_270
        :pswitch_26b
        :pswitch_266
        :pswitch_261
        :pswitch_25c
        :pswitch_257
        :pswitch_252
        :pswitch_24d
        :pswitch_23a
        :pswitch_227
        :pswitch_214
        :pswitch_201
        :pswitch_1ea
        :pswitch_1d7
        :pswitch_1c4
        :pswitch_1ad
        :pswitch_1a1
        :pswitch_195
        :pswitch_186
        :pswitch_17a
        :pswitch_16b
        :pswitch_15f
        :pswitch_14c
        :pswitch_135
        :pswitch_122
        :pswitch_11d
        :pswitch_118
        :pswitch_113
        :pswitch_100
        :pswitch_fb
        :pswitch_f6
        :pswitch_e3
        :pswitch_de
        :pswitch_cb
        :pswitch_b8
        :pswitch_b3
        :pswitch_a0
        :pswitch_8d
        :pswitch_81
        :pswitch_7c
        :pswitch_77
        :pswitch_68
        :pswitch_51
        :pswitch_45
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method
