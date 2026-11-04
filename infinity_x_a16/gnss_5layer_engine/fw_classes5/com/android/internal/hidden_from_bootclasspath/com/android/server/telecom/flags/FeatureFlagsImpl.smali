.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addCallUriForMissedCalls()Z
    .registers 2

    .line 9
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist allowSystemAppsResolveVoipCalls()Z
    .registers 2

    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist autoUnholdOnCallFail()Z
    .registers 2

    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist avoidDiscOnBtToBtSwitch()Z
    .registers 2

    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist avoidLoggingMoreThanOnce()Z
    .registers 2

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist busDeviceIsASpeaker()Z
    .registers 2

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist businessCallComposer()Z
    .registers 2

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist cacheCallEvents()Z
    .registers 2

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist callConnectedIndicatorPreference()Z
    .registers 2

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist callDetailsGetAssociatedUserApi()Z
    .registers 2

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist callDetailsIdChanges()Z
    .registers 2

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist callSequencingCallResumeFailed()Z
    .registers 2

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist callSequencingMetrics()Z
    .registers 2

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist cancelRemovalOnEmergencyRedial()Z
    .registers 2

    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist checkDeviceTypeOnRouteChange()Z
    .registers 2

    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist cleanupVerifyCallState()Z
    .registers 2

    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist cswServiceInterfaceIsNull()Z
    .registers 2

    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist doNotSendCallToNullIcs()Z
    .registers 2

    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist dontNotifyMissedCallsWhenNoDialer()Z
    .registers 2

    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist dontTimeoutDestroyedCalls()Z
    .registers 2

    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist earlyBindingToIncallService()Z
    .registers 2

    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist eccWaitForLiveCallDisconnect()Z
    .registers 2

    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist echoAbortTransactionalOutgoing()Z
    .registers 2

    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableAudioProcessingUseCase()Z
    .registers 2

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableCallExceptionAnomReports()Z
    .registers 2

    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableIncallServiceClassCheck()Z
    .registers 2

    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableRespondViaSmsManagerAsync()Z
    .registers 2

    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enforceTransactionalExclusivity()Z
    .registers 2

    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist ensureAudioModeUpdatesOnForegroundCallChange()Z
    .registers 2

    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist filterVoipCallLogs()Z
    .registers 2

    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist fixSessionTreeLogging()Z
    .registers 2

    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getLastKnownCellIdentity()Z
    .registers 2

    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRegisteredPhoneAccounts()Z
    .registers 2

    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist ignoreBtBroadcast()Z
    .registers 2

    .line 240
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist integratedCallLogs()Z
    .registers 2

    .line 247
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isInExternalCall()Z
    .registers 2

    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUsingVideoRingback()Z
    .registers 2

    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist keepBluetoothDevicesCacheUpdated()Z
    .registers 2

    .line 268
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist localVoicemail()Z
    .registers 2

    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist maybeRerouteAudioOnVideoStateChange()Z
    .registers 2

    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist multiPartyAnchorConf()Z
    .registers 2

    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist postponeRegisterToLeaudio()Z
    .registers 2

    .line 296
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist preserveCallAudioRouting()Z
    .registers 2

    .line 303
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist preventIllegalAudioProcessingExit()Z
    .registers 2

    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist preventRedundantLocationPermissionGrantAndRevoke()Z
    .registers 2

    .line 317
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist preventSelfManagedCallLogging()Z
    .registers 2

    .line 324
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist promoteExtraDoNotLogCallToSystemApi()Z
    .registers 2

    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist remotelyHostedProperty()Z
    .registers 2

    .line 338
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist resolveHiddenDependenciesTwo()Z
    .registers 2

    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist reuseOriginalConnRemoteConfApi()Z
    .registers 2

    .line 352
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist revertDisconnectingDuringMerge()Z
    .registers 2

    .line 359
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist ringerVibrationUserAware()Z
    .registers 2

    .line 366
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist selectPhoneAccountBeforeMakingRoom()Z
    .registers 2

    .line 373
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist sendNewRingingCallSync()Z
    .registers 2

    .line 380
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist sendOriginalNumberOnPlaceCall()Z
    .registers 2

    .line 387
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setMuteState()Z
    .registers 2

    .line 394
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setRemoteConnectionCallId()Z
    .registers 2

    .line 401
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist skipFilterPhoneAccountPerformDndFilter()Z
    .registers 2

    .line 408
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist skipPendingMsgIfCommunicationDeviceSet()Z
    .registers 2

    .line 415
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist supportDisplayNameCallLog()Z
    .registers 2

    .line 422
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist synchronizeConnState()Z
    .registers 2

    .line 429
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist telecomAppLabelProxyHsumAware()Z
    .registers 2

    .line 436
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist telecomMainUserInBlockCheck()Z
    .registers 2

    .line 443
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist telecomMainUserInGetRespondMessageApp()Z
    .registers 2

    .line 450
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist telecomMainlineBlockedNumbersManager()Z
    .registers 2

    .line 457
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist telecomMetricsSupport()Z
    .registers 2

    .line 464
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist telecomResolveHiddenDependencies()Z
    .registers 2

    .line 471
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist telephonyHasDefaultButTelecomDoesNot()Z
    .registers 2

    .line 478
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist transactionalCsVerifier()Z
    .registers 2

    .line 485
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist transactionalVideoState()Z
    .registers 2

    .line 492
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist unregisterUnresolvableAccounts()Z
    .registers 2

    .line 499
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist useDeviceProvidedSerializedRingerVibration()Z
    .registers 2

    .line 506
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist vibrationAccountsForMainSetting()Z
    .registers 2

    .line 513
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist voipAppActionsSupport()Z
    .registers 2

    .line 520
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist voipDndFocus()Z
    .registers 2

    .line 527
    const/4 v0, 0x0

    return v0
.end method
