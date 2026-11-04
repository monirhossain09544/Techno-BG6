.class public abstract Landroid/telecom/CallDiagnosticService;
.super Landroid/app/Service;
.source "CallDiagnosticService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;
    }
.end annotation


# static fields
.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.telecom.CallDiagnosticService"


# instance fields
.field private blacklist mAdapter:Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;

.field private final blacklist mCallByTelecomCallId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/telecom/Call$Details;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDiagnosticCallByTelecomCallId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/telecom/CallDiagnostics;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDiagnosticCallListener:Landroid/telecom/CallDiagnostics$Listener;

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method public static synthetic blacklist $r8$lambda$3vbqIExCyIhISmunk1D_iCb7UAE(Landroid/telecom/CallDiagnosticService;Landroid/telecom/BluetoothCallQualityReport;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/CallDiagnosticService;->lambda$handleBluetoothCallQualityReport$4(Landroid/telecom/BluetoothCallQualityReport;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$XQOrrV2eTQXcCYv45uNhD_aEROU(Landroid/telecom/CallDiagnosticService;Landroid/telecom/CallDiagnostics;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/CallDiagnosticService;->lambda$handleCallRemoved$2(Landroid/telecom/CallDiagnostics;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$iCptmB9yLGHEJYrokTsSX-iL0Tg(Landroid/telecom/CallDiagnosticService;Landroid/telecom/Call$Details;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/CallDiagnosticService;->lambda$handleCallAdded$0(Landroid/telecom/Call$Details;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleBluetoothCallQualityReport(Landroid/telecom/CallDiagnosticService;Landroid/telecom/BluetoothCallQualityReport;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/CallDiagnosticService;->handleBluetoothCallQualityReport(Landroid/telecom/BluetoothCallQualityReport;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCallAdded(Landroid/telecom/CallDiagnosticService;Landroid/telecom/ParcelableCall;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/CallDiagnosticService;->handleCallAdded(Landroid/telecom/ParcelableCall;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCallDisconnected(Landroid/telecom/CallDiagnosticService;Ljava/lang/String;Landroid/telecom/DisconnectCause;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/CallDiagnosticService;->handleCallDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCallQualityChanged(Landroid/telecom/CallDiagnosticService;Ljava/lang/String;Landroid/telephony/CallQuality;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/CallDiagnosticService;->handleCallQualityChanged(Ljava/lang/String;Landroid/telephony/CallQuality;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCallRemoved(Landroid/telecom/CallDiagnosticService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/CallDiagnosticService;->handleCallRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCallUpdated(Landroid/telecom/CallDiagnosticService;Landroid/telecom/ParcelableCall;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/CallDiagnosticService;->handleCallUpdated(Landroid/telecom/ParcelableCall;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleClearDiagnosticMessage(Landroid/telecom/CallDiagnosticService;Landroid/telecom/CallDiagnostics;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/CallDiagnosticService;->handleClearDiagnosticMessage(Landroid/telecom/CallDiagnostics;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDisplayDiagnosticMessage(Landroid/telecom/CallDiagnosticService;Landroid/telecom/CallDiagnostics;ILjava/lang/CharSequence;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telecom/CallDiagnosticService;->handleDisplayDiagnosticMessage(Landroid/telecom/CallDiagnostics;ILjava/lang/CharSequence;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleReceivedD2DMessage(Landroid/telecom/CallDiagnosticService;Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telecom/CallDiagnosticService;->handleReceivedD2DMessage(Ljava/lang/String;II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleSendDeviceToDeviceMessage(Landroid/telecom/CallDiagnosticService;Landroid/telecom/CallDiagnostics;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telecom/CallDiagnosticService;->handleSendDeviceToDeviceMessage(Landroid/telecom/CallDiagnostics;II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleSetAdapter(Landroid/telecom/CallDiagnosticService;Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/CallDiagnosticService;->handleSetAdapter(Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 127
    new-instance v0, Landroid/telecom/CallDiagnosticService$1;

    invoke-direct {v0, p0}, Landroid/telecom/CallDiagnosticService$1;-><init>(Landroid/telecom/CallDiagnosticService;)V

    iput-object v0, p0, Landroid/telecom/CallDiagnosticService;->mDiagnosticCallListener:Landroid/telecom/CallDiagnostics$Listener;

    .line 159
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/CallDiagnosticService;->mCallByTelecomCallId:Ljava/util/Map;

    .line 160
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/CallDiagnosticService;->mDiagnosticCallByTelecomCallId:Ljava/util/Map;

    .line 161
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telecom/CallDiagnosticService;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private blacklist handleBluetoothCallQualityReport(Landroid/telecom/BluetoothCallQualityReport;)V
    .registers 4

    .line 388
    const-string v0, "handleBluetoothCallQualityReport; report=%s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    invoke-virtual {p0}, Landroid/telecom/CallDiagnosticService;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda0;-><init>(Landroid/telecom/CallDiagnosticService;Landroid/telecom/BluetoothCallQualityReport;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 390
    return-void
.end method

.method private blacklist handleCallAdded(Landroid/telecom/ParcelableCall;)V
    .registers 5

    .line 263
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v0

    .line 264
    const-string v1, "handleCallAdded: callId=%s - added"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    invoke-static {p1}, Landroid/telecom/Call$Details;->createFromParcelableCall(Landroid/telecom/ParcelableCall;)Landroid/telecom/Call$Details;

    move-result-object p1

    .line 266
    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 267
    :try_start_14
    iget-object v2, p0, Landroid/telecom/CallDiagnosticService;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_27

    .line 270
    invoke-virtual {p0}, Landroid/telecom/CallDiagnosticService;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, v0}, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda3;-><init>(Landroid/telecom/CallDiagnosticService;Landroid/telecom/Call$Details;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 282
    return-void

    .line 268
    :catchall_27
    move-exception p1

    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p1
.end method

.method private blacklist handleCallDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V
    .registers 6

    .line 359
    const-string v0, "handleCallDisconnected: call=%s; cause=%s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 361
    iget-object v0, p0, Landroid/telecom/CallDiagnosticService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 362
    :try_start_c
    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mDiagnosticCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallDiagnostics;

    .line 363
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_42

    .line 365
    invoke-virtual {p2}, Landroid/telecom/DisconnectCause;->getImsReasonInfo()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 366
    invoke-virtual {p2}, Landroid/telecom/DisconnectCause;->getImsReasonInfo()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/telecom/CallDiagnostics;->onCallDisconnected(Landroid/telephony/ims/ImsReasonInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_31

    .line 368
    :cond_24
    nop

    .line 369
    invoke-virtual {p2}, Landroid/telecom/DisconnectCause;->getTelephonyDisconnectCause()I

    move-result v0

    .line 370
    invoke-virtual {p2}, Landroid/telecom/DisconnectCause;->getTelephonyPreciseDisconnectCause()I

    move-result v2

    .line 368
    invoke-virtual {v1, v0, v2}, Landroid/telecom/CallDiagnostics;->onCallDisconnected(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 373
    :goto_31
    :try_start_31
    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mAdapter:Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;->overrideDisconnectMessage(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_36} :catch_37

    .line 377
    goto :goto_41

    .line 374
    :catch_37
    move-exception v0

    .line 375
    const-string v1, "handleCallDisconnected: call=%s; cause=%s; %s"

    filled-new-array {p1, p2, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v1, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 378
    :goto_41
    return-void

    .line 363
    :catchall_42
    move-exception p1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p1
.end method

.method private blacklist handleCallQualityChanged(Ljava/lang/String;Landroid/telephony/CallQuality;)V
    .registers 5

    .line 399
    const-string v0, "handleCallQualityChanged; call=%s, cq=%s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    iget-object v0, p0, Landroid/telecom/CallDiagnosticService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 402
    :try_start_c
    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mDiagnosticCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/CallDiagnostics;

    .line 403
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_1b

    .line 404
    if-eqz p1, :cond_1a

    .line 405
    invoke-virtual {p1, p2}, Landroid/telecom/CallDiagnostics;->onCallQualityReceived(Landroid/telephony/CallQuality;)V

    .line 407
    :cond_1a
    return-void

    .line 403
    :catchall_1b
    move-exception p1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method private blacklist handleCallRemoved(Ljava/lang/String;)V
    .registers 4

    .line 311
    const-string v0, "handleCallRemoved: callId=%s - removed"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    iget-object v0, p0, Landroid/telecom/CallDiagnosticService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    :try_start_c
    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 316
    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    :cond_19
    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mDiagnosticCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 320
    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mDiagnosticCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/CallDiagnostics;

    goto :goto_2b

    .line 322
    :cond_2a
    const/4 p1, 0x0

    .line 324
    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_3b

    .line 327
    if-eqz p1, :cond_3a

    .line 328
    invoke-virtual {p0}, Landroid/telecom/CallDiagnosticService;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda1;-><init>(Landroid/telecom/CallDiagnosticService;Landroid/telecom/CallDiagnostics;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 330
    :cond_3a
    return-void

    .line 324
    :catchall_3b
    move-exception p1

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw p1
.end method

.method private blacklist handleCallUpdated(Landroid/telecom/ParcelableCall;)V
    .registers 6

    .line 291
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v0

    .line 292
    const-string v1, "handleCallUpdated: callId=%s - updated"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    invoke-static {p1}, Landroid/telecom/Call$Details;->createFromParcelableCall(Landroid/telecom/ParcelableCall;)Landroid/telecom/Call$Details;

    move-result-object p1

    .line 295
    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 296
    :try_start_14
    iget-object v2, p0, Landroid/telecom/CallDiagnosticService;->mDiagnosticCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/CallDiagnostics;

    .line 297
    if-nez v2, :cond_20

    .line 299
    monitor-exit v1

    return-void

    .line 301
    :cond_20
    iget-object v3, p0, Landroid/telecom/CallDiagnosticService;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_33

    .line 303
    invoke-virtual {p0}, Landroid/telecom/CallDiagnosticService;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda2;

    invoke-direct {v1, v2, p1}, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda2;-><init>(Landroid/telecom/CallDiagnostics;Landroid/telecom/Call$Details;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 304
    return-void

    .line 302
    :catchall_33
    move-exception p1

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p1
.end method

.method private blacklist handleClearDiagnosticMessage(Landroid/telecom/CallDiagnostics;I)V
    .registers 5

    .line 457
    invoke-virtual {p1}, Landroid/telecom/CallDiagnostics;->getCallId()Ljava/lang/String;

    move-result-object p1

    .line 459
    :try_start_4
    iget-object v0, p0, Landroid/telecom/CallDiagnosticService;->mAdapter:Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;->clearDiagnosticMessage(Ljava/lang/String;I)V

    .line 460
    const-string v0, "handleClearDiagnosticMessage: call=%s; msg=%d"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_16} :catch_17

    .line 464
    goto :goto_26

    .line 461
    :catch_17
    move-exception v0

    .line 462
    nop

    .line 463
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 462
    const-string p2, "handleClearDiagnosticMessage: call=%s; msg=%d failed %s"

    invoke-static {p0, p2, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    :goto_26
    return-void
.end method

.method private blacklist handleDisplayDiagnosticMessage(Landroid/telecom/CallDiagnostics;ILjava/lang/CharSequence;)V
    .registers 6

    .line 438
    invoke-virtual {p1}, Landroid/telecom/CallDiagnostics;->getCallId()Ljava/lang/String;

    move-result-object p1

    .line 440
    :try_start_4
    iget-object v0, p0, Landroid/telecom/CallDiagnosticService;->mAdapter:Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;->displayDiagnosticMessage(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 441
    const-string v0, "handleDisplayDiagnosticMessage: call=%s; msg=%d/%s"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1, p3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_16} :catch_17

    .line 446
    goto :goto_26

    .line 443
    :catch_17
    move-exception v0

    .line 444
    nop

    .line 445
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 444
    const-string p2, "handleDisplayDiagnosticMessage: call=%s; msg=%d/%s failed %s"

    invoke-static {p0, p2, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    :goto_26
    return-void
.end method

.method private blacklist handleReceivedD2DMessage(Ljava/lang/String;II)V
    .registers 7

    .line 340
    const-string v0, "handleReceivedD2DMessage: callId=%s, msg=%d/%d"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    iget-object v0, p0, Landroid/telecom/CallDiagnosticService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    :try_start_14
    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mDiagnosticCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/CallDiagnostics;

    .line 344
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_2c

    .line 345
    if-eqz p1, :cond_2b

    .line 346
    invoke-virtual {p0}, Landroid/telecom/CallDiagnosticService;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p2, p3}, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda4;-><init>(Landroid/telecom/CallDiagnostics;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 349
    :cond_2b
    return-void

    .line 344
    :catchall_2c
    move-exception p1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method private blacklist handleSendDeviceToDeviceMessage(Landroid/telecom/CallDiagnostics;II)V
    .registers 7

    .line 418
    invoke-virtual {p1}, Landroid/telecom/CallDiagnostics;->getCallId()Ljava/lang/String;

    move-result-object p1

    .line 420
    :try_start_4
    iget-object v0, p0, Landroid/telecom/CallDiagnosticService;->mAdapter:Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;->sendDeviceToDeviceMessage(Ljava/lang/String;II)V

    .line 421
    const-string v0, "handleSendDeviceToDeviceMessage: call=%s; msg=%d/%d"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 422
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 421
    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1a} :catch_1b

    .line 426
    goto :goto_2e

    .line 423
    :catch_1b
    move-exception v0

    .line 424
    nop

    .line 425
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 424
    const-string p2, "handleSendDeviceToDeviceMessage: call=%s; msg=%d/%d failed %s"

    invoke-static {p0, p2, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    :goto_2e
    return-void
.end method

.method private blacklist handleSetAdapter(Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;)V
    .registers 2

    .line 255
    iput-object p1, p0, Landroid/telecom/CallDiagnosticService;->mAdapter:Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;

    .line 256
    return-void
.end method

.method private synthetic blacklist lambda$handleBluetoothCallQualityReport$4(Landroid/telecom/BluetoothCallQualityReport;)V
    .registers 2

    .line 389
    invoke-virtual {p0, p1}, Landroid/telecom/CallDiagnosticService;->onBluetoothCallQualityReportReceived(Landroid/telecom/BluetoothCallQualityReport;)V

    return-void
.end method

.method private synthetic blacklist lambda$handleCallAdded$0(Landroid/telecom/Call$Details;Ljava/lang/String;)V
    .registers 5

    .line 271
    invoke-virtual {p0, p1}, Landroid/telecom/CallDiagnosticService;->onInitializeCallDiagnostics(Landroid/telecom/Call$Details;)Landroid/telecom/CallDiagnostics;

    move-result-object p1

    .line 272
    if-eqz p1, :cond_1b

    .line 276
    iget-object v0, p0, Landroid/telecom/CallDiagnosticService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 277
    :try_start_9
    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mDiagnosticCallListener:Landroid/telecom/CallDiagnostics$Listener;

    invoke-virtual {p1, v1}, Landroid/telecom/CallDiagnostics;->setListener(Landroid/telecom/CallDiagnostics$Listener;)V

    .line 278
    invoke-virtual {p1, p2}, Landroid/telecom/CallDiagnostics;->setCallId(Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mDiagnosticCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    monitor-exit v0

    .line 281
    return-void

    .line 280
    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_18

    throw p1

    .line 273
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A valid DiagnosticCall instance was not provided."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private synthetic blacklist lambda$handleCallRemoved$2(Landroid/telecom/CallDiagnostics;)V
    .registers 2

    .line 328
    invoke-virtual {p0, p1}, Landroid/telecom/CallDiagnosticService;->onRemoveCallDiagnostics(Landroid/telecom/CallDiagnostics;)V

    return-void
.end method

.method static synthetic blacklist lambda$handleCallUpdated$1(Landroid/telecom/CallDiagnostics;Landroid/telecom/Call$Details;)V
    .registers 2

    .line 303
    invoke-virtual {p0, p1}, Landroid/telecom/CallDiagnostics;->handleCallUpdated(Landroid/telecom/Call$Details;)V

    return-void
.end method

.method static synthetic blacklist lambda$handleReceivedD2DMessage$3(Landroid/telecom/CallDiagnostics;II)V
    .registers 3

    .line 347
    invoke-virtual {p0, p1, p2}, Landroid/telecom/CallDiagnostics;->onReceiveDeviceToDeviceMessage(II)V

    return-void
.end method


# virtual methods
.method public whitelist getExecutor()Ljava/util/concurrent/Executor;
    .registers 3

    .line 192
    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-virtual {p0}, Landroid/telecom/CallDiagnosticService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .line 176
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v0, "onBind!"

    invoke-static {p0, v0, p1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    new-instance p1, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;-><init>(Landroid/telecom/CallDiagnosticService;Landroid/telecom/CallDiagnosticService-IA;)V

    return-object p1
.end method

.method public abstract whitelist onBluetoothCallQualityReportReceived(Landroid/telecom/BluetoothCallQualityReport;)V
.end method

.method public abstract whitelist onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
.end method

.method public abstract whitelist onInitializeCallDiagnostics(Landroid/telecom/Call$Details;)Landroid/telecom/CallDiagnostics;
.end method

.method public abstract whitelist onRemoveCallDiagnostics(Landroid/telecom/CallDiagnostics;)V
.end method
