.class public abstract Lcom/android/internal/telecom/ITelecomService$Stub;
.super Landroid/os/Binder;
.source "ITelecomService.java"

# interfaces
.implements Lcom/android/internal/telecom/ITelecomService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ITelecomService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ITelecomService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.ITelecomService"

.field static final greylist-max-o TRANSACTION_acceptHandover:I = 0x3a

.field static final greylist-max-o TRANSACTION_acceptRingingCall:I = 0x25

.field static final greylist-max-o TRANSACTION_acceptRingingCallWithVideoState:I = 0x26

.field static final blacklist TRANSACTION_addCall:I = 0x4b

.field static final greylist-max-o TRANSACTION_addNewIncomingCall:I = 0x2d

.field static final blacklist TRANSACTION_addNewIncomingConference:I = 0x2e

.field static final greylist-max-o TRANSACTION_addNewUnknownCall:I = 0x2f

.field static final blacklist TRANSACTION_addOrRemoveTestCallCompanionApp:I = 0x46

.field static final greylist-max-o TRANSACTION_cancelMissedCallsNotification:I = 0x27

.field static final blacklist TRANSACTION_cleanupOrphanPhoneAccounts:I = 0x3f

.field static final blacklist TRANSACTION_cleanupStuckCalls:I = 0x3e

.field static final greylist-max-o TRANSACTION_clearAccounts:I = 0x13

.field static final blacklist TRANSACTION_createLaunchEmergencyDialerIntent:I = 0x36

.field static final greylist-max-o TRANSACTION_createManageBlockedNumbersIntent:I = 0x35

.field static final greylist-max-o TRANSACTION_dumpCallAnalytics:I = 0x1b

.field static final greylist-max-o TRANSACTION_enablePhoneAccount:I = 0x32

.field static final greylist-max-o TRANSACTION_endCall:I = 0x24

.field static final greylist-max-o TRANSACTION_getAdnUriForPhoneAccount:I = 0x2a

.field static final greylist-max-o TRANSACTION_getAllPhoneAccountHandles:I = 0xe

.field static final greylist-max-o TRANSACTION_getAllPhoneAccounts:I = 0xd

.field static final greylist-max-o TRANSACTION_getAllPhoneAccountsCount:I = 0xc

.field static final greylist-max-o TRANSACTION_getCallCapablePhoneAccounts:I = 0x5

.field static final blacklist TRANSACTION_getCallConnectedIndicatorPreference:I = 0x4f

.field static final greylist-max-o TRANSACTION_getCallState:I = 0x22

.field static final blacklist TRANSACTION_getCallStateUsingPackage:I = 0x23

.field static final greylist-max-o TRANSACTION_getCurrentTtyMode:I = 0x2c

.field static final greylist-max-o TRANSACTION_getDefaultDialerPackage:I = 0x18

.field static final blacklist TRANSACTION_getDefaultDialerPackageForUser:I = 0x19

.field static final greylist-max-o TRANSACTION_getDefaultOutgoingPhoneAccount:I = 0x2

.field static final greylist-max-o TRANSACTION_getDefaultPhoneApp:I = 0x17

.field static final greylist-max-o TRANSACTION_getLine1Number:I = 0x16

.field static final blacklist TRANSACTION_getOwnSelfManagedPhoneAccounts:I = 0x7

.field static final greylist-max-o TRANSACTION_getPhoneAccount:I = 0xa

.field static final greylist-max-o TRANSACTION_getPhoneAccountsForPackage:I = 0x9

.field static final greylist-max-o TRANSACTION_getPhoneAccountsSupportingScheme:I = 0x8

.field static final blacklist TRANSACTION_getRegisteredPhoneAccounts:I = 0xb

.field static final greylist-max-o TRANSACTION_getSelfManagedPhoneAccounts:I = 0x6

.field static final greylist-max-o TRANSACTION_getSimCallManager:I = 0xf

.field static final greylist-max-o TRANSACTION_getSimCallManagerForUser:I = 0x10

.field static final greylist-max-o TRANSACTION_getSystemDialerPackage:I = 0x1a

.field static final greylist-max-o TRANSACTION_getUserSelectedOutgoingPhoneAccount:I = 0x3

.field static final greylist-max-o TRANSACTION_getVoiceMailNumber:I = 0x15

.field static final blacklist TRANSACTION_handleCallIntent:I = 0x3d

.field static final greylist-max-o TRANSACTION_handlePinMmi:I = 0x28

.field static final greylist-max-o TRANSACTION_handlePinMmiForPhoneAccount:I = 0x29

.field static final blacklist TRANSACTION_hasForegroundServiceDelegation:I = 0x4c

.field static final blacklist TRANSACTION_hasManageOngoingCallsPermission:I = 0x1e

.field static final greylist-max-o TRANSACTION_isInCall:I = 0x1d

.field static final blacklist TRANSACTION_isInEmergencyCall:I = 0x3c

.field static final blacklist TRANSACTION_isInExternalCall:I = 0x20

.field static final greylist-max-o TRANSACTION_isInManagedCall:I = 0x1f

.field static final blacklist TRANSACTION_isInSelfManagedCall:I = 0x4a

.field static final greylist-max-o TRANSACTION_isIncomingCallPermitted:I = 0x37

.field static final blacklist TRANSACTION_isNonUiInCallServiceBound:I = 0x40

.field static final greylist-max-o TRANSACTION_isOutgoingCallPermitted:I = 0x38

.field static final greylist-max-o TRANSACTION_isRinging:I = 0x21

.field static final greylist-max-o TRANSACTION_isTtySupported:I = 0x2b

.field static final greylist-max-o TRANSACTION_isVoiceMailNumber:I = 0x14

.field static final greylist-max-o TRANSACTION_placeCall:I = 0x31

.field static final greylist-max-o TRANSACTION_registerPhoneAccount:I = 0x11

.field static final blacklist TRANSACTION_requestLogMark:I = 0x43

.field static final blacklist TRANSACTION_resetCarMode:I = 0x41

.field static final blacklist TRANSACTION_setCallConnectedIndicatorPreference:I = 0x50

.field static final greylist-max-o TRANSACTION_setDefaultDialer:I = 0x33

.field static final blacklist TRANSACTION_setMetricsTestMode:I = 0x4d

.field static final blacklist TRANSACTION_setSystemDialer:I = 0x47

.field static final blacklist TRANSACTION_setTestCallDiagnosticService:I = 0x49

.field static final blacklist TRANSACTION_setTestDefaultCallRedirectionApp:I = 0x42

.field static final blacklist TRANSACTION_setTestDefaultCallScreeningApp:I = 0x45

.field static final blacklist TRANSACTION_setTestDefaultDialer:I = 0x48

.field static final blacklist TRANSACTION_setTestEmergencyPhoneAccountPackageNameFilter:I = 0x3b

.field static final blacklist TRANSACTION_setTestPhoneAcctSuggestionComponent:I = 0x44

.field static final greylist-max-o TRANSACTION_setUserSelectedOutgoingPhoneAccount:I = 0x4

.field static final greylist-max-o TRANSACTION_showInCallScreen:I = 0x1

.field static final greylist-max-o TRANSACTION_silenceRinger:I = 0x1c

.field static final blacklist TRANSACTION_startConference:I = 0x30

.field static final blacklist TRANSACTION_stopBlockSuppression:I = 0x34

.field static final greylist-max-o TRANSACTION_unregisterPhoneAccount:I = 0x12

.field static final blacklist TRANSACTION_waitForAudioToUpdate:I = 0x4e

.field static final greylist-max-o TRANSACTION_waitOnHandlers:I = 0x39


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 400
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 401
    const-string v0, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;
    .registers 3

    .line 409
    if-nez p0, :cond_4

    .line 410
    const/4 p0, 0x0

    return-object p0

    .line 412
    :cond_4
    const-string v0, "com.android.internal.telecom.ITelecomService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 413
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telecom/ITelecomService;

    if-eqz v1, :cond_13

    .line 414
    check-cast v0, Lcom/android/internal/telecom/ITelecomService;

    return-object v0

    .line 416
    :cond_13
    new-instance v0, Lcom/android/internal/telecom/ITelecomService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/telecom/ITelecomService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 425
    packed-switch p0, :pswitch_data_f6

    .line 749
    const/4 p0, 0x0

    return-object p0

    .line 745
    :pswitch_5
    const-string p0, "setCallConnectedIndicatorPreference"

    return-object p0

    .line 741
    :pswitch_8
    const-string p0, "getCallConnectedIndicatorPreference"

    return-object p0

    .line 737
    :pswitch_b
    const-string p0, "waitForAudioToUpdate"

    return-object p0

    .line 733
    :pswitch_e
    const-string p0, "setMetricsTestMode"

    return-object p0

    .line 729
    :pswitch_11
    const-string p0, "hasForegroundServiceDelegation"

    return-object p0

    .line 725
    :pswitch_14
    const-string p0, "addCall"

    return-object p0

    .line 721
    :pswitch_17
    const-string p0, "isInSelfManagedCall"

    return-object p0

    .line 717
    :pswitch_1a
    const-string p0, "setTestCallDiagnosticService"

    return-object p0

    .line 713
    :pswitch_1d
    const-string p0, "setTestDefaultDialer"

    return-object p0

    .line 709
    :pswitch_20
    const-string p0, "setSystemDialer"

    return-object p0

    .line 705
    :pswitch_23
    const-string p0, "addOrRemoveTestCallCompanionApp"

    return-object p0

    .line 701
    :pswitch_26
    const-string p0, "setTestDefaultCallScreeningApp"

    return-object p0

    .line 697
    :pswitch_29
    const-string p0, "setTestPhoneAcctSuggestionComponent"

    return-object p0

    .line 693
    :pswitch_2c
    const-string p0, "requestLogMark"

    return-object p0

    .line 689
    :pswitch_2f
    const-string p0, "setTestDefaultCallRedirectionApp"

    return-object p0

    .line 685
    :pswitch_32
    const-string p0, "resetCarMode"

    return-object p0

    .line 681
    :pswitch_35
    const-string p0, "isNonUiInCallServiceBound"

    return-object p0

    .line 677
    :pswitch_38
    const-string p0, "cleanupOrphanPhoneAccounts"

    return-object p0

    .line 673
    :pswitch_3b
    const-string p0, "cleanupStuckCalls"

    return-object p0

    .line 669
    :pswitch_3e
    const-string p0, "handleCallIntent"

    return-object p0

    .line 665
    :pswitch_41
    const-string p0, "isInEmergencyCall"

    return-object p0

    .line 661
    :pswitch_44
    const-string p0, "setTestEmergencyPhoneAccountPackageNameFilter"

    return-object p0

    .line 657
    :pswitch_47
    const-string p0, "acceptHandover"

    return-object p0

    .line 653
    :pswitch_4a
    const-string p0, "waitOnHandlers"

    return-object p0

    .line 649
    :pswitch_4d
    const-string p0, "isOutgoingCallPermitted"

    return-object p0

    .line 645
    :pswitch_50
    const-string p0, "isIncomingCallPermitted"

    return-object p0

    .line 641
    :pswitch_53
    const-string p0, "createLaunchEmergencyDialerIntent"

    return-object p0

    .line 637
    :pswitch_56
    const-string p0, "createManageBlockedNumbersIntent"

    return-object p0

    .line 633
    :pswitch_59
    const-string p0, "stopBlockSuppression"

    return-object p0

    .line 629
    :pswitch_5c
    const-string p0, "setDefaultDialer"

    return-object p0

    .line 625
    :pswitch_5f
    const-string p0, "enablePhoneAccount"

    return-object p0

    .line 621
    :pswitch_62
    const-string p0, "placeCall"

    return-object p0

    .line 617
    :pswitch_65
    const-string p0, "startConference"

    return-object p0

    .line 613
    :pswitch_68
    const-string p0, "addNewUnknownCall"

    return-object p0

    .line 609
    :pswitch_6b
    const-string p0, "addNewIncomingConference"

    return-object p0

    .line 605
    :pswitch_6e
    const-string p0, "addNewIncomingCall"

    return-object p0

    .line 601
    :pswitch_71
    const-string p0, "getCurrentTtyMode"

    return-object p0

    .line 597
    :pswitch_74
    const-string p0, "isTtySupported"

    return-object p0

    .line 593
    :pswitch_77
    const-string p0, "getAdnUriForPhoneAccount"

    return-object p0

    .line 589
    :pswitch_7a
    const-string p0, "handlePinMmiForPhoneAccount"

    return-object p0

    .line 585
    :pswitch_7d
    const-string p0, "handlePinMmi"

    return-object p0

    .line 581
    :pswitch_80
    const-string p0, "cancelMissedCallsNotification"

    return-object p0

    .line 577
    :pswitch_83
    const-string p0, "acceptRingingCallWithVideoState"

    return-object p0

    .line 573
    :pswitch_86
    const-string p0, "acceptRingingCall"

    return-object p0

    .line 569
    :pswitch_89
    const-string p0, "endCall"

    return-object p0

    .line 565
    :pswitch_8c
    const-string p0, "getCallStateUsingPackage"

    return-object p0

    .line 561
    :pswitch_8f
    const-string p0, "getCallState"

    return-object p0

    .line 557
    :pswitch_92
    const-string p0, "isRinging"

    return-object p0

    .line 553
    :pswitch_95
    const-string p0, "isInExternalCall"

    return-object p0

    .line 549
    :pswitch_98
    const-string p0, "isInManagedCall"

    return-object p0

    .line 545
    :pswitch_9b
    const-string p0, "hasManageOngoingCallsPermission"

    return-object p0

    .line 541
    :pswitch_9e
    const-string p0, "isInCall"

    return-object p0

    .line 537
    :pswitch_a1
    const-string p0, "silenceRinger"

    return-object p0

    .line 533
    :pswitch_a4
    const-string p0, "dumpCallAnalytics"

    return-object p0

    .line 529
    :pswitch_a7
    const-string p0, "getSystemDialerPackage"

    return-object p0

    .line 525
    :pswitch_aa
    const-string p0, "getDefaultDialerPackageForUser"

    return-object p0

    .line 521
    :pswitch_ad
    const-string p0, "getDefaultDialerPackage"

    return-object p0

    .line 517
    :pswitch_b0
    const-string p0, "getDefaultPhoneApp"

    return-object p0

    .line 513
    :pswitch_b3
    const-string p0, "getLine1Number"

    return-object p0

    .line 509
    :pswitch_b6
    const-string p0, "getVoiceMailNumber"

    return-object p0

    .line 505
    :pswitch_b9
    const-string p0, "isVoiceMailNumber"

    return-object p0

    .line 501
    :pswitch_bc
    const-string p0, "clearAccounts"

    return-object p0

    .line 497
    :pswitch_bf
    const-string p0, "unregisterPhoneAccount"

    return-object p0

    .line 493
    :pswitch_c2
    const-string p0, "registerPhoneAccount"

    return-object p0

    .line 489
    :pswitch_c5
    const-string p0, "getSimCallManagerForUser"

    return-object p0

    .line 485
    :pswitch_c8
    const-string p0, "getSimCallManager"

    return-object p0

    .line 481
    :pswitch_cb
    const-string p0, "getAllPhoneAccountHandles"

    return-object p0

    .line 477
    :pswitch_ce
    const-string p0, "getAllPhoneAccounts"

    return-object p0

    .line 473
    :pswitch_d1
    const-string p0, "getAllPhoneAccountsCount"

    return-object p0

    .line 469
    :pswitch_d4
    const-string p0, "getRegisteredPhoneAccounts"

    return-object p0

    .line 465
    :pswitch_d7
    const-string p0, "getPhoneAccount"

    return-object p0

    .line 461
    :pswitch_da
    const-string p0, "getPhoneAccountsForPackage"

    return-object p0

    .line 457
    :pswitch_dd
    const-string p0, "getPhoneAccountsSupportingScheme"

    return-object p0

    .line 453
    :pswitch_e0
    const-string p0, "getOwnSelfManagedPhoneAccounts"

    return-object p0

    .line 449
    :pswitch_e3
    const-string p0, "getSelfManagedPhoneAccounts"

    return-object p0

    .line 445
    :pswitch_e6
    const-string p0, "getCallCapablePhoneAccounts"

    return-object p0

    .line 441
    :pswitch_e9
    const-string p0, "setUserSelectedOutgoingPhoneAccount"

    return-object p0

    .line 437
    :pswitch_ec
    const-string p0, "getUserSelectedOutgoingPhoneAccount"

    return-object p0

    .line 433
    :pswitch_ef
    const-string p0, "getDefaultOutgoingPhoneAccount"

    return-object p0

    .line 429
    :pswitch_f2
    const-string p0, "showInCallScreen"

    return-object p0

    nop

    :pswitch_data_f6
    .packed-switch 0x1
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


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 420
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 3200
    const/16 v0, 0x4f

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 756
    invoke-static {p1}, Lcom/android/internal/telecom/ITelecomService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 760
    nop

    .line 761
    const-string v0, "com.android.internal.telecom.ITelecomService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 762
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 765
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 766
    return v1

    .line 768
    :cond_17
    packed-switch p1, :pswitch_data_69c

    .line 1623
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 1613
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1615
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1616
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1617
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telecom/ITelecomService$Stub;->setCallConnectedIndicatorPreference(Ljava/lang/String;I)V

    .line 1618
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1619
    goto/16 :goto_69b

    .line 1603
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1604
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1605
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/ITelecomService$Stub;->getCallConnectedIndicatorPreference(Ljava/lang/String;)I

    move-result p1

    .line 1606
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1607
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1608
    goto/16 :goto_69b

    .line 1594
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1595
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1596
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/ITelecomService$Stub;->waitForAudioToUpdate(Z)V

    .line 1597
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1598
    goto/16 :goto_69b

    .line 1585
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1586
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1587
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/ITelecomService$Stub;->setMetricsTestMode(Z)V

    .line 1588
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1589
    goto/16 :goto_69b

    .line 1573
    :pswitch_63
    sget-object p1, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/PhoneAccountHandle;

    .line 1575
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1576
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1577
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telecom/ITelecomService$Stub;->hasForegroundServiceDelegation(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z

    move-result p1

    .line 1578
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1579
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1580
    goto/16 :goto_69b

    .line 1558
    :pswitch_7e
    sget-object p1, Landroid/telecom/CallAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/CallAttributes;

    .line 1560
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/android/internal/telecom/ICallEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ICallEventCallback;

    move-result-object p4

    .line 1562
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1564
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1565
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1566
    invoke-virtual {p0, p1, p4, v0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->addCall(Landroid/telecom/CallAttributes;Lcom/android/internal/telecom/ICallEventCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1568
    goto/16 :goto_69b

    .line 1544
    :pswitch_a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1546
    sget-object p4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/UserHandle;

    .line 1548
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1549
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1550
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->isInSelfManagedCall(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result p1

    .line 1551
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1552
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1553
    goto/16 :goto_69b

    .line 1535
    :pswitch_c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1536
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1537
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/ITelecomService$Stub;->setTestCallDiagnosticService(Ljava/lang/String;)V

    .line 1538
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1539
    goto/16 :goto_69b

    .line 1526
    :pswitch_cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1527
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1528
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/ITelecomService$Stub;->setTestDefaultDialer(Ljava/lang/String;)V

    .line 1529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1530
    goto/16 :goto_69b

    .line 1517
    :pswitch_de
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 1518
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1519
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/ITelecomService$Stub;->setSystemDialer(Landroid/content/ComponentName;)V

    .line 1520
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1521
    goto/16 :goto_69b

    .line 1506
    :pswitch_f1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1508
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 1509
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1510
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telecom/ITelecomService$Stub;->addOrRemoveTestCallCompanionApp(Ljava/lang/String;Z)V

    .line 1511
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1512
    goto/16 :goto_69b

    .line 1497
    :pswitch_104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1498
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1499
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/ITelecomService$Stub;->setTestDefaultCallScreeningApp(Ljava/lang/String;)V

    .line 1500
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1501
    goto/16 :goto_69b

    .line 1486
    :pswitch_113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1488
    sget-object p4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/UserHandle;

    .line 1489
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1490
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telecom/ITelecomService$Stub;->setTestPhoneAcctSuggestionComponent(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1491
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1492
    goto/16 :goto_69b

    .line 1477
    :pswitch_12a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1478
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1479
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/ITelecomService$Stub;->requestLogMark(Ljava/lang/String;)V

    .line 1480
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1481
    goto/16 :goto_69b

    .line 1468
    :pswitch_139
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1469
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1470
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/ITelecomService$Stub;->setTestDefaultCallRedirectionApp(Ljava/lang/String;)V

    .line 1471
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1472
    goto/16 :goto_69b

    .line 1461
    :pswitch_148
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->resetCarMode()V

    .line 1462
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1463
    goto/16 :goto_69b

    .line 1452
    :pswitch_150
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1453
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1454
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/ITelecomService$Stub;->isNonUiInCallServiceBound(Ljava/lang/String;)Z

    move-result p1

    .line 1455
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1456
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1457
    goto/16 :goto_69b

    .line 1444
    :pswitch_163
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->cleanupOrphanPhoneAccounts()I

    move-result p1

    .line 1445
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1446
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1447
    goto/16 :goto_69b

    .line 1438
    :pswitch_16f
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->cleanupStuckCalls()V

    .line 1439
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1440
    goto/16 :goto_69b

    .line 1428
    :pswitch_177
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 1430
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1431
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1432
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telecom/ITelecomService$Stub;->handleCallIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1433
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1434
    goto/16 :goto_69b

    .line 1420
    :pswitch_18e
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->isInEmergencyCall()Z

    move-result p1

    .line 1421
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1422
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1423
    goto/16 :goto_69b

    .line 1412
    :pswitch_19a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1413
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1414
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/ITelecomService$Stub;->setTestEmergencyPhoneAccountPackageNameFilter(Ljava/lang/String;)V

    .line 1415
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1416
    goto/16 :goto_69b

    .line 1397
    :pswitch_1a9
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 1399
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1401
    sget-object v0, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 1403
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1404
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1405
    invoke-virtual {p0, p1, p4, v0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->acceptHandover(Landroid/net/Uri;ILandroid/telecom/PhoneAccountHandle;Ljava/lang/String;)V

    .line 1406
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1407
    goto/16 :goto_69b

    .line 1390
    :pswitch_1cc
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->waitOnHandlers()V

    .line 1391
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1392
    goto/16 :goto_69b

    .line 1379
    :pswitch_1d4
    sget-object p1, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/PhoneAccountHandle;

    .line 1381
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1382
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1383
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telecom/ITelecomService$Stub;->isOutgoingCallPermitted(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z

    move-result p1

    .line 1384
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1385
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1386
    goto/16 :goto_69b

    .line 1367
    :pswitch_1ef
    sget-object p1, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/PhoneAccountHandle;

    .line 1369
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1370
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1371
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telecom/ITelecomService$Stub;->isIncomingCallPermitted(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z

    move-result p1

    .line 1372
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1373
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1374
    goto/16 :goto_69b

    .line 1357
    :pswitch_20a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1358
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1359
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/ITelecomService$Stub;->createLaunchEmergencyDialerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 1360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1361
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1362
    goto/16 :goto_69b

    .line 1347
    :pswitch_21d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1348
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1349
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/ITelecomService$Stub;->createManageBlockedNumbersIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 1350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1351
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1352
    goto/16 :goto_69b

    .line 1340
    :pswitch_230
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->stopBlockSuppression()V

    .line 1341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1342
    goto/16 :goto_69b

    .line 1331
    :pswitch_238
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1332
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1333
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/ITelecomService$Stub;->setDefaultDialer(Ljava/lang/String;)Z

    move-result p1

    .line 1334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1335
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1336
    goto/16 :goto_69b

    .line 1319
    :pswitch_24b
    sget-object p1, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/PhoneAccountHandle;

    .line 1321
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 1322
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1323
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telecom/ITelecomService$Stub;->enablePhoneAccount(Landroid/telecom/PhoneAccountHandle;Z)Z

    move-result p1

    .line 1324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1325
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1326
    goto/16 :goto_69b

    .line 1304
    :pswitch_266
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 1306
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    .line 1308
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1310
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1311
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1312
    invoke-virtual {p0, p1, p4, v0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1314
    goto/16 :goto_69b

    .line 1291
    :pswitch_289
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1293
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    .line 1295
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1296
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1297
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->startConference(Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1299
    goto/16 :goto_69b

    .line 1280
    :pswitch_2a6
    sget-object p1, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/PhoneAccountHandle;

    .line 1282
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    .line 1283
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1284
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telecom/ITelecomService$Stub;->addNewUnknownCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    .line 1285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1286
    goto/16 :goto_69b

    .line 1267
    :pswitch_2c1
    sget-object p1, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/PhoneAccountHandle;

    .line 1269
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    .line 1271
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1272
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1273
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->addNewIncomingConference(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1275
    goto/16 :goto_69b

    .line 1254
    :pswitch_2e0
    sget-object p1, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/PhoneAccountHandle;

    .line 1256
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    .line 1258
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1259
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1260
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1262
    goto/16 :goto_69b

    .line 1242
    :pswitch_2ff
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1244
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1245
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1246
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telecom/ITelecomService$Stub;->getCurrentTtyMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1248
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1249
    goto/16 :goto_69b

    .line 1230
    :pswitch_316
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1232
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1233
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1234
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telecom/ITelecomService$Stub;->isTtySupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 1235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1236
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1237
    goto/16 :goto_69b

    .line 1218
    :pswitch_32d
    sget-object p1, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/PhoneAccountHandle;

    .line 1220
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1221
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1222
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telecom/ITelecomService$Stub;->getAdnUriForPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1224
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1225
    goto/16 :goto_69b

    .line 1204
    :pswitch_348
    sget-object p1, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/PhoneAccountHandle;

    .line 1206
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1208
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1209
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1210
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->handlePinMmiForPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 1211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1212
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1213
    goto/16 :goto_69b

    .line 1192
    :pswitch_367
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1194
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1195
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1196
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telecom/ITelecomService$Stub;->handlePinMmi(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 1197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1198
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1199
    goto/16 :goto_69b

    .line 1183
    :pswitch_37e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1184
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1185
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/ITelecomService$Stub;->cancelMissedCallsNotification(Ljava/lang/String;)V

    .line 1186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1187
    goto/16 :goto_69b

    .line 1172
    :pswitch_38d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1175
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1176
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telecom/ITelecomService$Stub;->acceptRingingCallWithVideoState(Ljava/lang/String;I)V

    .line 1177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1178
    goto/16 :goto_69b

    .line 1163
    :pswitch_3a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1164
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1165
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/ITelecomService$Stub;->acceptRingingCall(Ljava/lang/String;)V

    .line 1166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1167
    goto/16 :goto_69b

    .line 1153
    :pswitch_3af
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1154
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1155
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/ITelecomService$Stub;->endCall(Ljava/lang/String;)Z

    move-result p1

    .line 1156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1157
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1158
    goto/16 :goto_69b

    .line 1141
    :pswitch_3c2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1143
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1144
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1145
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telecom/ITelecomService$Stub;->getCallStateUsingPackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1147
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1148
    goto/16 :goto_69b

    .line 1133
    :pswitch_3d9
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getCallState()I

    move-result p1

    .line 1134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1135
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1136
    goto/16 :goto_69b

    .line 1124
    :pswitch_3e5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1125
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1126
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/ITelecomService$Stub;->isRinging(Ljava/lang/String;)Z

    move-result p1

    .line 1127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1128
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1129
    goto/16 :goto_69b

    .line 1112
    :pswitch_3f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1114
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1115
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1116
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telecom/ITelecomService$Stub;->isInExternalCall(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 1117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1118
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1119
    goto/16 :goto_69b

    .line 1100
    :pswitch_40f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1103
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1104
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telecom/ITelecomService$Stub;->isInManagedCall(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 1105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1106
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1107
    goto/16 :goto_69b

    .line 1090
    :pswitch_426
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1091
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1092
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/ITelecomService$Stub;->hasManageOngoingCallsPermission(Ljava/lang/String;)Z

    move-result p1

    .line 1093
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1094
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1095
    goto/16 :goto_69b

    .line 1078
    :pswitch_439
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1080
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1081
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1082
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telecom/ITelecomService$Stub;->isInCall(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 1083
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1084
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1085
    goto/16 :goto_69b

    .line 1069
    :pswitch_450
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1070
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1071
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/ITelecomService$Stub;->silenceRinger(Ljava/lang/String;)V

    .line 1072
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1073
    goto/16 :goto_69b

    .line 1061
    :pswitch_45f
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->dumpCallAnalytics()Landroid/telecom/TelecomAnalytics;

    move-result-object p1

    .line 1062
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1063
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1064
    goto/16 :goto_69b

    .line 1052
    :pswitch_46b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1053
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1054
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/ITelecomService$Stub;->getSystemDialerPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1055
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1056
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1057
    goto/16 :goto_69b

    .line 1042
    :pswitch_47e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1043
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1044
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/ITelecomService$Stub;->getDefaultDialerPackageForUser(I)Ljava/lang/String;

    move-result-object p1

    .line 1045
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1047
    goto/16 :goto_69b

    .line 1032
    :pswitch_491
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1033
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1034
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/ITelecomService$Stub;->getDefaultDialerPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1035
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1036
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1037
    goto/16 :goto_69b

    .line 1024
    :pswitch_4a4
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getDefaultPhoneApp()Landroid/content/ComponentName;

    move-result-object p1

    .line 1025
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1026
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1027
    goto/16 :goto_69b

    .line 1011
    :pswitch_4b0
    sget-object p1, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/PhoneAccountHandle;

    .line 1013
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1015
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1016
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1017
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getLine1Number(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1018
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1019
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1020
    goto/16 :goto_69b

    .line 997
    :pswitch_4cf
    sget-object p1, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/PhoneAccountHandle;

    .line 999
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1001
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1002
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1003
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1004
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1005
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1006
    goto/16 :goto_69b

    .line 981
    :pswitch_4ee
    sget-object p1, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/PhoneAccountHandle;

    .line 983
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 985
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 987
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 988
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 989
    invoke-virtual {p0, p1, p4, v0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->isVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 990
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 991
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 992
    goto/16 :goto_69b

    .line 972
    :pswitch_511
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 973
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 974
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/ITelecomService$Stub;->clearAccounts(Ljava/lang/String;)V

    .line 975
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    goto/16 :goto_69b

    .line 961
    :pswitch_520
    sget-object p1, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/PhoneAccountHandle;

    .line 963
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 964
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 965
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telecom/ITelecomService$Stub;->unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)V

    .line 966
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 967
    goto/16 :goto_69b

    .line 950
    :pswitch_537
    sget-object p1, Landroid/telecom/PhoneAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/PhoneAccount;

    .line 952
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 953
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 954
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telecom/ITelecomService$Stub;->registerPhoneAccount(Landroid/telecom/PhoneAccount;Ljava/lang/String;)V

    .line 955
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 956
    goto/16 :goto_69b

    .line 938
    :pswitch_54e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 940
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 941
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 942
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telecom/ITelecomService$Stub;->getSimCallManagerForUser(ILjava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object p1

    .line 943
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 944
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 945
    goto/16 :goto_69b

    .line 926
    :pswitch_565
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 928
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 929
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 930
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telecom/ITelecomService$Stub;->getSimCallManager(ILjava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object p1

    .line 931
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 932
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 933
    goto/16 :goto_69b

    .line 918
    :pswitch_57c
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getAllPhoneAccountHandles()Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 919
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 920
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 921
    goto/16 :goto_69b

    .line 911
    :pswitch_588
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getAllPhoneAccounts()Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 912
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 913
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 914
    goto/16 :goto_69b

    .line 904
    :pswitch_594
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getAllPhoneAccountsCount()I

    move-result p1

    .line 905
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 907
    goto/16 :goto_69b

    .line 893
    :pswitch_5a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 895
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 896
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 897
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telecom/ITelecomService$Stub;->getRegisteredPhoneAccounts(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 898
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 900
    goto/16 :goto_69b

    .line 881
    :pswitch_5b7
    sget-object p1, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/PhoneAccountHandle;

    .line 883
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 884
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 885
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telecom/ITelecomService$Stub;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/telecom/PhoneAccount;

    move-result-object p1

    .line 886
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 887
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 888
    goto/16 :goto_69b

    .line 871
    :pswitch_5d2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 872
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 873
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/ITelecomService$Stub;->getPhoneAccountsForPackage(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 874
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 875
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 876
    goto/16 :goto_69b

    .line 859
    :pswitch_5e5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 861
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 862
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 863
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telecom/ITelecomService$Stub;->getPhoneAccountsSupportingScheme(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 864
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 865
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 866
    goto/16 :goto_69b

    .line 847
    :pswitch_5fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 849
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 850
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 851
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telecom/ITelecomService$Stub;->getOwnSelfManagedPhoneAccounts(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 852
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 853
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 854
    goto/16 :goto_69b

    .line 835
    :pswitch_613
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 837
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 838
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 839
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telecom/ITelecomService$Stub;->getSelfManagedPhoneAccounts(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 840
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 841
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 842
    goto :goto_69b

    .line 819
    :pswitch_629
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 821
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 823
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 825
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 826
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 827
    invoke-virtual {p0, p1, p4, v0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->getCallCapablePhoneAccounts(ZLjava/lang/String;Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 828
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 829
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 830
    goto :goto_69b

    .line 810
    :pswitch_647
    sget-object p1, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/PhoneAccountHandle;

    .line 811
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 812
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/ITelecomService$Stub;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 813
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    goto :goto_69b

    .line 800
    :pswitch_659
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 801
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 802
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/ITelecomService$Stub;->getUserSelectedOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object p1

    .line 803
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 805
    goto :goto_69b

    .line 786
    :pswitch_66b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 788
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 790
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 791
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 792
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getDefaultOutgoingPhoneAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object p1

    .line 793
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 794
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 795
    goto :goto_69b

    .line 773
    :pswitch_685
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 775
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 777
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 778
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 779
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->showInCallScreen(ZLjava/lang/String;Ljava/lang/String;)V

    .line 780
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    nop

    .line 1626
    :goto_69b
    return v1

    :pswitch_data_69c
    .packed-switch 0x1
        :pswitch_685
        :pswitch_66b
        :pswitch_659
        :pswitch_647
        :pswitch_629
        :pswitch_613
        :pswitch_5fc
        :pswitch_5e5
        :pswitch_5d2
        :pswitch_5b7
        :pswitch_5a0
        :pswitch_594
        :pswitch_588
        :pswitch_57c
        :pswitch_565
        :pswitch_54e
        :pswitch_537
        :pswitch_520
        :pswitch_511
        :pswitch_4ee
        :pswitch_4cf
        :pswitch_4b0
        :pswitch_4a4
        :pswitch_491
        :pswitch_47e
        :pswitch_46b
        :pswitch_45f
        :pswitch_450
        :pswitch_439
        :pswitch_426
        :pswitch_40f
        :pswitch_3f8
        :pswitch_3e5
        :pswitch_3d9
        :pswitch_3c2
        :pswitch_3af
        :pswitch_3a0
        :pswitch_38d
        :pswitch_37e
        :pswitch_367
        :pswitch_348
        :pswitch_32d
        :pswitch_316
        :pswitch_2ff
        :pswitch_2e0
        :pswitch_2c1
        :pswitch_2a6
        :pswitch_289
        :pswitch_266
        :pswitch_24b
        :pswitch_238
        :pswitch_230
        :pswitch_21d
        :pswitch_20a
        :pswitch_1ef
        :pswitch_1d4
        :pswitch_1cc
        :pswitch_1a9
        :pswitch_19a
        :pswitch_18e
        :pswitch_177
        :pswitch_16f
        :pswitch_163
        :pswitch_150
        :pswitch_148
        :pswitch_139
        :pswitch_12a
        :pswitch_113
        :pswitch_104
        :pswitch_f1
        :pswitch_de
        :pswitch_cf
        :pswitch_c0
        :pswitch_a1
        :pswitch_7e
        :pswitch_63
        :pswitch_54
        :pswitch_45
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method
