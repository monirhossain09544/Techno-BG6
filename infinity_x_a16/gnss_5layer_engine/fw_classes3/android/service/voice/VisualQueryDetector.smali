.class public Landroid/service/voice/VisualQueryDetector;
.super Ljava/lang/Object;
.source "VisualQueryDetector.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/VisualQueryDetector$AccessibilityDetectionEnabledListenerWrapper;,
        Landroid/service/voice/VisualQueryDetector$Callback;,
        Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;,
        Landroid/service/voice/VisualQueryDetector$BinderCallback;,
        Landroid/service/voice/VisualQueryDetector$InitializationStateListener;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist SETTINGS_DISABLE_BIT:I = 0x0

.field private static final blacklist SETTINGS_ENABLE_BIT:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mActiveAccessibilityListenerWrapper:Landroid/service/voice/VisualQueryDetector$AccessibilityDetectionEnabledListenerWrapper;

.field private final blacklist mAttributionTag:Ljava/lang/String;

.field private final blacklist mCallback:Landroid/service/voice/VisualQueryDetector$Callback;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mInitializationDelegate:Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

.field private final blacklist mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAttributionTag(Landroid/service/voice/VisualQueryDetector;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/service/voice/VisualQueryDetector;->mAttributionTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/service/voice/VisualQueryDetector;)Landroid/service/voice/VisualQueryDetector$Callback;
    .registers 1

    iget-object p0, p0, Landroid/service/voice/VisualQueryDetector;->mCallback:Landroid/service/voice/VisualQueryDetector$Callback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/service/voice/VisualQueryDetector;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/service/voice/VisualQueryDetector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/service/voice/VisualQueryDetector;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/service/voice/VisualQueryDetector;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmManagerService(Landroid/service/voice/VisualQueryDetector;)Lcom/android/internal/app/IVoiceInteractionManagerService;
    .registers 1

    iget-object p0, p0, Landroid/service/voice/VisualQueryDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/service/voice/VisualQueryDetector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 61
    const-class v0, Landroid/service/voice/VisualQueryDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/voice/VisualQueryDetector;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/app/IVoiceInteractionManagerService;Ljava/util/concurrent/Executor;Landroid/service/voice/VisualQueryDetector$Callback;Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/voice/VisualQueryDetector;->mActiveAccessibilityListenerWrapper:Landroid/service/voice/VisualQueryDetector$AccessibilityDetectionEnabledListenerWrapper;

    .line 79
    iput-object p1, p0, Landroid/service/voice/VisualQueryDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 80
    iput-object p3, p0, Landroid/service/voice/VisualQueryDetector;->mCallback:Landroid/service/voice/VisualQueryDetector$Callback;

    .line 81
    iput-object p2, p0, Landroid/service/voice/VisualQueryDetector;->mExecutor:Ljava/util/concurrent/Executor;

    .line 82
    new-instance p1, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

    invoke-direct {p1, p0}, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;-><init>(Landroid/service/voice/VisualQueryDetector;)V

    iput-object p1, p0, Landroid/service/voice/VisualQueryDetector;->mInitializationDelegate:Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

    .line 83
    iput-object p4, p0, Landroid/service/voice/VisualQueryDetector;->mContext:Landroid/content/Context;

    .line 84
    iput-object p5, p0, Landroid/service/voice/VisualQueryDetector;->mAttributionTag:Ljava/lang/String;

    .line 85
    return-void
.end method


# virtual methods
.method public whitelist clearAccessibilityDetectionEnabledListener()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 250
    sget-object v0, Landroid/service/voice/VisualQueryDetector;->TAG:Ljava/lang/String;

    const-string v1, "Unregistering Accessibility settings listener."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector;->mInitializationDelegate:Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

    invoke-static {v0}, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->-$$Nest$mgetLock(Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 253
    :try_start_e
    iget-object v1, p0, Landroid/service/voice/VisualQueryDetector;->mActiveAccessibilityListenerWrapper:Landroid/service/voice/VisualQueryDetector$AccessibilityDetectionEnabledListenerWrapper;

    if-eqz v1, :cond_1d

    .line 257
    iget-object v1, p0, Landroid/service/voice/VisualQueryDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v2, p0, Landroid/service/voice/VisualQueryDetector;->mActiveAccessibilityListenerWrapper:Landroid/service/voice/VisualQueryDetector$AccessibilityDetectionEnabledListenerWrapper;

    invoke-interface {v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->unregisterAccessibilityDetectionSettingsListener(Lcom/android/internal/app/IVoiceInteractionAccessibilitySettingsListener;)V

    .line 259
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/voice/VisualQueryDetector;->mActiveAccessibilityListenerWrapper:Landroid/service/voice/VisualQueryDetector$AccessibilityDetectionEnabledListenerWrapper;

    .line 262
    goto :goto_32

    .line 254
    :cond_1d
    sget-object v1, Landroid/service/voice/VisualQueryDetector;->TAG:Ljava/lang/String;

    const-string v2, "Not able to remove the listener: listener does not exist."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot clear listener since it is not set."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_2c} :catch_2e
    .catchall {:try_start_e .. :try_end_2c} :catchall_2c

    .line 263
    :catchall_2c
    move-exception v1

    goto :goto_34

    .line 260
    :catch_2e
    move-exception v1

    .line 261
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 263
    :goto_32
    monitor-exit v0

    .line 264
    return-void

    .line 263
    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_2c

    throw v1
.end method

.method public whitelist destroy()V
    .registers 3

    .line 175
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector;->mInitializationDelegate:Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

    invoke-static {v0}, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->-$$Nest$mgetLock(Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 176
    :try_start_7
    iget-object v1, p0, Landroid/service/voice/VisualQueryDetector;->mInitializationDelegate:Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

    invoke-virtual {v1}, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->destroy()V

    .line 177
    monitor-exit v0

    .line 178
    return-void

    .line 177
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5

    .line 284
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector;->mInitializationDelegate:Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

    invoke-static {v0}, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->-$$Nest$mgetLock(Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 285
    :try_start_7
    iget-object v1, p0, Landroid/service/voice/VisualQueryDetector;->mInitializationDelegate:Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

    invoke-virtual {v1, p1, p2}, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 286
    monitor-exit v0

    .line 287
    return-void

    .line 286
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public blacklist getInitializationDelegate()Landroid/service/voice/HotwordDetector;
    .registers 2

    .line 291
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector;->mInitializationDelegate:Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

    return-object v0
.end method

.method blacklist initialize(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
    .registers 4

    .line 92
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector;->mInitializationDelegate:Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->initialize(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V

    .line 93
    return-void
.end method

.method public whitelist isAccessibilityDetectionEnabled()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 190
    sget-object v0, Landroid/service/voice/VisualQueryDetector;->TAG:Ljava/lang/String;

    const-string v1, "Fetching accessibility setting"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector;->mInitializationDelegate:Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

    invoke-static {v0}, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->-$$Nest$mgetLock(Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 193
    :try_start_e
    iget-object v1, p0, Landroid/service/voice/VisualQueryDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->getAccessibilityDetectionEnabled()Z

    move-result v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_14} :catch_18
    .catchall {:try_start_e .. :try_end_14} :catchall_16

    :try_start_14
    monitor-exit v0

    return v1

    .line 198
    :catchall_16
    move-exception v1

    goto :goto_1f

    .line 194
    :catch_18
    move-exception v1

    .line 195
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 197
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 198
    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_16

    throw v1
.end method

.method blacklist registerOnDestroyListener(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/service/voice/AbstractDetector;",
            ">;)V"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector;->mInitializationDelegate:Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

    invoke-static {v0}, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->-$$Nest$mgetLock(Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 297
    :try_start_7
    iget-object v1, p0, Landroid/service/voice/VisualQueryDetector;->mInitializationDelegate:Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

    invoke-virtual {v1, p1}, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->registerOnDestroyListener(Ljava/util/function/Consumer;)V

    .line 298
    monitor-exit v0

    .line 299
    return-void

    .line 298
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public whitelist setAccessibilityDetectionEnabledListener(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 217
    sget-object v0, Landroid/service/voice/VisualQueryDetector;->TAG:Ljava/lang/String;

    const-string v1, "Registering Accessibility settings listener."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector;->mInitializationDelegate:Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

    invoke-static {v0}, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->-$$Nest$mgetLock(Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 220
    :try_start_e
    iget-object v1, p0, Landroid/service/voice/VisualQueryDetector;->mActiveAccessibilityListenerWrapper:Landroid/service/voice/VisualQueryDetector$AccessibilityDetectionEnabledListenerWrapper;

    if-nez v1, :cond_21

    .line 226
    new-instance v1, Landroid/service/voice/VisualQueryDetector$AccessibilityDetectionEnabledListenerWrapper;

    invoke-direct {v1, p0, p1}, Landroid/service/voice/VisualQueryDetector$AccessibilityDetectionEnabledListenerWrapper;-><init>(Landroid/service/voice/VisualQueryDetector;Ljava/util/function/Consumer;)V

    iput-object v1, p0, Landroid/service/voice/VisualQueryDetector;->mActiveAccessibilityListenerWrapper:Landroid/service/voice/VisualQueryDetector$AccessibilityDetectionEnabledListenerWrapper;

    .line 228
    iget-object p1, p0, Landroid/service/voice/VisualQueryDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v1, p0, Landroid/service/voice/VisualQueryDetector;->mActiveAccessibilityListenerWrapper:Landroid/service/voice/VisualQueryDetector$AccessibilityDetectionEnabledListenerWrapper;

    invoke-interface {p1, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->registerAccessibilityDetectionSettingsListener(Lcom/android/internal/app/IVoiceInteractionAccessibilitySettingsListener;)V

    .line 232
    goto :goto_36

    .line 221
    :cond_21
    sget-object p1, Landroid/service/voice/VisualQueryDetector;->TAG:Ljava/lang/String;

    const-string v1, "Fail to register accessibility setting listener: already registered and not unregistered."

    invoke-static {p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot register listener with listeners already set."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_30} :catch_32
    .catchall {:try_start_e .. :try_end_30} :catchall_30

    .line 233
    :catchall_30
    move-exception p1

    goto :goto_38

    .line 230
    :catch_32
    move-exception p1

    .line 231
    :try_start_33
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 233
    :goto_36
    monitor-exit v0

    .line 234
    return-void

    .line 233
    :goto_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_30

    throw p1
.end method

.method public whitelist startRecognition()Z
    .registers 7

    .line 126
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector;->mInitializationDelegate:Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

    invoke-static {v0}, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->-$$Nest$mgetLock(Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 128
    :try_start_7
    iget-object v1, p0, Landroid/service/voice/VisualQueryDetector;->mInitializationDelegate:Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

    invoke-virtual {v1}, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->startRecognition()Z
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_45

    .line 131
    :try_start_c
    iget-object v1, p0, Landroid/service/voice/VisualQueryDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    new-instance v2, Landroid/service/voice/VisualQueryDetector$BinderCallback;

    iget-object v3, p0, Landroid/service/voice/VisualQueryDetector;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Landroid/service/voice/VisualQueryDetector;->mCallback:Landroid/service/voice/VisualQueryDetector$Callback;

    iget-object v5, p0, Landroid/service/voice/VisualQueryDetector;->mInitializationDelegate:Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

    .line 132
    invoke-static {v5}, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->-$$Nest$mgetLock(Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Landroid/service/voice/VisualQueryDetector$BinderCallback;-><init>(Ljava/util/concurrent/Executor;Landroid/service/voice/VisualQueryDetector$Callback;Ljava/lang/Object;)V

    .line 131
    invoke-interface {v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->startPerceiving(Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;)V
    :try_end_20
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_20} :catch_28
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_20} :catch_21
    .catchall {:try_start_c .. :try_end_20} :catchall_45

    .line 138
    goto :goto_25

    .line 136
    :catch_21
    move-exception v1

    .line 137
    :try_start_22
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 139
    :goto_25
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 133
    :catch_28
    move-exception v1

    .line 134
    sget-object v2, Landroid/service/voice/VisualQueryDetector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startRecognition failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 140
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_22 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public whitelist stopRecognition()Z
    .registers 3

    .line 153
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector;->mInitializationDelegate:Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

    invoke-static {v0}, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->-$$Nest$mgetLock(Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 155
    :try_start_7
    iget-object v1, p0, Landroid/service/voice/VisualQueryDetector;->mInitializationDelegate:Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

    invoke-virtual {v1}, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->stopRecognition()Z
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_19

    .line 158
    :try_start_c
    iget-object v1, p0, Landroid/service/voice/VisualQueryDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->stopPerceiving()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12
    .catchall {:try_start_c .. :try_end_11} :catchall_19

    .line 161
    goto :goto_16

    .line 159
    :catch_12
    move-exception v1

    .line 160
    :try_start_13
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 162
    :goto_16
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 163
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public whitelist updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
    .registers 5

    .line 102
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector;->mInitializationDelegate:Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

    invoke-static {v0}, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->-$$Nest$mgetLock(Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 103
    :try_start_7
    iget-object v1, p0, Landroid/service/voice/VisualQueryDetector;->mInitializationDelegate:Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

    invoke-virtual {v1, p1, p2}, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V

    .line 104
    monitor-exit v0

    .line 105
    return-void

    .line 104
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p1
.end method
