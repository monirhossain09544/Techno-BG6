.class public abstract Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;
.super Landroid/os/Binder;
.source "IVoiceInteractionManagerService.java"

# interfaces
.implements Lcom/android/internal/app/IVoiceInteractionManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IVoiceInteractionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IVoiceInteractionManagerService"

.field static final greylist-max-o TRANSACTION_activeServiceSupportsAssist:I = 0x18

.field static final greylist-max-o TRANSACTION_activeServiceSupportsLaunchFromKeyguard:I = 0x19

.field static final greylist-max-o TRANSACTION_closeSystemDialogs:I = 0x8

.field static final blacklist TRANSACTION_createSoundTriggerSessionAsOriginator:I = 0x22

.field static final greylist-max-o TRANSACTION_deleteKeyphraseSoundModel:I = 0xf

.field static final greylist-max-o TRANSACTION_deliverNewSession:I = 0x2

.field static final blacklist TRANSACTION_destroyDetector:I = 0x26

.field static final blacklist TRANSACTION_disableVisualQueryDetection:I = 0x2a

.field static final blacklist TRANSACTION_enableVisualQueryDetection:I = 0x29

.field static final greylist-max-o TRANSACTION_finish:I = 0x9

.field static final blacklist TRANSACTION_getAccessibilityDetectionEnabled:I = 0x35

.field static final greylist-max-o TRANSACTION_getActiveServiceComponentName:I = 0x13

.field static final blacklist TRANSACTION_getActiveServiceSupportedActions:I = 0x1c

.field static final greylist-max-o TRANSACTION_getDisabledShowContext:I = 0xb

.field static final blacklist TRANSACTION_getEnrolledKeyphraseMetadata:I = 0x12

.field static final greylist-max-o TRANSACTION_getKeyphraseSoundModel:I = 0xd

.field static final greylist-max-o TRANSACTION_getUserDisabledShowContext:I = 0xc

.field static final greylist-max-o TRANSACTION_hideCurrentSession:I = 0x15

.field static final greylist-max-o TRANSACTION_hideSessionFromSession:I = 0x4

.field static final blacklist TRANSACTION_initAndVerifyDetector:I = 0x25

.field static final greylist-max-o TRANSACTION_isEnrolledForKeyphrase:I = 0x11

.field static final greylist-max-o TRANSACTION_isSessionRunning:I = 0x17

.field static final greylist-max-o TRANSACTION_launchVoiceAssistFromKeyguard:I = 0x16

.field static final blacklist TRANSACTION_listModuleProperties:I = 0x23

.field static final blacklist TRANSACTION_notifyActivityEventChanged:I = 0x34

.field static final greylist-max-o TRANSACTION_onLockscreenShown:I = 0x1a

.field static final blacklist TRANSACTION_performDirectAction:I = 0x20

.field static final blacklist TRANSACTION_registerAccessibilityDetectionSettingsListener:I = 0x36

.field static final greylist-max-o TRANSACTION_registerVoiceInteractionSessionListener:I = 0x1b

.field static final blacklist TRANSACTION_requestDirectActions:I = 0x1f

.field static final blacklist TRANSACTION_setDisabled:I = 0x21

.field static final greylist-max-o TRANSACTION_setDisabledShowContext:I = 0xa

.field static final blacklist TRANSACTION_setInvocationEffectEnabled:I = 0x1e

.field static final greylist-max-o TRANSACTION_setKeepAwake:I = 0x7

.field static final blacklist TRANSACTION_setModelDatabaseForTestEnabled:I = 0x10

.field static final blacklist TRANSACTION_setSessionWindowVisible:I = 0x33

.field static final blacklist TRANSACTION_setUiHints:I = 0x1d

.field static final greylist-max-o TRANSACTION_showSession:I = 0x1

.field static final greylist-max-o TRANSACTION_showSessionForActiveService:I = 0x14

.field static final greylist-max-o TRANSACTION_showSessionFromSession:I = 0x3

.field static final blacklist TRANSACTION_shutdownHotwordDetectionService:I = 0x27

.field static final greylist-max-o TRANSACTION_startAssistantActivity:I = 0x6

.field static final blacklist TRANSACTION_startListeningFromExternalSource:I = 0x2f

.field static final blacklist TRANSACTION_startListeningFromMic:I = 0x2d

.field static final blacklist TRANSACTION_startListeningVisibleActivityChanged:I = 0x31

.field static final blacklist TRANSACTION_startPerceiving:I = 0x2b

.field static final greylist-max-o TRANSACTION_startVoiceActivity:I = 0x5

.field static final blacklist TRANSACTION_stopListeningFromMic:I = 0x2e

.field static final blacklist TRANSACTION_stopListeningVisibleActivityChanged:I = 0x32

.field static final blacklist TRANSACTION_stopPerceiving:I = 0x2c

.field static final blacklist TRANSACTION_subscribeVisualQueryRecognitionStatus:I = 0x28

.field static final blacklist TRANSACTION_triggerHardwareRecognitionEventForTest:I = 0x30

.field static final blacklist TRANSACTION_unregisterAccessibilityDetectionSettingsListener:I = 0x37

.field static final greylist-max-o TRANSACTION_updateKeyphraseSoundModel:I = 0xe

.field static final blacklist TRANSACTION_updateState:I = 0x24


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 414
    nop

    .line 415
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 414
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 416
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 404
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 405
    const-string v0, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 406
    if-eqz p1, :cond_d

    .line 409
    iput-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 410
    return-void

    .line 407
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionManagerService;
    .registers 3

    .line 423
    if-nez p0, :cond_4

    .line 424
    const/4 p0, 0x0

    return-object p0

    .line 426
    :cond_4
    const-string v0, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 427
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v1, :cond_13

    .line 428
    check-cast v0, Lcom/android/internal/app/IVoiceInteractionManagerService;

    return-object v0

    .line 430
    :cond_13
    new-instance v0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 439
    packed-switch p0, :pswitch_data_aa

    .line 663
    const/4 p0, 0x0

    return-object p0

    .line 659
    :pswitch_5
    const-string p0, "unregisterAccessibilityDetectionSettingsListener"

    return-object p0

    .line 655
    :pswitch_8
    const-string p0, "registerAccessibilityDetectionSettingsListener"

    return-object p0

    .line 651
    :pswitch_b
    const-string p0, "getAccessibilityDetectionEnabled"

    return-object p0

    .line 647
    :pswitch_e
    const-string p0, "notifyActivityEventChanged"

    return-object p0

    .line 643
    :pswitch_11
    const-string p0, "setSessionWindowVisible"

    return-object p0

    .line 639
    :pswitch_14
    const-string p0, "stopListeningVisibleActivityChanged"

    return-object p0

    .line 635
    :pswitch_17
    const-string p0, "startListeningVisibleActivityChanged"

    return-object p0

    .line 631
    :pswitch_1a
    const-string p0, "triggerHardwareRecognitionEventForTest"

    return-object p0

    .line 627
    :pswitch_1d
    const-string p0, "startListeningFromExternalSource"

    return-object p0

    .line 623
    :pswitch_20
    const-string p0, "stopListeningFromMic"

    return-object p0

    .line 619
    :pswitch_23
    const-string p0, "startListeningFromMic"

    return-object p0

    .line 615
    :pswitch_26
    const-string p0, "stopPerceiving"

    return-object p0

    .line 611
    :pswitch_29
    const-string p0, "startPerceiving"

    return-object p0

    .line 607
    :pswitch_2c
    const-string p0, "disableVisualQueryDetection"

    return-object p0

    .line 603
    :pswitch_2f
    const-string p0, "enableVisualQueryDetection"

    return-object p0

    .line 599
    :pswitch_32
    const-string p0, "subscribeVisualQueryRecognitionStatus"

    return-object p0

    .line 595
    :pswitch_35
    const-string p0, "shutdownHotwordDetectionService"

    return-object p0

    .line 591
    :pswitch_38
    const-string p0, "destroyDetector"

    return-object p0

    .line 587
    :pswitch_3b
    const-string p0, "initAndVerifyDetector"

    return-object p0

    .line 583
    :pswitch_3e
    const-string p0, "updateState"

    return-object p0

    .line 579
    :pswitch_41
    const-string p0, "listModuleProperties"

    return-object p0

    .line 575
    :pswitch_44
    const-string p0, "createSoundTriggerSessionAsOriginator"

    return-object p0

    .line 571
    :pswitch_47
    const-string p0, "setDisabled"

    return-object p0

    .line 567
    :pswitch_4a
    const-string p0, "performDirectAction"

    return-object p0

    .line 563
    :pswitch_4d
    const-string p0, "requestDirectActions"

    return-object p0

    .line 559
    :pswitch_50
    const-string p0, "setInvocationEffectEnabled"

    return-object p0

    .line 555
    :pswitch_53
    const-string p0, "setUiHints"

    return-object p0

    .line 551
    :pswitch_56
    const-string p0, "getActiveServiceSupportedActions"

    return-object p0

    .line 547
    :pswitch_59
    const-string p0, "registerVoiceInteractionSessionListener"

    return-object p0

    .line 543
    :pswitch_5c
    const-string p0, "onLockscreenShown"

    return-object p0

    .line 539
    :pswitch_5f
    const-string p0, "activeServiceSupportsLaunchFromKeyguard"

    return-object p0

    .line 535
    :pswitch_62
    const-string p0, "activeServiceSupportsAssist"

    return-object p0

    .line 531
    :pswitch_65
    const-string p0, "isSessionRunning"

    return-object p0

    .line 527
    :pswitch_68
    const-string p0, "launchVoiceAssistFromKeyguard"

    return-object p0

    .line 523
    :pswitch_6b
    const-string p0, "hideCurrentSession"

    return-object p0

    .line 519
    :pswitch_6e
    const-string p0, "showSessionForActiveService"

    return-object p0

    .line 515
    :pswitch_71
    const-string p0, "getActiveServiceComponentName"

    return-object p0

    .line 511
    :pswitch_74
    const-string p0, "getEnrolledKeyphraseMetadata"

    return-object p0

    .line 507
    :pswitch_77
    const-string p0, "isEnrolledForKeyphrase"

    return-object p0

    .line 503
    :pswitch_7a
    const-string p0, "setModelDatabaseForTestEnabled"

    return-object p0

    .line 499
    :pswitch_7d
    const-string p0, "deleteKeyphraseSoundModel"

    return-object p0

    .line 495
    :pswitch_80
    const-string p0, "updateKeyphraseSoundModel"

    return-object p0

    .line 491
    :pswitch_83
    const-string p0, "getKeyphraseSoundModel"

    return-object p0

    .line 487
    :pswitch_86
    const-string p0, "getUserDisabledShowContext"

    return-object p0

    .line 483
    :pswitch_89
    const-string p0, "getDisabledShowContext"

    return-object p0

    .line 479
    :pswitch_8c
    const-string p0, "setDisabledShowContext"

    return-object p0

    .line 475
    :pswitch_8f
    const-string p0, "finish"

    return-object p0

    .line 471
    :pswitch_92
    const-string p0, "closeSystemDialogs"

    return-object p0

    .line 467
    :pswitch_95
    const-string p0, "setKeepAwake"

    return-object p0

    .line 463
    :pswitch_98
    const-string p0, "startAssistantActivity"

    return-object p0

    .line 459
    :pswitch_9b
    const-string p0, "startVoiceActivity"

    return-object p0

    .line 455
    :pswitch_9e
    const-string p0, "hideSessionFromSession"

    return-object p0

    .line 451
    :pswitch_a1
    const-string p0, "showSessionFromSession"

    return-object p0

    .line 447
    :pswitch_a4
    const-string p0, "deliverNewSession"

    return-object p0

    .line 443
    :pswitch_a7
    const-string p0, "showSession"

    return-object p0

    :pswitch_data_aa
    .packed-switch 0x1
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
.method protected blacklist activeServiceSupportsAssist_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2436
    iget-object v0, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2437
    return-void
.end method

.method protected blacklist activeServiceSupportsLaunchFromKeyguard_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2441
    iget-object v0, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2442
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 434
    return-object p0
.end method

.method protected blacklist disableVisualQueryDetection_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2494
    iget-object v0, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2495
    return-void
.end method

.method protected blacklist enableVisualQueryDetection_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2489
    iget-object v0, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2490
    return-void
.end method

.method protected blacklist getActiveServiceSupportedActions_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2456
    iget-object v0, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2457
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2512
    const/16 v0, 0x36

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 670
    invoke-static {p1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist hideCurrentSession_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2421
    iget-object v0, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2422
    return-void
.end method

.method protected blacklist initAndVerifyDetector_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2477
    iget-object v0, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_HOTWORD_DETECTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2478
    return-void
.end method

.method protected blacklist isSessionRunning_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2431
    iget-object v0, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2432
    return-void
.end method

.method protected blacklist launchVoiceAssistFromKeyguard_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2426
    iget-object v0, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2427
    return-void
.end method

.method protected blacklist onLockscreenShown_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2446
    iget-object v0, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2447
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 674
    nop

    .line 675
    const-string v3, "com.android.internal.app.IVoiceInteractionManagerService"

    const/4 v8, 0x1

    if-lt p1, v8, :cond_e

    const v4, 0xffffff

    if-gt p1, v4, :cond_e

    .line 676
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 678
    :cond_e
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_17

    .line 679
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 680
    return v8

    .line 682
    :cond_17
    packed-switch p1, :pswitch_data_4b6

    .line 1260
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1253
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IVoiceInteractionAccessibilitySettingsListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionAccessibilitySettingsListener;

    move-result-object v1

    .line 1254
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1255
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->unregisterAccessibilityDetectionSettingsListener(Lcom/android/internal/app/IVoiceInteractionAccessibilitySettingsListener;)V

    .line 1256
    goto/16 :goto_4b5

    .line 1245
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IVoiceInteractionAccessibilitySettingsListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionAccessibilitySettingsListener;

    move-result-object v1

    .line 1246
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1247
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->registerAccessibilityDetectionSettingsListener(Lcom/android/internal/app/IVoiceInteractionAccessibilitySettingsListener;)V

    .line 1248
    goto/16 :goto_4b5

    .line 1237
    :pswitch_3f
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getAccessibilityDetectionEnabled()Z

    move-result v0

    .line 1238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1239
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1240
    goto/16 :goto_4b5

    .line 1228
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1231
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1232
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->notifyActivityEventChanged(Landroid/os/IBinder;I)V

    .line 1233
    goto/16 :goto_4b5

    .line 1217
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1219
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1220
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1221
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->setSessionWindowVisible(Landroid/os/IBinder;Z)V

    .line 1222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1223
    goto/16 :goto_4b5

    .line 1208
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1209
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1210
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->stopListeningVisibleActivityChanged(Landroid/os/IBinder;)V

    .line 1211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1212
    goto/16 :goto_4b5

    .line 1199
    :pswitch_7d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1200
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1201
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->startListeningVisibleActivityChanged(Landroid/os/IBinder;)V

    .line 1202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1203
    goto/16 :goto_4b5

    .line 1188
    :pswitch_8c
    sget-object v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    .line 1190
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    move-result-object v3

    .line 1191
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1192
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->triggerHardwareRecognitionEventForTest(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V

    .line 1193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1194
    goto/16 :goto_4b5

    .line 1171
    :pswitch_a7
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 1173
    sget-object v3, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioFormat;

    .line 1175
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    .line 1177
    move-object v2, v3

    move-object v3, v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1179
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    move-result-object v6

    .line 1180
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1181
    move-object v0, p0

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->startListeningFromExternalSource(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/os/IBinder;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V

    .line 1182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1183
    goto/16 :goto_4b5

    .line 1164
    :pswitch_da
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->stopListeningFromMic()V

    .line 1165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1166
    goto/16 :goto_4b5

    .line 1154
    :pswitch_e2
    sget-object v1, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioFormat;

    .line 1156
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    move-result-object v2

    .line 1157
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1158
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->startListeningFromMic(Landroid/media/AudioFormat;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V

    .line 1159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1160
    goto/16 :goto_4b5

    .line 1147
    :pswitch_fd
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->stopPerceiving()V

    .line 1148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1149
    goto/16 :goto_4b5

    .line 1139
    :pswitch_105
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    move-result-object v1

    .line 1140
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1141
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->startPerceiving(Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;)V

    .line 1142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1143
    goto/16 :goto_4b5

    .line 1132
    :pswitch_118
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->disableVisualQueryDetection()V

    .line 1133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1134
    goto/16 :goto_4b5

    .line 1124
    :pswitch_120
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IVisualQueryDetectionAttentionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;

    move-result-object v1

    .line 1125
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1126
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->enableVisualQueryDetection(Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;)V

    .line 1127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1128
    goto/16 :goto_4b5

    .line 1115
    :pswitch_133
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IVisualQueryRecognitionStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVisualQueryRecognitionStatusListener;

    move-result-object v1

    .line 1116
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1117
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->subscribeVisualQueryRecognitionStatus(Lcom/android/internal/app/IVisualQueryRecognitionStatusListener;)V

    .line 1118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1119
    goto/16 :goto_4b5

    .line 1108
    :pswitch_146
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->shutdownHotwordDetectionService()V

    .line 1109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1110
    goto/16 :goto_4b5

    .line 1100
    :pswitch_14e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1101
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1102
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->destroyDetector(Landroid/os/IBinder;)V

    .line 1103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1104
    goto/16 :goto_4b5

    .line 1081
    :pswitch_15d
    sget-object v1, Landroid/media/permission/Identity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/permission/Identity;

    .line 1083
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 1085
    sget-object v3, Landroid/os/SharedMemory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/SharedMemory;

    .line 1087
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1089
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    move-result-object v6

    .line 1091
    move-object v5, v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1092
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1093
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->initAndVerifyDetector(Landroid/media/permission/Identity;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IBinder;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;I)V

    .line 1094
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1095
    goto/16 :goto_4b5

    .line 1068
    :pswitch_192
    sget-object v1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    .line 1070
    sget-object v2, Landroid/os/SharedMemory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/SharedMemory;

    .line 1072
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1073
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1074
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IBinder;)V

    .line 1075
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1076
    goto/16 :goto_4b5

    .line 1058
    :pswitch_1b1
    sget-object v1, Landroid/media/permission/Identity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/permission/Identity;

    .line 1059
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1060
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->listModuleProperties(Landroid/media/permission/Identity;)Ljava/util/List;

    move-result-object v0

    .line 1061
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1062
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1063
    goto/16 :goto_4b5

    .line 1044
    :pswitch_1c8
    sget-object v1, Landroid/media/permission/Identity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/permission/Identity;

    .line 1046
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1048
    sget-object v3, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    .line 1049
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1050
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->createSoundTriggerSessionAsOriginator(Landroid/media/permission/Identity;Landroid/os/IBinder;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;)Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    move-result-object v0

    .line 1051
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1052
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1053
    goto/16 :goto_4b5

    .line 1035
    :pswitch_1eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1036
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1037
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->setDisabled(Z)V

    .line 1038
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1039
    goto/16 :goto_4b5

    .line 1014
    :pswitch_1fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1016
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1018
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1020
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1022
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 1024
    sget-object v6, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/RemoteCallback;

    .line 1026
    sget-object v9, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/RemoteCallback;

    .line 1027
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1028
    move-object v0, p0

    move-object v7, v9

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->performDirectAction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;ILandroid/os/IBinder;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    .line 1029
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1030
    goto/16 :goto_4b5

    .line 997
    :pswitch_22f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 999
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1001
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1003
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/RemoteCallback;

    .line 1005
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/RemoteCallback;

    .line 1006
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1007
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->requestDirectActions(Landroid/os/IBinder;ILandroid/os/IBinder;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    .line 1008
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1009
    goto/16 :goto_4b5

    .line 988
    :pswitch_259
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 989
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 990
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->setInvocationEffectEnabled(Z)V

    .line 991
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    goto/16 :goto_4b5

    .line 979
    :pswitch_268
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 980
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 981
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->setUiHints(Landroid/os/Bundle;)V

    .line 982
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 983
    goto/16 :goto_4b5

    .line 968
    :pswitch_27b
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 970
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IVoiceActionCheckCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceActionCheckCallback;

    move-result-object v2

    .line 971
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 972
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getActiveServiceSupportedActions(Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V

    .line 973
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 974
    goto/16 :goto_4b5

    .line 959
    :pswitch_292
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionSessionListener;

    move-result-object v1

    .line 960
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 961
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->registerVoiceInteractionSessionListener(Lcom/android/internal/app/IVoiceInteractionSessionListener;)V

    .line 962
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 963
    goto/16 :goto_4b5

    .line 952
    :pswitch_2a5
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->onLockscreenShown()V

    .line 953
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    goto/16 :goto_4b5

    .line 945
    :pswitch_2ad
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->activeServiceSupportsLaunchFromKeyguard()Z

    move-result v0

    .line 946
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 947
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 948
    goto/16 :goto_4b5

    .line 938
    :pswitch_2b9
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->activeServiceSupportsAssist()Z

    move-result v0

    .line 939
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 940
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 941
    goto/16 :goto_4b5

    .line 931
    :pswitch_2c5
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->isSessionRunning()Z

    move-result v0

    .line 932
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 933
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 934
    goto/16 :goto_4b5

    .line 925
    :pswitch_2d1
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->launchVoiceAssistFromKeyguard()V

    .line 926
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 927
    goto/16 :goto_4b5

    .line 919
    :pswitch_2d9
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->hideCurrentSession()V

    .line 920
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 921
    goto/16 :goto_4b5

    .line 902
    :pswitch_2e1
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 904
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 906
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 908
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    move-result-object v4

    .line 910
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 911
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 912
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->showSessionForActiveService(Landroid/os/Bundle;ILjava/lang/String;Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    move-result v0

    .line 913
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 914
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 915
    goto/16 :goto_4b5

    .line 894
    :pswitch_30d
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getActiveServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 895
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 896
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 897
    goto/16 :goto_4b5

    .line 883
    :pswitch_319
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 885
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 886
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 887
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getEnrolledKeyphraseMetadata(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/soundtrigger/KeyphraseMetadata;

    move-result-object v0

    .line 888
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 889
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 890
    goto/16 :goto_4b5

    .line 871
    :pswitch_330
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 873
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 874
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 875
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->isEnrolledForKeyphrase(ILjava/lang/String;)Z

    move-result v0

    .line 876
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 878
    goto/16 :goto_4b5

    .line 860
    :pswitch_347
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 862
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 863
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 864
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->setModelDatabaseForTestEnabled(ZLandroid/os/IBinder;)V

    .line 865
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 866
    goto/16 :goto_4b5

    .line 848
    :pswitch_35a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 850
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 851
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 852
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->deleteKeyphraseSoundModel(ILjava/lang/String;)I

    move-result v0

    .line 853
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 855
    goto/16 :goto_4b5

    .line 838
    :pswitch_371
    sget-object v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 839
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 840
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)I

    move-result v0

    .line 841
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 842
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 843
    goto/16 :goto_4b5

    .line 826
    :pswitch_388
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 828
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 829
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 830
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getKeyphraseSoundModel(ILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    move-result-object v0

    .line 831
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 832
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 833
    goto/16 :goto_4b5

    .line 818
    :pswitch_39f
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getUserDisabledShowContext()I

    move-result v0

    .line 819
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 821
    goto/16 :goto_4b5

    .line 811
    :pswitch_3ab
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getDisabledShowContext()I

    move-result v0

    .line 812
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 813
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 814
    goto/16 :goto_4b5

    .line 803
    :pswitch_3b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 804
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 805
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->setDisabledShowContext(I)V

    .line 806
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 807
    goto/16 :goto_4b5

    .line 794
    :pswitch_3c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 795
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 796
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->finish(Landroid/os/IBinder;)V

    .line 797
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 798
    goto/16 :goto_4b5

    .line 785
    :pswitch_3d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 786
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 787
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->closeSystemDialogs(Landroid/os/IBinder;)V

    .line 788
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 789
    goto/16 :goto_4b5

    .line 774
    :pswitch_3e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 776
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 777
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 778
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->setKeepAwake(Landroid/os/IBinder;Z)V

    .line 779
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 780
    goto/16 :goto_4b5

    .line 756
    :pswitch_3f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 758
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 760
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 762
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 764
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 765
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 766
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->startAssistantActivity(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    .line 767
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 768
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 769
    goto/16 :goto_4b5

    .line 740
    :pswitch_423
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 742
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 744
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 746
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 747
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 748
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->startVoiceActivity(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 749
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 751
    goto :goto_4b5

    .line 730
    :pswitch_445
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 731
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 732
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->hideSessionFromSession(Landroid/os/IBinder;)Z

    move-result v0

    .line 733
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 734
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 735
    goto :goto_4b5

    .line 714
    :pswitch_457
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 716
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 718
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 720
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 721
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 722
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->showSessionFromSession(Landroid/os/IBinder;Landroid/os/Bundle;ILjava/lang/String;)Z

    move-result v0

    .line 723
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 724
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 725
    goto :goto_4b5

    .line 700
    :pswitch_479
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 702
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v2

    .line 704
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v3

    .line 705
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 706
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->deliverNewSession(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z

    move-result v0

    .line 707
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 708
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 709
    goto :goto_4b5

    .line 687
    :pswitch_49b
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 689
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 691
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 692
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 693
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->showSession(Landroid/os/Bundle;ILjava/lang/String;)V

    .line 694
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    nop

    .line 1263
    :goto_4b5
    return v8

    :pswitch_data_4b6
    .packed-switch 0x1
        :pswitch_49b
        :pswitch_479
        :pswitch_457
        :pswitch_445
        :pswitch_423
        :pswitch_3f7
        :pswitch_3e4
        :pswitch_3d5
        :pswitch_3c6
        :pswitch_3b7
        :pswitch_3ab
        :pswitch_39f
        :pswitch_388
        :pswitch_371
        :pswitch_35a
        :pswitch_347
        :pswitch_330
        :pswitch_319
        :pswitch_30d
        :pswitch_2e1
        :pswitch_2d9
        :pswitch_2d1
        :pswitch_2c5
        :pswitch_2b9
        :pswitch_2ad
        :pswitch_2a5
        :pswitch_292
        :pswitch_27b
        :pswitch_268
        :pswitch_259
        :pswitch_22f
        :pswitch_1fa
        :pswitch_1eb
        :pswitch_1c8
        :pswitch_1b1
        :pswitch_192
        :pswitch_15d
        :pswitch_14e
        :pswitch_146
        :pswitch_133
        :pswitch_120
        :pswitch_118
        :pswitch_105
        :pswitch_fd
        :pswitch_e2
        :pswitch_da
        :pswitch_a7
        :pswitch_8c
        :pswitch_7d
        :pswitch_6e
        :pswitch_5b
        :pswitch_4b
        :pswitch_3f
        :pswitch_2f
        :pswitch_1f
    .end packed-switch
.end method

.method protected blacklist registerVoiceInteractionSessionListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2451
    iget-object v0, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2452
    return-void
.end method

.method protected blacklist setDisabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2465
    iget-object v0, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2466
    return-void
.end method

.method protected blacklist setModelDatabaseForTestEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2408
    iget-object v0, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_VOICE_KEYPHRASES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2409
    return-void
.end method

.method protected blacklist showSessionForActiveService_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2416
    iget-object v0, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2417
    return-void
.end method

.method protected blacklist subscribeVisualQueryRecognitionStatus_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2484
    iget-object v0, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2485
    return-void
.end method

.method protected blacklist updateState_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2472
    iget-object v0, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_HOTWORD_DETECTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2473
    return-void
.end method
