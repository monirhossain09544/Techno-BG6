.class public abstract Lcom/android/internal/statusbar/IStatusBarService$Stub;
.super Landroid/os/Binder;
.source "IStatusBarService.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBarService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBarService"

.field static final greylist-max-o TRANSACTION_addTile:I = 0x29

.field static final blacklist TRANSACTION_cancelRequestAddTile:I = 0x3f

.field static final blacklist TRANSACTION_clearInlineReplyUriPermissions:I = 0x22

.field static final greylist-max-o TRANSACTION_clearNotificationEffects:I = 0x12

.field static final greylist-max-o TRANSACTION_clickTile:I = 0x2b

.field static final greylist-max-o TRANSACTION_collapsePanels:I = 0x2

.field static final greylist-max-o TRANSACTION_disable:I = 0x4

.field static final greylist-max-o TRANSACTION_disable2:I = 0x6

.field static final greylist-max-o TRANSACTION_disable2ForUser:I = 0x7

.field static final greylist-max-o TRANSACTION_disableForUser:I = 0x5

.field static final blacklist TRANSACTION_dismissInattentiveSleepWarning:I = 0x38

.field static final greylist-max-o TRANSACTION_expandNotificationsPanel:I = 0x1

.field static final greylist-max-o TRANSACTION_expandSettingsPanel:I = 0xd

.field static final blacklist TRANSACTION_getDisableFlags:I = 0x8

.field static final blacklist TRANSACTION_getLastSystemKey:I = 0x2d

.field static final blacklist TRANSACTION_getNavBarMode:I = 0x41

.field static final blacklist TRANSACTION_grantInlineReplyUriPermission:I = 0x21

.field static final greylist-max-o TRANSACTION_handleSystemKey:I = 0x2c

.field static final blacklist TRANSACTION_hideAuthenticationDialog:I = 0x34

.field static final blacklist TRANSACTION_hideCurrentInputMethodForBubbles:I = 0x20

.field static final blacklist TRANSACTION_isTracing:I = 0x3b

.field static final blacklist TRANSACTION_onBiometricAuthenticated:I = 0x31

.field static final blacklist TRANSACTION_onBiometricError:I = 0x33

.field static final blacklist TRANSACTION_onBiometricHelp:I = 0x32

.field static final blacklist TRANSACTION_onBubbleMetadataFlagChanged:I = 0x1f

.field static final greylist-max-o TRANSACTION_onClearAllNotifications:I = 0x16

.field static final greylist-max-o TRANSACTION_onGlobalActionsHidden:I = 0x25

.field static final greylist-max-o TRANSACTION_onGlobalActionsShown:I = 0x24

.field static final greylist-max-o TRANSACTION_onNotificationActionClick:I = 0x14

.field static final blacklist TRANSACTION_onNotificationBubbleChanged:I = 0x1e

.field static final greylist-max-o TRANSACTION_onNotificationClear:I = 0x17

.field static final greylist-max-o TRANSACTION_onNotificationClick:I = 0x13

.field static final greylist-max-o TRANSACTION_onNotificationDirectReplied:I = 0x1a

.field static final greylist-max-o TRANSACTION_onNotificationError:I = 0x15

.field static final greylist-max-o TRANSACTION_onNotificationExpansionChanged:I = 0x19

.field static final blacklist TRANSACTION_onNotificationFeedbackReceived:I = 0x23

.field static final greylist-max-o TRANSACTION_onNotificationSettingsViewed:I = 0x1d

.field static final greylist-max-o TRANSACTION_onNotificationSmartReplySent:I = 0x1c

.field static final blacklist TRANSACTION_onNotificationSmartSuggestionsAdded:I = 0x1b

.field static final greylist-max-o TRANSACTION_onNotificationVisibilityChanged:I = 0x18

.field static final greylist-max-o TRANSACTION_onPanelHidden:I = 0x11

.field static final greylist-max-o TRANSACTION_onPanelRevealed:I = 0x10

.field static final blacklist TRANSACTION_onSessionEnded:I = 0x45

.field static final blacklist TRANSACTION_onSessionStarted:I = 0x44

.field static final greylist-max-o TRANSACTION_reboot:I = 0x27

.field static final blacklist TRANSACTION_registerNearbyMediaDevicesProvider:I = 0x48

.field static final blacklist TRANSACTION_registerSessionListener:I = 0x42

.field static final greylist-max-o TRANSACTION_registerStatusBar:I = 0xe

.field static final blacklist TRANSACTION_registerStatusBarForAllDisplays:I = 0xf

.field static final greylist-max-o TRANSACTION_remTile:I = 0x2a

.field static final greylist-max-o TRANSACTION_removeIcon:I = 0xb

.field static final blacklist TRANSACTION_requestAddTile:I = 0x3e

.field static final blacklist TRANSACTION_requestTileServiceListeningState:I = 0x3d

.field static final blacklist TRANSACTION_restart:I = 0x28

.field static final blacklist TRANSACTION_restartSystemUI:I = 0x4d

.field static final blacklist TRANSACTION_setBiometicContextListener:I = 0x35

.field static final greylist-max-o TRANSACTION_setIcon:I = 0x9

.field static final greylist-max-o TRANSACTION_setIconVisibility:I = 0xa

.field static final greylist-max-o TRANSACTION_setImeWindowStatus:I = 0xc

.field static final blacklist TRANSACTION_setNavBarMode:I = 0x40

.field static final blacklist TRANSACTION_setUdfpsRefreshRateCallback:I = 0x36

.field static final blacklist TRANSACTION_showAuthenticationDialog:I = 0x30

.field static final blacklist TRANSACTION_showInattentiveSleepWarning:I = 0x37

.field static final greylist-max-o TRANSACTION_showPinningEnterExitToast:I = 0x2e

.field static final greylist-max-o TRANSACTION_showPinningEscapeToast:I = 0x2f

.field static final blacklist TRANSACTION_showRearDisplayDialog:I = 0x4a

.field static final greylist-max-o TRANSACTION_shutdown:I = 0x26

.field static final blacklist TRANSACTION_startAssist:I = 0x4b

.field static final blacklist TRANSACTION_startTracing:I = 0x39

.field static final blacklist TRANSACTION_stopTracing:I = 0x3a

.field static final blacklist TRANSACTION_suppressAmbientDisplay:I = 0x3c

.field static final greylist-max-o TRANSACTION_togglePanel:I = 0x3

.field static final blacklist TRANSACTION_toggleRecentApps:I = 0x4c

.field static final blacklist TRANSACTION_unregisterNearbyMediaDevicesProvider:I = 0x49

.field static final blacklist TRANSACTION_unregisterSessionListener:I = 0x43

.field static final blacklist TRANSACTION_updateMediaTapToTransferReceiverDisplay:I = 0x47

.field static final blacklist TRANSACTION_updateMediaTapToTransferSenderDisplay:I = 0x46


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 325
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 326
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    .line 334
    if-nez p0, :cond_4

    .line 335
    const/4 p0, 0x0

    return-object p0

    .line 337
    :cond_4
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v1, :cond_13

    .line 339
    check-cast v0, Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0

    .line 341
    :cond_13
    new-instance v0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 350
    packed-switch p0, :pswitch_data_ec

    .line 662
    const/4 p0, 0x0

    return-object p0

    .line 658
    :pswitch_5
    const-string p0, "restartSystemUI"

    return-object p0

    .line 654
    :pswitch_8
    const-string p0, "toggleRecentApps"

    return-object p0

    .line 650
    :pswitch_b
    const-string p0, "startAssist"

    return-object p0

    .line 646
    :pswitch_e
    const-string p0, "showRearDisplayDialog"

    return-object p0

    .line 642
    :pswitch_11
    const-string p0, "unregisterNearbyMediaDevicesProvider"

    return-object p0

    .line 638
    :pswitch_14
    const-string p0, "registerNearbyMediaDevicesProvider"

    return-object p0

    .line 634
    :pswitch_17
    const-string p0, "updateMediaTapToTransferReceiverDisplay"

    return-object p0

    .line 630
    :pswitch_1a
    const-string p0, "updateMediaTapToTransferSenderDisplay"

    return-object p0

    .line 626
    :pswitch_1d
    const-string p0, "onSessionEnded"

    return-object p0

    .line 622
    :pswitch_20
    const-string p0, "onSessionStarted"

    return-object p0

    .line 618
    :pswitch_23
    const-string p0, "unregisterSessionListener"

    return-object p0

    .line 614
    :pswitch_26
    const-string p0, "registerSessionListener"

    return-object p0

    .line 610
    :pswitch_29
    const-string p0, "getNavBarMode"

    return-object p0

    .line 606
    :pswitch_2c
    const-string p0, "setNavBarMode"

    return-object p0

    .line 602
    :pswitch_2f
    const-string p0, "cancelRequestAddTile"

    return-object p0

    .line 598
    :pswitch_32
    const-string p0, "requestAddTile"

    return-object p0

    .line 594
    :pswitch_35
    const-string p0, "requestTileServiceListeningState"

    return-object p0

    .line 590
    :pswitch_38
    const-string p0, "suppressAmbientDisplay"

    return-object p0

    .line 586
    :pswitch_3b
    const-string p0, "isTracing"

    return-object p0

    .line 582
    :pswitch_3e
    const-string p0, "stopTracing"

    return-object p0

    .line 578
    :pswitch_41
    const-string p0, "startTracing"

    return-object p0

    .line 574
    :pswitch_44
    const-string p0, "dismissInattentiveSleepWarning"

    return-object p0

    .line 570
    :pswitch_47
    const-string p0, "showInattentiveSleepWarning"

    return-object p0

    .line 566
    :pswitch_4a
    const-string p0, "setUdfpsRefreshRateCallback"

    return-object p0

    .line 562
    :pswitch_4d
    const-string p0, "setBiometicContextListener"

    return-object p0

    .line 558
    :pswitch_50
    const-string p0, "hideAuthenticationDialog"

    return-object p0

    .line 554
    :pswitch_53
    const-string p0, "onBiometricError"

    return-object p0

    .line 550
    :pswitch_56
    const-string p0, "onBiometricHelp"

    return-object p0

    .line 546
    :pswitch_59
    const-string p0, "onBiometricAuthenticated"

    return-object p0

    .line 542
    :pswitch_5c
    const-string p0, "showAuthenticationDialog"

    return-object p0

    .line 538
    :pswitch_5f
    const-string p0, "showPinningEscapeToast"

    return-object p0

    .line 534
    :pswitch_62
    const-string p0, "showPinningEnterExitToast"

    return-object p0

    .line 530
    :pswitch_65
    const-string p0, "getLastSystemKey"

    return-object p0

    .line 526
    :pswitch_68
    const-string p0, "handleSystemKey"

    return-object p0

    .line 522
    :pswitch_6b
    const-string p0, "clickTile"

    return-object p0

    .line 518
    :pswitch_6e
    const-string p0, "remTile"

    return-object p0

    .line 514
    :pswitch_71
    const-string p0, "addTile"

    return-object p0

    .line 510
    :pswitch_74
    const-string p0, "restart"

    return-object p0

    .line 506
    :pswitch_77
    const-string p0, "reboot"

    return-object p0

    .line 502
    :pswitch_7a
    const-string p0, "shutdown"

    return-object p0

    .line 498
    :pswitch_7d
    const-string p0, "onGlobalActionsHidden"

    return-object p0

    .line 494
    :pswitch_80
    const-string p0, "onGlobalActionsShown"

    return-object p0

    .line 490
    :pswitch_83
    const-string p0, "onNotificationFeedbackReceived"

    return-object p0

    .line 486
    :pswitch_86
    const-string p0, "clearInlineReplyUriPermissions"

    return-object p0

    .line 482
    :pswitch_89
    const-string p0, "grantInlineReplyUriPermission"

    return-object p0

    .line 478
    :pswitch_8c
    const-string p0, "hideCurrentInputMethodForBubbles"

    return-object p0

    .line 474
    :pswitch_8f
    const-string p0, "onBubbleMetadataFlagChanged"

    return-object p0

    .line 470
    :pswitch_92
    const-string p0, "onNotificationBubbleChanged"

    return-object p0

    .line 466
    :pswitch_95
    const-string p0, "onNotificationSettingsViewed"

    return-object p0

    .line 462
    :pswitch_98
    const-string p0, "onNotificationSmartReplySent"

    return-object p0

    .line 458
    :pswitch_9b
    const-string p0, "onNotificationSmartSuggestionsAdded"

    return-object p0

    .line 454
    :pswitch_9e
    const-string p0, "onNotificationDirectReplied"

    return-object p0

    .line 450
    :pswitch_a1
    const-string p0, "onNotificationExpansionChanged"

    return-object p0

    .line 446
    :pswitch_a4
    const-string p0, "onNotificationVisibilityChanged"

    return-object p0

    .line 442
    :pswitch_a7
    const-string p0, "onNotificationClear"

    return-object p0

    .line 438
    :pswitch_aa
    const-string p0, "onClearAllNotifications"

    return-object p0

    .line 434
    :pswitch_ad
    const-string p0, "onNotificationError"

    return-object p0

    .line 430
    :pswitch_b0
    const-string p0, "onNotificationActionClick"

    return-object p0

    .line 426
    :pswitch_b3
    const-string p0, "onNotificationClick"

    return-object p0

    .line 422
    :pswitch_b6
    const-string p0, "clearNotificationEffects"

    return-object p0

    .line 418
    :pswitch_b9
    const-string p0, "onPanelHidden"

    return-object p0

    .line 414
    :pswitch_bc
    const-string p0, "onPanelRevealed"

    return-object p0

    .line 410
    :pswitch_bf
    const-string p0, "registerStatusBarForAllDisplays"

    return-object p0

    .line 406
    :pswitch_c2
    const-string p0, "registerStatusBar"

    return-object p0

    .line 402
    :pswitch_c5
    const-string p0, "expandSettingsPanel"

    return-object p0

    .line 398
    :pswitch_c8
    const-string p0, "setImeWindowStatus"

    return-object p0

    .line 394
    :pswitch_cb
    const-string p0, "removeIcon"

    return-object p0

    .line 390
    :pswitch_ce
    const-string p0, "setIconVisibility"

    return-object p0

    .line 386
    :pswitch_d1
    const-string p0, "setIcon"

    return-object p0

    .line 382
    :pswitch_d4
    const-string p0, "getDisableFlags"

    return-object p0

    .line 378
    :pswitch_d7
    const-string p0, "disable2ForUser"

    return-object p0

    .line 374
    :pswitch_da
    const-string p0, "disable2"

    return-object p0

    .line 370
    :pswitch_dd
    const-string p0, "disableForUser"

    return-object p0

    .line 366
    :pswitch_e0
    const-string p0, "disable"

    return-object p0

    .line 362
    :pswitch_e3
    const-string p0, "togglePanel"

    return-object p0

    .line 358
    :pswitch_e6
    const-string p0, "collapsePanels"

    return-object p0

    .line 354
    :pswitch_e9
    const-string p0, "expandNotificationsPanel"

    return-object p0

    :pswitch_data_ec
    .packed-switch 0x1
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

.method static synthetic blacklist lambda$onTransact$0(Landroid/os/Parcel;Ljava/lang/String;Lcom/android/internal/statusbar/RegisterStatusBarResult;)V
    .registers 3

    .line 852
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 853
    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 854
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 345
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2922
    const/16 v0, 0x4c

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 669
    invoke-static {p1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 673
    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v12, p3

    .line 674
    const-string v3, "com.android.internal.statusbar.IStatusBarService"

    const/4 v13, 0x1

    if-lt v1, v13, :cond_13

    const v4, 0xffffff

    if-gt v1, v4, :cond_13

    .line 675
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    :cond_13
    const v4, 0x5f4e5446

    if-ne v1, v4, :cond_1c

    .line 678
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 679
    return v13

    .line 681
    :cond_1c
    packed-switch v1, :pswitch_data_664

    .line 1500
    move-object v14, v2

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1494
    :pswitch_25
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->restartSystemUI()V

    .line 1495
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1496
    goto/16 :goto_663

    .line 1488
    :pswitch_2d
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->toggleRecentApps()V

    .line 1489
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1490
    goto/16 :goto_663

    .line 1480
    :pswitch_35
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1481
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1482
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->startAssist(Landroid/os/Bundle;)V

    .line 1483
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1484
    goto/16 :goto_663

    .line 1471
    :pswitch_48
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1472
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1473
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->showRearDisplayDialog(I)V

    .line 1474
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1475
    goto/16 :goto_663

    .line 1462
    :pswitch_57
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/INearbyMediaDevicesProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/INearbyMediaDevicesProvider;

    move-result-object v1

    .line 1463
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1464
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->unregisterNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V

    .line 1465
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1466
    goto/16 :goto_663

    .line 1453
    :pswitch_6a
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/INearbyMediaDevicesProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/INearbyMediaDevicesProvider;

    move-result-object v1

    .line 1454
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1455
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->registerNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V

    .line 1456
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1457
    goto/16 :goto_663

    .line 1438
    :pswitch_7d
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1440
    sget-object v3, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRoute2Info;

    .line 1442
    sget-object v4, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Icon;

    .line 1444
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 1445
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1446
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V

    .line 1447
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1448
    goto/16 :goto_663

    .line 1425
    :pswitch_a4
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1427
    sget-object v3, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRoute2Info;

    .line 1429
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/statusbar/IUndoMediaTransferCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IUndoMediaTransferCallback;

    move-result-object v4

    .line 1430
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1431
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V

    .line 1432
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1433
    goto/16 :goto_663

    .line 1414
    :pswitch_c3
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1416
    sget-object v3, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/logging/InstanceId;

    .line 1417
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1418
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onSessionEnded(ILcom/android/internal/logging/InstanceId;)V

    .line 1419
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1420
    goto/16 :goto_663

    .line 1403
    :pswitch_da
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1405
    sget-object v3, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/logging/InstanceId;

    .line 1406
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1407
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onSessionStarted(ILcom/android/internal/logging/InstanceId;)V

    .line 1408
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1409
    goto/16 :goto_663

    .line 1392
    :pswitch_f1
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1394
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/statusbar/ISessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/ISessionListener;

    move-result-object v3

    .line 1395
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1396
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->unregisterSessionListener(ILcom/android/internal/statusbar/ISessionListener;)V

    .line 1397
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1398
    goto/16 :goto_663

    .line 1381
    :pswitch_108
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1383
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/statusbar/ISessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/ISessionListener;

    move-result-object v3

    .line 1384
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1385
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->registerSessionListener(ILcom/android/internal/statusbar/ISessionListener;)V

    .line 1386
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1387
    goto/16 :goto_663

    .line 1373
    :pswitch_11f
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getNavBarMode()I

    move-result v0

    .line 1374
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1375
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1376
    goto/16 :goto_663

    .line 1365
    :pswitch_12b
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1366
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1367
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setNavBarMode(I)V

    .line 1368
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1369
    goto/16 :goto_663

    .line 1356
    :pswitch_13a
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1357
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1358
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->cancelRequestAddTile(Ljava/lang/String;)V

    .line 1359
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1360
    goto/16 :goto_663

    .line 1339
    :pswitch_149
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1341
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 1343
    sget-object v4, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Icon;

    .line 1345
    move-object v5, v2

    move-object v2, v3

    move-object v3, v4

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1347
    invoke-virtual {v5}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/statusbar/IAddTileResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IAddTileResultCallback;

    move-result-object v6

    .line 1348
    invoke-virtual {v5}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1349
    move-object v0, p0

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->requestAddTile(Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;ILcom/android/internal/statusbar/IAddTileResultCallback;)V

    .line 1350
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1351
    goto/16 :goto_663

    .line 1328
    :pswitch_17d
    move-object v5, v2

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v5, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1330
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1331
    invoke-virtual {v5}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1332
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->requestTileServiceListeningState(Landroid/content/ComponentName;I)V

    .line 1333
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1334
    goto/16 :goto_663

    .line 1319
    :pswitch_195
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1320
    invoke-virtual {v5}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1321
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->suppressAmbientDisplay(Z)V

    .line 1322
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1323
    goto/16 :goto_663

    .line 1311
    :pswitch_1a5
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->isTracing()Z

    move-result v0

    .line 1312
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1313
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1314
    goto/16 :goto_663

    .line 1305
    :pswitch_1b1
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->stopTracing()V

    .line 1306
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1307
    goto/16 :goto_663

    .line 1299
    :pswitch_1b9
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->startTracing()V

    .line 1300
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1301
    goto/16 :goto_663

    .line 1291
    :pswitch_1c1
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1292
    invoke-virtual {v5}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1293
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->dismissInattentiveSleepWarning(Z)V

    .line 1294
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1295
    goto/16 :goto_663

    .line 1284
    :pswitch_1d1
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->showInattentiveSleepWarning()V

    .line 1285
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1286
    goto/16 :goto_663

    .line 1276
    :pswitch_1d9
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;

    move-result-object v1

    .line 1277
    invoke-virtual {v5}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1278
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setUdfpsRefreshRateCallback(Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;)V

    .line 1279
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1280
    goto/16 :goto_663

    .line 1267
    :pswitch_1ed
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/IBiometricContextListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricContextListener;

    move-result-object v1

    .line 1268
    invoke-virtual {v5}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1269
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V

    .line 1270
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1271
    goto/16 :goto_663

    .line 1258
    :pswitch_201
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1259
    invoke-virtual {v5}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1260
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->hideAuthenticationDialog(J)V

    .line 1261
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1262
    goto/16 :goto_663

    .line 1245
    :pswitch_211
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1247
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1249
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1250
    invoke-virtual {v5}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1251
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onBiometricError(III)V

    .line 1252
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1253
    goto/16 :goto_663

    .line 1234
    :pswitch_229
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1236
    invoke-virtual {v5}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1237
    invoke-virtual {v5}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1238
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onBiometricHelp(ILjava/lang/String;)V

    .line 1239
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1240
    goto/16 :goto_663

    .line 1225
    :pswitch_23d
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1226
    invoke-virtual {v5}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1227
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onBiometricAuthenticated(I)V

    .line 1228
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1229
    goto/16 :goto_663

    .line 1200
    :pswitch_24d
    move-object v5, v2

    sget-object v1, Landroid/hardware/biometrics/PromptInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v5, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/PromptInfo;

    .line 1202
    invoke-virtual {v5}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    move-result-object v2

    .line 1204
    invoke-virtual {v5}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 1206
    invoke-virtual {v5}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 1214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1216
    move-object/from16 v14, p2

    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 1217
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1218
    move-object v0, p0

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;J)V

    .line 1219
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1220
    goto/16 :goto_663

    .line 1193
    :pswitch_288
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->showPinningEscapeToast()V

    .line 1194
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1195
    goto/16 :goto_663

    .line 1185
    :pswitch_290
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1186
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1187
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->showPinningEnterExitToast(Z)V

    .line 1188
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1189
    goto/16 :goto_663

    .line 1177
    :pswitch_2a0
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getLastSystemKey()I

    move-result v0

    .line 1178
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1179
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1180
    goto/16 :goto_663

    .line 1169
    :pswitch_2ac
    move-object v14, v2

    sget-object v1, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 1170
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1171
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->handleSystemKey(Landroid/view/KeyEvent;)V

    .line 1172
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1173
    goto/16 :goto_663

    .line 1160
    :pswitch_2c0
    move-object v14, v2

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1161
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1162
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->clickTile(Landroid/content/ComponentName;)V

    .line 1163
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1164
    goto/16 :goto_663

    .line 1151
    :pswitch_2d4
    move-object v14, v2

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1152
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1153
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->remTile(Landroid/content/ComponentName;)V

    .line 1154
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1155
    goto/16 :goto_663

    .line 1142
    :pswitch_2e8
    move-object v14, v2

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1143
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1144
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->addTile(Landroid/content/ComponentName;)V

    .line 1145
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1146
    goto/16 :goto_663

    .line 1135
    :pswitch_2fc
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->restart()V

    .line 1136
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1137
    goto/16 :goto_663

    .line 1125
    :pswitch_304
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1127
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1128
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1129
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->reboot(ZLjava/lang/String;)V

    .line 1130
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1131
    goto/16 :goto_663

    .line 1118
    :pswitch_318
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->shutdown()V

    .line 1119
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1120
    goto/16 :goto_663

    .line 1112
    :pswitch_320
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onGlobalActionsHidden()V

    .line 1113
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1114
    goto/16 :goto_663

    .line 1106
    :pswitch_328
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onGlobalActionsShown()V

    .line 1107
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1108
    goto/16 :goto_663

    .line 1096
    :pswitch_330
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1098
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1099
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1100
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationFeedbackReceived(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1101
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1102
    goto/16 :goto_663

    .line 1088
    :pswitch_348
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1089
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1090
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->clearInlineReplyUriPermissions(Ljava/lang/String;)V

    .line 1091
    goto/16 :goto_663

    .line 1073
    :pswitch_355
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1075
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 1077
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 1079
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1080
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1081
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->grantInlineReplyUriPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1082
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1083
    goto/16 :goto_663

    .line 1064
    :pswitch_379
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1065
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1066
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->hideCurrentInputMethodForBubbles(I)V

    .line 1067
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1068
    goto/16 :goto_663

    .line 1053
    :pswitch_389
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1055
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1056
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1057
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onBubbleMetadataFlagChanged(Ljava/lang/String;I)V

    .line 1058
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1059
    goto/16 :goto_663

    .line 1040
    :pswitch_39d
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1042
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1044
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1045
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1046
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationBubbleChanged(Ljava/lang/String;ZI)V

    .line 1047
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1048
    goto/16 :goto_663

    .line 1031
    :pswitch_3b5
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1032
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1033
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationSettingsViewed(Ljava/lang/String;)V

    .line 1034
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    goto/16 :goto_663

    .line 1014
    :pswitch_3c5
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1016
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1018
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 1020
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1022
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1023
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1024
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationSmartReplySent(Ljava/lang/String;ILjava/lang/CharSequence;IZ)V

    .line 1025
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1026
    goto/16 :goto_663

    .line 997
    :pswitch_3ea
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 999
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1001
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1003
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1005
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1006
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1007
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationSmartSuggestionsAdded(Ljava/lang/String;IIZZ)V

    .line 1008
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1009
    goto/16 :goto_663

    .line 988
    :pswitch_40b
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 989
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 990
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationDirectReplied(Ljava/lang/String;)V

    .line 991
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    goto/16 :goto_663

    .line 973
    :pswitch_41b
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 975
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 977
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 979
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 980
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 981
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationExpansionChanged(Ljava/lang/String;ZZI)V

    .line 982
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 983
    goto/16 :goto_663

    .line 962
    :pswitch_437
    move-object v14, v2

    sget-object v1, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/statusbar/NotificationVisibility;

    .line 964
    sget-object v2, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/internal/statusbar/NotificationVisibility;

    .line 965
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 966
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V

    .line 967
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 968
    goto/16 :goto_663

    .line 941
    :pswitch_453
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 943
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 945
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 947
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 949
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 951
    sget-object v6, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/statusbar/NotificationVisibility;

    .line 953
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 954
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 955
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationClear(Ljava/lang/String;ILjava/lang/String;IILcom/android/internal/statusbar/NotificationVisibility;Z)V

    .line 956
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    goto/16 :goto_663

    .line 932
    :pswitch_480
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 933
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 934
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onClearAllNotifications(I)V

    .line 935
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 936
    goto/16 :goto_663

    .line 911
    :pswitch_490
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 913
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 915
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 917
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 919
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 921
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 923
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 924
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 925
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    .line 926
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 927
    goto/16 :goto_663

    .line 894
    :pswitch_4b9
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 896
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 898
    sget-object v0, Landroid/app/Notification$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/Notification$Action;

    .line 900
    sget-object v0, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/internal/statusbar/NotificationVisibility;

    .line 902
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 903
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 904
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationActionClick(Ljava/lang/String;ILandroid/app/Notification$Action;Lcom/android/internal/statusbar/NotificationVisibility;Z)V

    .line 905
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    goto/16 :goto_663

    .line 883
    :pswitch_4e4
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 885
    sget-object v2, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/statusbar/NotificationVisibility;

    .line 886
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 887
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V

    .line 888
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 889
    goto/16 :goto_663

    .line 877
    :pswitch_4fc
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->clearNotificationEffects()V

    .line 878
    goto/16 :goto_663

    .line 871
    :pswitch_501
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onPanelHidden()V

    .line 872
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 873
    goto/16 :goto_663

    .line 861
    :pswitch_509
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 863
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 864
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 865
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onPanelRevealed(ZI)V

    .line 866
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 867
    goto/16 :goto_663

    .line 843
    :pswitch_51d
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v1

    .line 844
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 845
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->registerStatusBarForAllDisplays(Lcom/android/internal/statusbar/IStatusBar;)Ljava/util/Map;

    move-result-object v0

    .line 846
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 847
    if-nez v0, :cond_538

    .line 848
    const/4 v0, -0x1

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_663

    .line 850
    :cond_538
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 851
    new-instance v1, Lcom/android/internal/statusbar/IStatusBarService$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v1, v12}, Lcom/android/internal/statusbar/IStatusBarService$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 856
    goto/16 :goto_663

    .line 833
    :pswitch_549
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v1

    .line 834
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 835
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;)Lcom/android/internal/statusbar/RegisterStatusBarResult;

    move-result-object v0

    .line 836
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 837
    invoke-virtual {v12, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 838
    goto/16 :goto_663

    .line 824
    :pswitch_561
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 825
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 826
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->expandSettingsPanel(Ljava/lang/String;)V

    .line 827
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    goto/16 :goto_663

    .line 809
    :pswitch_571
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 811
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 813
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 815
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 816
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 817
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setImeWindowStatus(IIIZ)V

    .line 818
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 819
    goto/16 :goto_663

    .line 800
    :pswitch_58d
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 801
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 802
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->removeIcon(Ljava/lang/String;)V

    .line 803
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    goto/16 :goto_663

    .line 789
    :pswitch_59d
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 791
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 792
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 793
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setIconVisibility(Ljava/lang/String;Z)V

    .line 794
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 795
    goto/16 :goto_663

    .line 772
    :pswitch_5b1
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 774
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 776
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 778
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 780
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 781
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 782
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 783
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    goto/16 :goto_663

    .line 760
    :pswitch_5d2
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 762
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 763
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 764
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getDisableFlags(Landroid/os/IBinder;I)[I

    move-result-object v0

    .line 765
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 767
    goto/16 :goto_663

    .line 745
    :pswitch_5ea
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 747
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 749
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 751
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 752
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 753
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 754
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 755
    goto :goto_663

    .line 732
    :pswitch_605
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 734
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 736
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 737
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 738
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 739
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    goto :goto_663

    .line 717
    :pswitch_61c
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 719
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 721
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 723
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 724
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 725
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 726
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    goto :goto_663

    .line 704
    :pswitch_637
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 706
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 708
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 709
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 710
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 711
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    goto :goto_663

    .line 697
    :pswitch_64e
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->togglePanel()V

    .line 698
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 699
    goto :goto_663

    .line 691
    :pswitch_655
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->collapsePanels()V

    .line 692
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    goto :goto_663

    .line 685
    :pswitch_65c
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->expandNotificationsPanel()V

    .line 686
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    nop

    .line 1503
    :goto_663
    return v13

    :pswitch_data_664
    .packed-switch 0x1
        :pswitch_65c
        :pswitch_655
        :pswitch_64e
        :pswitch_637
        :pswitch_61c
        :pswitch_605
        :pswitch_5ea
        :pswitch_5d2
        :pswitch_5b1
        :pswitch_59d
        :pswitch_58d
        :pswitch_571
        :pswitch_561
        :pswitch_549
        :pswitch_51d
        :pswitch_509
        :pswitch_501
        :pswitch_4fc
        :pswitch_4e4
        :pswitch_4b9
        :pswitch_490
        :pswitch_480
        :pswitch_453
        :pswitch_437
        :pswitch_41b
        :pswitch_40b
        :pswitch_3ea
        :pswitch_3c5
        :pswitch_3b5
        :pswitch_39d
        :pswitch_389
        :pswitch_379
        :pswitch_355
        :pswitch_348
        :pswitch_330
        :pswitch_328
        :pswitch_320
        :pswitch_318
        :pswitch_304
        :pswitch_2fc
        :pswitch_2e8
        :pswitch_2d4
        :pswitch_2c0
        :pswitch_2ac
        :pswitch_2a0
        :pswitch_290
        :pswitch_288
        :pswitch_24d
        :pswitch_23d
        :pswitch_229
        :pswitch_211
        :pswitch_201
        :pswitch_1ed
        :pswitch_1d9
        :pswitch_1d1
        :pswitch_1c1
        :pswitch_1b9
        :pswitch_1b1
        :pswitch_1a5
        :pswitch_195
        :pswitch_17d
        :pswitch_149
        :pswitch_13a
        :pswitch_12b
        :pswitch_11f
        :pswitch_108
        :pswitch_f1
        :pswitch_da
        :pswitch_c3
        :pswitch_a4
        :pswitch_7d
        :pswitch_6a
        :pswitch_57
        :pswitch_48
        :pswitch_35
        :pswitch_2d
        :pswitch_25
    .end packed-switch
.end method
