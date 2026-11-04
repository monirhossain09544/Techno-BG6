.class public abstract Lcom/android/internal/statusbar/IStatusBar$Stub;
.super Landroid/os/Binder;
.source "IStatusBar.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBar"

.field static final blacklist TRANSACTION_abortTransient:I = 0x39

.field static final greylist-max-o TRANSACTION_addQsTile:I = 0x25

.field static final blacklist TRANSACTION_addQsTileToFrontOrEnd:I = 0x26

.field static final greylist-max-o TRANSACTION_animateCollapsePanels:I = 0x7

.field static final greylist-max-o TRANSACTION_animateExpandNotificationsPanel:I = 0x5

.field static final greylist-max-o TRANSACTION_animateExpandSettingsPanel:I = 0x6

.field static final greylist-max-o TRANSACTION_appTransitionCancelled:I = 0x19

.field static final greylist-max-o TRANSACTION_appTransitionFinished:I = 0x1b

.field static final greylist-max-o TRANSACTION_appTransitionPending:I = 0x18

.field static final greylist-max-o TRANSACTION_appTransitionStarting:I = 0x1a

.field static final greylist-max-o TRANSACTION_cancelPreloadRecentApps:I = 0x12

.field static final blacklist TRANSACTION_cancelRequestAddTile:I = 0x47

.field static final greylist-max-o TRANSACTION_clickQsTile:I = 0x29

.field static final blacklist TRANSACTION_confirmImmersivePrompt:I = 0x14

.field static final greylist-max-o TRANSACTION_disable:I = 0x3

.field static final blacklist TRANSACTION_disableForAllDisplays:I = 0x4

.field static final blacklist TRANSACTION_dismissInattentiveSleepWarning:I = 0x3b

.field static final greylist-max-o TRANSACTION_dismissKeyboardShortcutsMenu:I = 0x16

.field static final blacklist TRANSACTION_dumpProto:I = 0x4c

.field static final greylist-max-o TRANSACTION_handleSystemKey:I = 0x2a

.field static final blacklist TRANSACTION_hideAuthenticationDialog:I = 0x32

.field static final greylist-max-o TRANSACTION_hideRecentApps:I = 0xd

.field static final blacklist TRANSACTION_hideToast:I = 0x3d

.field static final blacklist TRANSACTION_immersiveModeChanged:I = 0x15

.field static final blacklist TRANSACTION_moveFocusedTaskToDesktop:I = 0x52

.field static final blacklist TRANSACTION_moveFocusedTaskToFullscreen:I = 0x4e

.field static final blacklist TRANSACTION_moveFocusedTaskToStageSplit:I = 0x4f

.field static final blacklist TRANSACTION_onBiometricAuthenticated:I = 0x2f

.field static final blacklist TRANSACTION_onBiometricError:I = 0x31

.field static final blacklist TRANSACTION_onBiometricHelp:I = 0x30

.field static final greylist-max-o TRANSACTION_onCameraLaunchGestureDetected:I = 0x1e

.field static final blacklist TRANSACTION_onDisplayAddSystemDecorations:I = 0x35

.field static final blacklist TRANSACTION_onDisplayRemoveSystemDecorations:I = 0x36

.field static final blacklist TRANSACTION_onEmergencyActionLaunchGestureDetected:I = 0x20

.field static final greylist-max-o TRANSACTION_onProposedRotationChanged:I = 0x23

.field static final blacklist TRANSACTION_onSystemBarAttributesChanged:I = 0x37

.field static final blacklist TRANSACTION_onWalletLaunchGestureDetected:I = 0x1f

.field static final blacklist TRANSACTION_passThroughShellCommand:I = 0x42

.field static final greylist-max-o TRANSACTION_preloadRecentApps:I = 0x11

.field static final blacklist TRANSACTION_registerNearbyMediaDevicesProvider:I = 0x4a

.field static final greylist-max-o TRANSACTION_remQsTile:I = 0x27

.field static final greylist-max-o TRANSACTION_removeIcon:I = 0x2

.field static final blacklist TRANSACTION_requestAddTile:I = 0x46

.field static final blacklist TRANSACTION_requestMagnificationConnection:I = 0x41

.field static final blacklist TRANSACTION_requestTileServiceListeningState:I = 0x45

.field static final blacklist TRANSACTION_restartSystemUI:I = 0x53

.field static final blacklist TRANSACTION_runGcForTest:I = 0x44

.field static final blacklist TRANSACTION_setBiometicContextListener:I = 0x33

.field static final greylist-max-o TRANSACTION_setIcon:I = 0x1

.field static final greylist-max-o TRANSACTION_setImeWindowStatus:I = 0xa

.field static final blacklist TRANSACTION_setNavigationBarLumaSamplingEnabled:I = 0x43

.field static final blacklist TRANSACTION_setQsTiles:I = 0x28

.field static final blacklist TRANSACTION_setSplitscreenFocus:I = 0x50

.field static final greylist-max-o TRANSACTION_setTopAppHidesStatusBar:I = 0x24

.field static final blacklist TRANSACTION_setUdfpsRefreshRateCallback:I = 0x34

.field static final greylist-max-o TRANSACTION_setWindowState:I = 0xb

.field static final greylist-max-o TRANSACTION_showAssistDisclosure:I = 0x1c

.field static final blacklist TRANSACTION_showAuthenticationDialog:I = 0x2e

.field static final greylist-max-o TRANSACTION_showGlobalActionsMenu:I = 0x22

.field static final blacklist TRANSACTION_showInattentiveSleepWarning:I = 0x3a

.field static final blacklist TRANSACTION_showMediaOutputSwitcher:I = 0x51

.field static final greylist-max-o TRANSACTION_showPictureInPictureMenu:I = 0x21

.field static final greylist-max-o TRANSACTION_showPinningEnterExitToast:I = 0x2b

.field static final greylist-max-o TRANSACTION_showPinningEscapeToast:I = 0x2c

.field static final blacklist TRANSACTION_showRearDisplayDialog:I = 0x4d

.field static final greylist-max-o TRANSACTION_showRecentApps:I = 0xc

.field static final greylist-max-o TRANSACTION_showScreenPinningRequest:I = 0x13

.field static final greylist-max-o TRANSACTION_showShutdownUi:I = 0x2d

.field static final blacklist TRANSACTION_showToast:I = 0x3c

.field static final blacklist TRANSACTION_showTransient:I = 0x38

.field static final greylist-max-o TRANSACTION_showWirelessChargingAnimation:I = 0x9

.field static final greylist-max-o TRANSACTION_startAssist:I = 0x1d

.field static final blacklist TRANSACTION_startTracing:I = 0x3e

.field static final blacklist TRANSACTION_stopTracing:I = 0x3f

.field static final blacklist TRANSACTION_suppressAmbientDisplay:I = 0x40

.field static final greylist-max-o TRANSACTION_toggleKeyboardShortcutsMenu:I = 0x17

.field static final blacklist TRANSACTION_toggleNotificationsPanel:I = 0x8

.field static final greylist-max-o TRANSACTION_toggleRecentApps:I = 0xe

.field static final greylist-max-o TRANSACTION_toggleSplitScreen:I = 0x10

.field static final blacklist TRANSACTION_toggleTaskbar:I = 0xf

.field static final blacklist TRANSACTION_unregisterNearbyMediaDevicesProvider:I = 0x4b

.field static final blacklist TRANSACTION_updateMediaTapToTransferReceiverDisplay:I = 0x49

.field static final blacklist TRANSACTION_updateMediaTapToTransferSenderDisplay:I = 0x48


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 450
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 451
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;
    .registers 3

    .line 459
    if-nez p0, :cond_4

    .line 460
    const/4 p0, 0x0

    return-object p0

    .line 462
    :cond_4
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 463
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_13

    .line 464
    check-cast v0, Lcom/android/internal/statusbar/IStatusBar;

    return-object v0

    .line 466
    :cond_13
    new-instance v0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 475
    packed-switch p0, :pswitch_data_fe

    .line 811
    const/4 p0, 0x0

    return-object p0

    .line 807
    :pswitch_5
    const-string p0, "restartSystemUI"

    return-object p0

    .line 803
    :pswitch_8
    const-string p0, "moveFocusedTaskToDesktop"

    return-object p0

    .line 799
    :pswitch_b
    const-string p0, "showMediaOutputSwitcher"

    return-object p0

    .line 795
    :pswitch_e
    const-string p0, "setSplitscreenFocus"

    return-object p0

    .line 791
    :pswitch_11
    const-string p0, "moveFocusedTaskToStageSplit"

    return-object p0

    .line 787
    :pswitch_14
    const-string p0, "moveFocusedTaskToFullscreen"

    return-object p0

    .line 783
    :pswitch_17
    const-string p0, "showRearDisplayDialog"

    return-object p0

    .line 779
    :pswitch_1a
    const-string p0, "dumpProto"

    return-object p0

    .line 775
    :pswitch_1d
    const-string p0, "unregisterNearbyMediaDevicesProvider"

    return-object p0

    .line 771
    :pswitch_20
    const-string p0, "registerNearbyMediaDevicesProvider"

    return-object p0

    .line 767
    :pswitch_23
    const-string p0, "updateMediaTapToTransferReceiverDisplay"

    return-object p0

    .line 763
    :pswitch_26
    const-string p0, "updateMediaTapToTransferSenderDisplay"

    return-object p0

    .line 759
    :pswitch_29
    const-string p0, "cancelRequestAddTile"

    return-object p0

    .line 755
    :pswitch_2c
    const-string p0, "requestAddTile"

    return-object p0

    .line 751
    :pswitch_2f
    const-string p0, "requestTileServiceListeningState"

    return-object p0

    .line 747
    :pswitch_32
    const-string p0, "runGcForTest"

    return-object p0

    .line 743
    :pswitch_35
    const-string p0, "setNavigationBarLumaSamplingEnabled"

    return-object p0

    .line 739
    :pswitch_38
    const-string p0, "passThroughShellCommand"

    return-object p0

    .line 735
    :pswitch_3b
    const-string p0, "requestMagnificationConnection"

    return-object p0

    .line 731
    :pswitch_3e
    const-string p0, "suppressAmbientDisplay"

    return-object p0

    .line 727
    :pswitch_41
    const-string p0, "stopTracing"

    return-object p0

    .line 723
    :pswitch_44
    const-string p0, "startTracing"

    return-object p0

    .line 719
    :pswitch_47
    const-string p0, "hideToast"

    return-object p0

    .line 715
    :pswitch_4a
    const-string p0, "showToast"

    return-object p0

    .line 711
    :pswitch_4d
    const-string p0, "dismissInattentiveSleepWarning"

    return-object p0

    .line 707
    :pswitch_50
    const-string p0, "showInattentiveSleepWarning"

    return-object p0

    .line 703
    :pswitch_53
    const-string p0, "abortTransient"

    return-object p0

    .line 699
    :pswitch_56
    const-string p0, "showTransient"

    return-object p0

    .line 695
    :pswitch_59
    const-string p0, "onSystemBarAttributesChanged"

    return-object p0

    .line 691
    :pswitch_5c
    const-string p0, "onDisplayRemoveSystemDecorations"

    return-object p0

    .line 687
    :pswitch_5f
    const-string p0, "onDisplayAddSystemDecorations"

    return-object p0

    .line 683
    :pswitch_62
    const-string p0, "setUdfpsRefreshRateCallback"

    return-object p0

    .line 679
    :pswitch_65
    const-string p0, "setBiometicContextListener"

    return-object p0

    .line 675
    :pswitch_68
    const-string p0, "hideAuthenticationDialog"

    return-object p0

    .line 671
    :pswitch_6b
    const-string p0, "onBiometricError"

    return-object p0

    .line 667
    :pswitch_6e
    const-string p0, "onBiometricHelp"

    return-object p0

    .line 663
    :pswitch_71
    const-string p0, "onBiometricAuthenticated"

    return-object p0

    .line 659
    :pswitch_74
    const-string p0, "showAuthenticationDialog"

    return-object p0

    .line 655
    :pswitch_77
    const-string p0, "showShutdownUi"

    return-object p0

    .line 651
    :pswitch_7a
    const-string p0, "showPinningEscapeToast"

    return-object p0

    .line 647
    :pswitch_7d
    const-string p0, "showPinningEnterExitToast"

    return-object p0

    .line 643
    :pswitch_80
    const-string p0, "handleSystemKey"

    return-object p0

    .line 639
    :pswitch_83
    const-string p0, "clickQsTile"

    return-object p0

    .line 635
    :pswitch_86
    const-string p0, "setQsTiles"

    return-object p0

    .line 631
    :pswitch_89
    const-string p0, "remQsTile"

    return-object p0

    .line 627
    :pswitch_8c
    const-string p0, "addQsTileToFrontOrEnd"

    return-object p0

    .line 623
    :pswitch_8f
    const-string p0, "addQsTile"

    return-object p0

    .line 619
    :pswitch_92
    const-string p0, "setTopAppHidesStatusBar"

    return-object p0

    .line 615
    :pswitch_95
    const-string p0, "onProposedRotationChanged"

    return-object p0

    .line 611
    :pswitch_98
    const-string p0, "showGlobalActionsMenu"

    return-object p0

    .line 607
    :pswitch_9b
    const-string p0, "showPictureInPictureMenu"

    return-object p0

    .line 603
    :pswitch_9e
    const-string p0, "onEmergencyActionLaunchGestureDetected"

    return-object p0

    .line 599
    :pswitch_a1
    const-string p0, "onWalletLaunchGestureDetected"

    return-object p0

    .line 595
    :pswitch_a4
    const-string p0, "onCameraLaunchGestureDetected"

    return-object p0

    .line 591
    :pswitch_a7
    const-string p0, "startAssist"

    return-object p0

    .line 587
    :pswitch_aa
    const-string p0, "showAssistDisclosure"

    return-object p0

    .line 583
    :pswitch_ad
    const-string p0, "appTransitionFinished"

    return-object p0

    .line 579
    :pswitch_b0
    const-string p0, "appTransitionStarting"

    return-object p0

    .line 575
    :pswitch_b3
    const-string p0, "appTransitionCancelled"

    return-object p0

    .line 571
    :pswitch_b6
    const-string p0, "appTransitionPending"

    return-object p0

    .line 567
    :pswitch_b9
    const-string p0, "toggleKeyboardShortcutsMenu"

    return-object p0

    .line 563
    :pswitch_bc
    const-string p0, "dismissKeyboardShortcutsMenu"

    return-object p0

    .line 559
    :pswitch_bf
    const-string p0, "immersiveModeChanged"

    return-object p0

    .line 555
    :pswitch_c2
    const-string p0, "confirmImmersivePrompt"

    return-object p0

    .line 551
    :pswitch_c5
    const-string p0, "showScreenPinningRequest"

    return-object p0

    .line 547
    :pswitch_c8
    const-string p0, "cancelPreloadRecentApps"

    return-object p0

    .line 543
    :pswitch_cb
    const-string p0, "preloadRecentApps"

    return-object p0

    .line 539
    :pswitch_ce
    const-string p0, "toggleSplitScreen"

    return-object p0

    .line 535
    :pswitch_d1
    const-string p0, "toggleTaskbar"

    return-object p0

    .line 531
    :pswitch_d4
    const-string p0, "toggleRecentApps"

    return-object p0

    .line 527
    :pswitch_d7
    const-string p0, "hideRecentApps"

    return-object p0

    .line 523
    :pswitch_da
    const-string p0, "showRecentApps"

    return-object p0

    .line 519
    :pswitch_dd
    const-string p0, "setWindowState"

    return-object p0

    .line 515
    :pswitch_e0
    const-string p0, "setImeWindowStatus"

    return-object p0

    .line 511
    :pswitch_e3
    const-string p0, "showWirelessChargingAnimation"

    return-object p0

    .line 507
    :pswitch_e6
    const-string p0, "toggleNotificationsPanel"

    return-object p0

    .line 503
    :pswitch_e9
    const-string p0, "animateCollapsePanels"

    return-object p0

    .line 499
    :pswitch_ec
    const-string p0, "animateExpandSettingsPanel"

    return-object p0

    .line 495
    :pswitch_ef
    const-string p0, "animateExpandNotificationsPanel"

    return-object p0

    .line 491
    :pswitch_f2
    const-string p0, "disableForAllDisplays"

    return-object p0

    .line 487
    :pswitch_f5
    const-string p0, "disable"

    return-object p0

    .line 483
    :pswitch_f8
    const-string p0, "removeIcon"

    return-object p0

    .line 479
    :pswitch_fb
    const-string p0, "setIcon"

    return-object p0

    :pswitch_data_fe
    .packed-switch 0x1
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


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 470
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2903
    const/16 v0, 0x52

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 818
    invoke-static {p1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 822
    move-object/from16 v2, p2

    .line 823
    const-string v3, "com.android.internal.statusbar.IStatusBar"

    const/4 v12, 0x1

    if-lt p1, v12, :cond_f

    const v4, 0xffffff

    if-gt p1, v4, :cond_f

    .line 824
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 826
    :cond_f
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_1a

    .line 827
    move-object/from16 v4, p3

    invoke-virtual {v4, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 828
    return v12

    .line 830
    :cond_1a
    move-object/from16 v4, p3

    packed-switch p1, :pswitch_data_526

    .line 1559
    move-object v13, v2

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1554
    :pswitch_25
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->restartSystemUI()V

    .line 1555
    goto/16 :goto_525

    .line 1547
    :pswitch_2a
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1548
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1549
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->moveFocusedTaskToDesktop(I)V

    .line 1550
    goto/16 :goto_525

    .line 1535
    :pswitch_36
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1537
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 1539
    sget-object v4, Landroid/media/session/MediaSession$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/session/MediaSession$Token;

    .line 1540
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1541
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showMediaOutputSwitcher(Ljava/lang/String;Landroid/os/UserHandle;Landroid/media/session/MediaSession$Token;)V

    .line 1542
    goto/16 :goto_525

    .line 1527
    :pswitch_52
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1528
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1529
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setSplitscreenFocus(Z)V

    .line 1530
    goto/16 :goto_525

    .line 1517
    :pswitch_5e
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1519
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1520
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1521
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->moveFocusedTaskToStageSplit(IZ)V

    .line 1522
    goto/16 :goto_525

    .line 1509
    :pswitch_6e
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1510
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1511
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->moveFocusedTaskToFullscreen(I)V

    .line 1512
    goto/16 :goto_525

    .line 1501
    :pswitch_7a
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1502
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1503
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showRearDisplayDialog(I)V

    .line 1504
    goto/16 :goto_525

    .line 1491
    :pswitch_86
    invoke-virtual {v2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1493
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 1494
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1495
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->dumpProto([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 1496
    goto/16 :goto_525

    .line 1483
    :pswitch_9a
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/INearbyMediaDevicesProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/INearbyMediaDevicesProvider;

    move-result-object v1

    .line 1484
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1485
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->unregisterNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V

    .line 1486
    goto/16 :goto_525

    .line 1475
    :pswitch_aa
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/INearbyMediaDevicesProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/INearbyMediaDevicesProvider;

    move-result-object v1

    .line 1476
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1477
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->registerNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V

    .line 1478
    goto/16 :goto_525

    .line 1461
    :pswitch_ba
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1463
    sget-object v3, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRoute2Info;

    .line 1465
    sget-object v4, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Icon;

    .line 1467
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 1468
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1469
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V

    .line 1470
    goto/16 :goto_525

    .line 1449
    :pswitch_de
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1451
    sget-object v3, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRoute2Info;

    .line 1453
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/statusbar/IUndoMediaTransferCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IUndoMediaTransferCallback;

    move-result-object v4

    .line 1454
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1455
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/statusbar/IStatusBar$Stub;->updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V

    .line 1456
    goto/16 :goto_525

    .line 1441
    :pswitch_fa
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1442
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1443
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->cancelRequestAddTile(Ljava/lang/String;)V

    .line 1444
    goto/16 :goto_525

    .line 1423
    :pswitch_106
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1425
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1427
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 1429
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 1431
    sget-object v6, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Icon;

    .line 1433
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/statusbar/IAddTileResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IAddTileResultCallback;

    move-result-object v7

    .line 1434
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1435
    move-object v0, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/statusbar/IStatusBar$Stub;->requestAddTile(ILandroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Lcom/android/internal/statusbar/IAddTileResultCallback;)V

    .line 1436
    goto/16 :goto_525

    .line 1415
    :pswitch_140
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1416
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1417
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->requestTileServiceListeningState(Landroid/content/ComponentName;)V

    .line 1418
    goto/16 :goto_525

    .line 1409
    :pswitch_150
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->runGcForTest()V

    .line 1410
    goto/16 :goto_525

    .line 1400
    :pswitch_155
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1402
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1403
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1404
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setNavigationBarLumaSamplingEnabled(IZ)V

    .line 1405
    goto/16 :goto_525

    .line 1390
    :pswitch_165
    invoke-virtual {v2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1392
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 1393
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1394
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->passThroughShellCommand([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 1395
    goto/16 :goto_525

    .line 1382
    :pswitch_179
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1383
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1384
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->requestMagnificationConnection(Z)V

    .line 1385
    goto/16 :goto_525

    .line 1374
    :pswitch_185
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1375
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1376
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->suppressAmbientDisplay(Z)V

    .line 1377
    goto/16 :goto_525

    .line 1368
    :pswitch_191
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->stopTracing()V

    .line 1369
    goto/16 :goto_525

    .line 1363
    :pswitch_196
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->startTracing()V

    .line 1364
    goto/16 :goto_525

    .line 1354
    :pswitch_19b
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1356
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1357
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1358
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideToast(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1359
    goto/16 :goto_525

    .line 1332
    :pswitch_1ab
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1334
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1336
    move-object v4, v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1338
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 1340
    move-object v2, v4

    move-object v4, v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 1342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1344
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/app/ITransientNotificationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotificationCallback;

    move-result-object v8

    .line 1346
    move-object/from16 v9, p2

    move-object v7, v8

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1347
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1348
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showToast(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/IBinder;ILandroid/app/ITransientNotificationCallback;I)V

    .line 1349
    goto/16 :goto_525

    .line 1324
    :pswitch_1e2
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1325
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1326
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->dismissInattentiveSleepWarning(Z)V

    .line 1327
    goto/16 :goto_525

    .line 1318
    :pswitch_1ef
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showInattentiveSleepWarning()V

    .line 1319
    goto/16 :goto_525

    .line 1309
    :pswitch_1f4
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1311
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1312
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1313
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->abortTransient(II)V

    .line 1314
    goto/16 :goto_525

    .line 1297
    :pswitch_205
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1299
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1301
    invoke-virtual {v9}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1302
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1303
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showTransient(IIZ)V

    .line 1304
    goto/16 :goto_525

    .line 1275
    :pswitch_21a
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1277
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1279
    sget-object v3, Lcom/android/internal/view/AppearanceRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/internal/view/AppearanceRegion;

    .line 1281
    invoke-virtual {v9}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1283
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1285
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1287
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1289
    sget-object v8, Lcom/android/internal/statusbar/LetterboxDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v8}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/internal/statusbar/LetterboxDetails;

    .line 1290
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1291
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V

    .line 1292
    goto/16 :goto_525

    .line 1267
    :pswitch_24c
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1268
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1269
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onDisplayRemoveSystemDecorations(I)V

    .line 1270
    goto/16 :goto_525

    .line 1259
    :pswitch_259
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1260
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1261
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onDisplayAddSystemDecorations(I)V

    .line 1262
    goto/16 :goto_525

    .line 1251
    :pswitch_266
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;

    move-result-object v1

    .line 1252
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1253
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setUdfpsRefreshRateCallback(Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;)V

    .line 1254
    goto/16 :goto_525

    .line 1243
    :pswitch_277
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/IBiometricContextListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricContextListener;

    move-result-object v1

    .line 1244
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1245
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V

    .line 1246
    goto/16 :goto_525

    .line 1235
    :pswitch_288
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1236
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1237
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideAuthenticationDialog(J)V

    .line 1238
    goto/16 :goto_525

    .line 1223
    :pswitch_295
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1225
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1227
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1228
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1229
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onBiometricError(III)V

    .line 1230
    goto/16 :goto_525

    .line 1213
    :pswitch_2aa
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1215
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1216
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1217
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onBiometricHelp(ILjava/lang/String;)V

    .line 1218
    goto/16 :goto_525

    .line 1205
    :pswitch_2bb
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1206
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1207
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onBiometricAuthenticated(I)V

    .line 1208
    goto/16 :goto_525

    .line 1181
    :pswitch_2c8
    move-object v9, v2

    sget-object v1, Landroid/hardware/biometrics/PromptInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/PromptInfo;

    .line 1183
    invoke-virtual {v9}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    move-result-object v2

    .line 1185
    invoke-virtual {v9}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 1187
    invoke-virtual {v9}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1189
    invoke-virtual {v9}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1191
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1193
    invoke-virtual {v9}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 1195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1197
    move-object/from16 v13, p2

    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 1198
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1199
    move-object v0, p0

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;J)V

    .line 1200
    goto/16 :goto_525

    .line 1169
    :pswitch_300
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1171
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1173
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1174
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1175
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showShutdownUi(ZLjava/lang/String;Z)V

    .line 1176
    goto/16 :goto_525

    .line 1163
    :pswitch_315
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPinningEscapeToast()V

    .line 1164
    goto/16 :goto_525

    .line 1156
    :pswitch_31a
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1157
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1158
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPinningEnterExitToast(Z)V

    .line 1159
    goto/16 :goto_525

    .line 1148
    :pswitch_327
    move-object v13, v2

    sget-object v1, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 1149
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1150
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->handleSystemKey(Landroid/view/KeyEvent;)V

    .line 1151
    goto/16 :goto_525

    .line 1140
    :pswitch_338
    move-object v13, v2

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1141
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1142
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->clickQsTile(Landroid/content/ComponentName;)V

    .line 1143
    goto/16 :goto_525

    .line 1132
    :pswitch_349
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1133
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1134
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setQsTiles([Ljava/lang/String;)V

    .line 1135
    goto/16 :goto_525

    .line 1124
    :pswitch_356
    move-object v13, v2

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1125
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1126
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->remQsTile(Landroid/content/ComponentName;)V

    .line 1127
    goto/16 :goto_525

    .line 1114
    :pswitch_367
    move-object v13, v2

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1116
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1117
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1118
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->addQsTileToFrontOrEnd(Landroid/content/ComponentName;Z)V

    .line 1119
    goto/16 :goto_525

    .line 1106
    :pswitch_37c
    move-object v13, v2

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1107
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1108
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->addQsTile(Landroid/content/ComponentName;)V

    .line 1109
    goto/16 :goto_525

    .line 1098
    :pswitch_38d
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1099
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1100
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setTopAppHidesStatusBar(Z)V

    .line 1101
    goto/16 :goto_525

    .line 1088
    :pswitch_39a
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1090
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1091
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1092
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onProposedRotationChanged(IZ)V

    .line 1093
    goto/16 :goto_525

    .line 1082
    :pswitch_3ab
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showGlobalActionsMenu()V

    .line 1083
    goto/16 :goto_525

    .line 1077
    :pswitch_3b0
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPictureInPictureMenu()V

    .line 1078
    goto/16 :goto_525

    .line 1072
    :pswitch_3b5
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onEmergencyActionLaunchGestureDetected()V

    .line 1073
    goto/16 :goto_525

    .line 1067
    :pswitch_3ba
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onWalletLaunchGestureDetected()V

    .line 1068
    goto/16 :goto_525

    .line 1060
    :pswitch_3bf
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1061
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1062
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onCameraLaunchGestureDetected(I)V

    .line 1063
    goto/16 :goto_525

    .line 1052
    :pswitch_3cc
    move-object v13, v2

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1053
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1054
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->startAssist(Landroid/os/Bundle;)V

    .line 1055
    goto/16 :goto_525

    .line 1046
    :pswitch_3dd
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showAssistDisclosure()V

    .line 1047
    goto/16 :goto_525

    .line 1039
    :pswitch_3e2
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1040
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1041
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionFinished(I)V

    .line 1042
    goto/16 :goto_525

    .line 1027
    :pswitch_3ef
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1029
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1031
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 1032
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1033
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionStarting(IJJ)V

    .line 1034
    goto/16 :goto_525

    .line 1019
    :pswitch_405
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1020
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1021
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionCancelled(I)V

    .line 1022
    goto/16 :goto_525

    .line 1011
    :pswitch_412
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1012
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1013
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionPending(I)V

    .line 1014
    goto/16 :goto_525

    .line 1003
    :pswitch_41f
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1004
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1005
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleKeyboardShortcutsMenu(I)V

    .line 1006
    goto/16 :goto_525

    .line 997
    :pswitch_42c
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->dismissKeyboardShortcutsMenu()V

    .line 998
    goto/16 :goto_525

    .line 986
    :pswitch_431
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 988
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 990
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 991
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 992
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->immersiveModeChanged(IZI)V

    .line 993
    goto/16 :goto_525

    .line 980
    :pswitch_446
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->confirmImmersivePrompt()V

    .line 981
    goto/16 :goto_525

    .line 973
    :pswitch_44b
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 974
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 975
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showScreenPinningRequest(I)V

    .line 976
    goto/16 :goto_525

    .line 967
    :pswitch_458
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->cancelPreloadRecentApps()V

    .line 968
    goto/16 :goto_525

    .line 962
    :pswitch_45d
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->preloadRecentApps()V

    .line 963
    goto/16 :goto_525

    .line 957
    :pswitch_462
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleSplitScreen()V

    .line 958
    goto/16 :goto_525

    .line 952
    :pswitch_467
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleTaskbar()V

    .line 953
    goto/16 :goto_525

    .line 947
    :pswitch_46c
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleRecentApps()V

    .line 948
    goto/16 :goto_525

    .line 938
    :pswitch_471
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 940
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 941
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 942
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideRecentApps(ZZ)V

    .line 943
    goto/16 :goto_525

    .line 930
    :pswitch_482
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 931
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 932
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showRecentApps(Z)V

    .line 933
    goto/16 :goto_525

    .line 918
    :pswitch_48f
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 920
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 922
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 923
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 924
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setWindowState(III)V

    .line 925
    goto/16 :goto_525

    .line 904
    :pswitch_4a4
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 906
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 908
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 910
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 911
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 912
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setImeWindowStatus(IIIZ)V

    .line 913
    goto/16 :goto_525

    .line 896
    :pswitch_4bd
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 897
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 898
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showWirelessChargingAnimation(I)V

    .line 899
    goto :goto_525

    .line 890
    :pswitch_4c9
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleNotificationsPanel()V

    .line 891
    goto :goto_525

    .line 885
    :pswitch_4cd
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateCollapsePanels()V

    .line 886
    goto :goto_525

    .line 878
    :pswitch_4d1
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 879
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 880
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandSettingsPanel(Ljava/lang/String;)V

    .line 881
    goto :goto_525

    .line 872
    :pswitch_4dd
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandNotificationsPanel()V

    .line 873
    goto :goto_525

    .line 865
    :pswitch_4e1
    move-object v13, v2

    sget-object v1, Lcom/android/internal/statusbar/DisableStates;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/DisableStates;

    .line 866
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 867
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->disableForAllDisplays(Lcom/android/internal/statusbar/DisableStates;)V

    .line 868
    goto :goto_525

    .line 853
    :pswitch_4f1
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 855
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 857
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 858
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 859
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->disable(III)V

    .line 860
    goto :goto_525

    .line 845
    :pswitch_505
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 846
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 847
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->removeIcon(Ljava/lang/String;)V

    .line 848
    goto :goto_525

    .line 835
    :pswitch_511
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 837
    sget-object v2, Lcom/android/internal/statusbar/StatusBarIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 838
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 839
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    .line 840
    nop

    .line 1562
    :goto_525
    return v12

    :pswitch_data_526
    .packed-switch 0x1
        :pswitch_511
        :pswitch_505
        :pswitch_4f1
        :pswitch_4e1
        :pswitch_4dd
        :pswitch_4d1
        :pswitch_4cd
        :pswitch_4c9
        :pswitch_4bd
        :pswitch_4a4
        :pswitch_48f
        :pswitch_482
        :pswitch_471
        :pswitch_46c
        :pswitch_467
        :pswitch_462
        :pswitch_45d
        :pswitch_458
        :pswitch_44b
        :pswitch_446
        :pswitch_431
        :pswitch_42c
        :pswitch_41f
        :pswitch_412
        :pswitch_405
        :pswitch_3ef
        :pswitch_3e2
        :pswitch_3dd
        :pswitch_3cc
        :pswitch_3bf
        :pswitch_3ba
        :pswitch_3b5
        :pswitch_3b0
        :pswitch_3ab
        :pswitch_39a
        :pswitch_38d
        :pswitch_37c
        :pswitch_367
        :pswitch_356
        :pswitch_349
        :pswitch_338
        :pswitch_327
        :pswitch_31a
        :pswitch_315
        :pswitch_300
        :pswitch_2c8
        :pswitch_2bb
        :pswitch_2aa
        :pswitch_295
        :pswitch_288
        :pswitch_277
        :pswitch_266
        :pswitch_259
        :pswitch_24c
        :pswitch_21a
        :pswitch_205
        :pswitch_1f4
        :pswitch_1ef
        :pswitch_1e2
        :pswitch_1ab
        :pswitch_19b
        :pswitch_196
        :pswitch_191
        :pswitch_185
        :pswitch_179
        :pswitch_165
        :pswitch_155
        :pswitch_150
        :pswitch_140
        :pswitch_106
        :pswitch_fa
        :pswitch_de
        :pswitch_ba
        :pswitch_aa
        :pswitch_9a
        :pswitch_86
        :pswitch_7a
        :pswitch_6e
        :pswitch_5e
        :pswitch_52
        :pswitch_36
        :pswitch_2a
        :pswitch_25
    .end packed-switch
.end method
