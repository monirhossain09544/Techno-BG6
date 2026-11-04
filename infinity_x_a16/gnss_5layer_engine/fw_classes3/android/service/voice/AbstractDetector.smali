.class abstract Landroid/service/voice/AbstractDetector;
.super Ljava/lang/Object;
.source "AbstractDetector.java"

# interfaces
.implements Landroid/service/voice/HotwordDetector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/AbstractDetector$BinderCallback;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field static final blacklist IS_IDENTITY_WITH_ATTRIBUTION_TAG:Z = false

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mCallback:Landroid/service/voice/HotwordDetector$Callback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mIsDetectorActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

.field private blacklist mOnDestroyListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/service/voice/AbstractDetector;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mToken:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/service/voice/AbstractDetector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 53
    const-class v0, Landroid/service/voice/AbstractDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/voice/AbstractDetector;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/app/IVoiceInteractionManagerService;Ljava/util/concurrent/Executor;Landroid/service/voice/HotwordDetector$Callback;)V
    .registers 5

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/voice/AbstractDetector;->mLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/service/voice/AbstractDetector;->mToken:Landroid/os/IBinder;

    .line 79
    iput-object p1, p0, Landroid/service/voice/AbstractDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 80
    iput-object p3, p0, Landroid/service/voice/AbstractDetector;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    .line 81
    if-eqz p2, :cond_18

    goto :goto_26

    :cond_18
    new-instance p2, Landroid/os/HandlerExecutor;

    new-instance p1, Landroid/os/Handler;

    .line 82
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p2, p1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    :goto_26
    iput-object p2, p0, Landroid/service/voice/AbstractDetector;->mExecutor:Ljava/util/concurrent/Executor;

    .line 83
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroid/service/voice/AbstractDetector;->mIsDetectorActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 84
    return-void
.end method


# virtual methods
.method public whitelist destroy()V
    .registers 3

    .line 193
    iget-object v0, p0, Landroid/service/voice/AbstractDetector;->mIsDetectorActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    .line 194
    return-void

    .line 196
    :cond_9
    iget-object v0, p0, Landroid/service/voice/AbstractDetector;->mIsDetectorActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 198
    :try_start_f
    iget-object v0, p0, Landroid/service/voice/AbstractDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v1, p0, Landroid/service/voice/AbstractDetector;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->destroyDetector(Landroid/os/IBinder;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_26

    .line 201
    nop

    .line 203
    iget-object v0, p0, Landroid/service/voice/AbstractDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_1a
    iget-object v1, p0, Landroid/service/voice/AbstractDetector;->mOnDestroyListener:Ljava/util/function/Consumer;

    .line 205
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_23

    .line 206
    if-eqz v1, :cond_22

    .line 207
    invoke-interface {v1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 209
    :cond_22
    return-void

    .line 205
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1

    .line 199
    :catch_26
    move-exception v0

    .line 200
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method protected blacklist initAndVerifyDetector(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;ILjava/lang/String;)V
    .registers 13

    .line 168
    new-instance v1, Landroid/media/permission/Identity;

    invoke-direct {v1}, Landroid/media/permission/Identity;-><init>()V

    .line 169
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object p5

    iput-object p5, v1, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 174
    :try_start_b
    iget-object v0, p0, Landroid/service/voice/AbstractDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v4, p0, Landroid/service/voice/AbstractDetector;->mToken:Landroid/os/IBinder;

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IVoiceInteractionManagerService;->initAndVerifyDetector(Landroid/media/permission/Identity;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IBinder;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_16} :catch_18

    .line 178
    nop

    .line 179
    return-void

    .line 176
    :catch_18
    move-exception v0

    move-object p1, v0

    .line 177
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method abstract blacklist initialize(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
.end method

.method blacklist isSameToken(Landroid/os/IBinder;)Z
    .registers 4

    .line 87
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 88
    return v0

    .line 90
    :cond_4
    iget-object v1, p0, Landroid/service/voice/AbstractDetector;->mToken:Landroid/os/IBinder;

    if-ne v1, p1, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
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

    .line 182
    iget-object v0, p0, Landroid/service/voice/AbstractDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_3
    iget-object v1, p0, Landroid/service/voice/AbstractDetector;->mOnDestroyListener:Ljava/util/function/Consumer;

    if-nez v1, :cond_b

    .line 186
    iput-object p1, p0, Landroid/service/voice/AbstractDetector;->mOnDestroyListener:Ljava/util/function/Consumer;

    .line 187
    monitor-exit v0

    .line 188
    return-void

    .line 184
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "only one destroy listener can be registered"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 187
    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public whitelist startRecognition(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;)Z
    .registers 10

    .line 113
    invoke-virtual {p0}, Landroid/service/voice/AbstractDetector;->throwIfDetectorIsNoLongerActive()V

    .line 118
    :try_start_3
    iget-object v0, p0, Landroid/service/voice/AbstractDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v4, p0, Landroid/service/voice/AbstractDetector;->mToken:Landroid/os/IBinder;

    new-instance v5, Landroid/service/voice/AbstractDetector$BinderCallback;

    iget-object v1, p0, Landroid/service/voice/AbstractDetector;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/service/voice/AbstractDetector;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    invoke-direct {v5, v1, v2}, Landroid/service/voice/AbstractDetector$BinderCallback;-><init>(Ljava/util/concurrent/Executor;Landroid/service/voice/HotwordDetector$Callback;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IVoiceInteractionManagerService;->startListeningFromExternalSource(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/os/IBinder;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_16} :catch_17

    .line 126
    goto :goto_1c

    .line 124
    :catch_17
    move-exception v0

    move-object p1, v0

    .line 125
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 128
    :goto_1c
    const/4 p1, 0x1

    return p1
.end method

.method protected blacklist throwIfDetectorIsNoLongerActive()V
    .registers 3

    .line 212
    iget-object v0, p0, Landroid/service/voice/AbstractDetector;->mIsDetectorActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 217
    return-void

    .line 213
    :cond_9
    sget-object v0, Landroid/service/voice/AbstractDetector;->TAG:Ljava/lang/String;

    const-string v1, "attempting to use a destroyed detector which is no longer active"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
    .registers 5

    .line 151
    invoke-virtual {p0}, Landroid/service/voice/AbstractDetector;->throwIfDetectorIsNoLongerActive()V

    .line 153
    :try_start_3
    iget-object v0, p0, Landroid/service/voice/AbstractDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v1, p0, Landroid/service/voice/AbstractDetector;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IBinder;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_c

    .line 156
    nop

    .line 157
    return-void

    .line 154
    :catch_c
    move-exception p1

    .line 155
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
