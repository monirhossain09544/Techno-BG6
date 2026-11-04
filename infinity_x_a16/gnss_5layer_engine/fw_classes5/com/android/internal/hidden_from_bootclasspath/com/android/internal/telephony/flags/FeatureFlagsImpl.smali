.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addImsRedialCodesForEmergencyCalls()Z
    .registers 2

    .line 9
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist addRatRelatedSuggestedActionToImsRegistration()Z
    .registers 2

    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist allowMultiCountryMcc()Z
    .registers 2

    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist allowedServices()Z
    .registers 2

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist astSkyloFallback()Z
    .registers 2

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist carrierEnabledSatelliteFlag()Z
    .registers 2

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist carrierIdFromCarrierIdentifier()Z
    .registers 2

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist carrierRestrictionStatus()Z
    .registers 2

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist carrierRoamingNbIotNtn()Z
    .registers 2

    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist catServiceCreationFix()Z
    .registers 2

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist cellIdentityForBarringInfo()Z
    .registers 2

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist cellularIdentifierDisclosureIndications()Z
    .registers 2

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist cleanupCarrierAppUpdateEnabledStateLogic()Z
    .registers 2

    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist clearCachedImsPhoneNumberWhenDeviceLostImsRegistration()Z
    .registers 2

    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist conferenceHoldUnholdChangedToSendMessage()Z
    .registers 2

    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist dataOnlyCellularService()Z
    .registers 2

    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist dataServiceCheck()Z
    .registers 2

    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist dataServiceNotifyImsDataNetwork()Z
    .registers 2

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dataServiceUserDataToggleNotify()Z
    .registers 2

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist delayPhoneAccountRegistration()Z
    .registers 2

    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist deleteCdma()Z
    .registers 2

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist domainSelectionMetricsEnabled()Z
    .registers 2

    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist duplexModeForNgran()Z
    .registers 2

    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dynamicDoNotAskAgainText()Z
    .registers 2

    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist dynamicModemShutdown()Z
    .registers 2

    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist emergencyCallbackModeNotification()Z
    .registers 2

    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist emergencyRegistrationState()Z
    .registers 2

    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableAeadAlgorithms()Z
    .registers 2

    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableMultipleSaProposals()Z
    .registers 2

    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableOemLogSourcesCollection()Z
    .registers 2

    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enablePhoneNumberParsingApi()Z
    .registers 2

    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableRttHoldCarrierConfig()Z
    .registers 2

    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableWpsCheckApiFlag()Z
    .registers 2

    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enforceSubscriptionUserFilter()Z
    .registers 2

    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist esimAvailableMemory()Z
    .registers 2

    .line 247
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist esimBootstrapProvisioningFlag()Z
    .registers 2

    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist geofenceEnhancementForBetterUx()Z
    .registers 2

    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hangupActiveCallBasedOnEmergencyCallDomain()Z
    .registers 2

    .line 268
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist hidePrefer3gItem()Z
    .registers 2

    .line 275
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist ignoreInitialDataStallRecovered()Z
    .registers 2

    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist ignoreStateDetailsUpdateForDomainReselection()Z
    .registers 2

    .line 289
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist imsResolverUserAware()Z
    .registers 2

    .line 296
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist inactiveDataNetworkIsNotStalled()Z
    .registers 2

    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist incallHandoverPolicy()Z
    .registers 2

    .line 310
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist keepWfcOnApm()Z
    .registers 2

    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist limitRawTableVisibility()Z
    .registers 2

    .line 324
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist logCallsAnsweredElsewhere()Z
    .registers 2

    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist logMmsSmsDatabaseAccessInfo()Z
    .registers 2

    .line 338
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist macroBasedOpportunisticNetworks()Z
    .registers 2

    .line 345
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist minimalTelephonyCdmCheckBoardApiLevel()Z
    .registers 2

    .line 352
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist mmsDisabledError()Z
    .registers 2

    .line 359
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist monitorCarrierConfigChangeForAutoDataSwitch()Z
    .registers 2

    .line 366
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist nationalCountryCodeFormattingForLocalCalls()Z
    .registers 2

    .line 373
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist networkRegistrationInfoRejectCause()Z
    .registers 2

    .line 380
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist networkValidation()Z
    .registers 2

    .line 387
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist oemEnabledSatelliteFlag()Z
    .registers 2

    .line 394
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist oemEnabledSatellitePhase2()Z
    .registers 2

    .line 401
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onsThreadConsolidation()Z
    .registers 2

    .line 408
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist optimizationApduSender()Z
    .registers 2

    .line 415
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist passCopiedCallStateList()Z
    .registers 2

    .line 422
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist pcscfAddress()Z
    .registers 2

    .line 429
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist performCrossStackRedialCheckForEmergencyCall()Z
    .registers 2

    .line 436
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist powerDownRaceFix()Z
    .registers 2

    .line 443
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist preventSystemServerAndPhoneDeadlock()Z
    .registers 2

    .line 450
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist redactOtpSms()Z
    .registers 2

    .line 457
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist redactOtpSmsApi()Z
    .registers 2

    .line 464
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist remapDisconnectCauseSipRequestCancelled()Z
    .registers 2

    .line 471
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist removeCountryCodeFromLocalSingaporeCalls()Z
    .registers 2

    .line 478
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist resetMobileNetworkSettings()Z
    .registers 2

    .line 485
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist reuseOriginalConnRemoteConfBehavior()Z
    .registers 2

    .line 492
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist robustNumberVerification()Z
    .registers 2

    .line 499
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist satellite25q4Apis()Z
    .registers 2

    .line 506
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist satellite26q2Apis()Z
    .registers 2

    .line 513
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist satelliteDataMetrics()Z
    .registers 2

    .line 520
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist satelliteExitP2pSessionOutsideGeofence()Z
    .registers 2

    .line 527
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist satelliteImproveMultiThreadDesign()Z
    .registers 2

    .line 534
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist satelliteStateChangeListener()Z
    .registers 2

    .line 541
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist satelliteSystemApis()Z
    .registers 2

    .line 548
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist securityAlgorithmsUpdateIndications()Z
    .registers 2

    .line 555
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist sendImsiKeyForDuplicateSim()Z
    .registers 2

    .line 562
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist sendMergeFailureOnHandleConferenceFailed()Z
    .registers 2

    .line 569
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setCarrierRestrictionStatus()Z
    .registers 2

    .line 576
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist simPhonebookCacheFix()Z
    .registers 2

    .line 583
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist simultaneousCallingIndications()Z
    .registers 2

    .line 590
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist slicingAdditionalErrorCodes()Z
    .registers 2

    .line 597
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist smsMmsDeliverBroadcastsRedirectToMainUser()Z
    .registers 2

    .line 604
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist starlinkDataBugfix()Z
    .registers 2

    .line 611
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist stopSpammingEmergencyNotification()Z
    .registers 2

    .line 618
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist subscriptionPlanAllowStatusAndEndDate()Z
    .registers 2

    .line 625
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist subscriptionUserAssociationQuery()Z
    .registers 2

    .line 632
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist supportAutoUnhold()Z
    .registers 2

    .line 639
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist supportCarrierIdsInGeofence()Z
    .registers 2

    .line 646
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist supportImsMmtelInterface()Z
    .registers 2

    .line 653
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist supportImsRegistrationEventDownload()Z
    .registers 2

    .line 660
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist supportImsSmsSmma()Z
    .registers 2

    .line 667
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist supportIsimRecord()Z
    .registers 2

    .line 674
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist supportPsimToEsimConversion()Z
    .registers 2

    .line 681
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist supportSlotSwitching2psim1esimConfig()Z
    .registers 2

    .line 688
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist supportSmsOverImsApis()Z
    .registers 2

    .line 695
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist supportStkCommandUssdAndCall()Z
    .registers 2

    .line 702
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist supportThrottleTimeForDeregistration()Z
    .registers 2

    .line 709
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist telephonySatelliteApis()Z
    .registers 2

    .line 716
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist telephonySatelliteMainlinePhase1()Z
    .registers 2

    .line 723
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist temporaryFailuresInCarrierMessagingService()Z
    .registers 2

    .line 730
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist unregisterSmsBroadcastReceiverFromCatService()Z
    .registers 2

    .line 737
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist updateResourceConfiguration()Z
    .registers 2

    .line 744
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist useAospDomainSelectionService()Z
    .registers 2

    .line 751
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist useI18nForMccMapping()Z
    .registers 2

    .line 758
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist useOemDomainSelectionService()Z
    .registers 2

    .line 765
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist vendorSpecificCellularIdentifierDisclosureIndications()Z
    .registers 2

    .line 772
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist vvmAsyncSimStateHandling()Z
    .registers 2

    .line 779
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist vzwAstSkyloFallback()Z
    .registers 2

    .line 786
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist workProfileApiSplit()Z
    .registers 2

    .line 793
    const/4 v0, 0x0

    return v0
.end method
