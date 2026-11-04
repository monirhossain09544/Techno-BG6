.class public Landroid/os/SystemVibratorManager;
.super Landroid/os/VibratorManager;
.source "SystemVibratorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/SystemVibratorManager$SingleVibrator;,
        Landroid/os/SystemVibratorManager$VendorVibrationSessionCallbackDelegate;,
        Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "VibratorManager"


# instance fields
.field private blacklist mCapabilities:I

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/Vibrator$OnVibratorStateChangedListener;",
            "Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mService:Landroid/os/IVibratorManagerService;

.field private final blacklist mToken:Landroid/os/Binder;

.field private final blacklist mUid:I

.field private blacklist mVibratorIds:[I

.field private final blacklist mVibrators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Vibrator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/os/SystemVibratorManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/os/SystemVibratorManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListeners(Landroid/os/SystemVibratorManager;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/os/SystemVibratorManager;->mListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/os/SystemVibratorManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/os/SystemVibratorManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/os/SystemVibratorManager;)Landroid/os/IVibratorManagerService;
    .registers 1

    iget-object p0, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 66
    invoke-direct {p0, p1}, Landroid/os/VibratorManager;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibratorManager;->mToken:Landroid/os/Binder;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibratorManager;->mLock:Ljava/lang/Object;

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibratorManager;->mVibrators:Landroid/util/SparseArray;

    .line 58
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibratorManager;->mListeners:Landroid/util/ArrayMap;

    .line 67
    iput-object p1, p0, Landroid/os/SystemVibratorManager;->mContext:Landroid/content/Context;

    .line 68
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    iput p1, p0, Landroid/os/SystemVibratorManager;->mUid:I

    .line 69
    nop

    .line 70
    const-string/jumbo p1, "vibrator_manager"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 69
    invoke-static {p1}, Landroid/os/IVibratorManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorManagerService;

    move-result-object p1

    iput-object p1, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    .line 71
    return-void
.end method

.method private blacklist cancelVibration(I)V
    .registers 5

    .line 257
    iget-object v0, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    const-string v1, "VibratorManager"

    if-nez v0, :cond_c

    .line 258
    const-string p1, "Failed to cancel vibration; no vibrator manager service."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void

    .line 262
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    iget-object v2, p0, Landroid/os/SystemVibratorManager;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, v2}, Landroid/os/IVibratorManagerService;->cancelVibrate(ILandroid/os/IBinder;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_14

    .line 265
    goto :goto_1a

    .line 263
    :catch_14
    move-exception p1

    .line 264
    const-string v0, "Failed to cancel vibration."

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    :goto_1a
    return-void
.end method

.method private blacklist getCapabilities()I
    .registers 4

    .line 238
    iget-object v0, p0, Landroid/os/SystemVibratorManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_3
    iget v1, p0, Landroid/os/SystemVibratorManager;->mCapabilities:I

    if-eqz v1, :cond_b

    .line 240
    iget v1, p0, Landroid/os/SystemVibratorManager;->mCapabilities:I

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_28

    return v1

    .line 243
    :cond_b
    :try_start_b
    iget-object v1, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    if-nez v1, :cond_17

    .line 244
    const-string v1, "VibratorManager"

    const-string v2, "Failed to retrieve vibrator manager capabilities; no vibrator manager service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    goto :goto_25

    .line 247
    :cond_17
    iget-object v1, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    invoke-interface {v1}, Landroid/os/IVibratorManagerService;->getCapabilities()I

    move-result v1

    iput v1, p0, Landroid/os/SystemVibratorManager;->mCapabilities:I
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1f} :catch_21
    .catchall {:try_start_b .. :try_end_1f} :catchall_28

    :try_start_1f
    monitor-exit v0

    return v1

    .line 249
    :catch_21
    move-exception v1

    .line 250
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 252
    :goto_25
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 253
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_28

    throw v1
.end method


# virtual methods
.method public whitelist cancel()V
    .registers 2

    .line 204
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/os/SystemVibratorManager;->cancelVibration(I)V

    .line 205
    return-void
.end method

.method public blacklist cancel(I)V
    .registers 2

    .line 209
    invoke-direct {p0, p1}, Landroid/os/SystemVibratorManager;->cancelVibration(I)V

    .line 210
    return-void
.end method

.method public whitelist getDefaultVibrator()Landroid/os/Vibrator;
    .registers 3

    .line 129
    iget-object v0, p0, Landroid/os/SystemVibratorManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    return-object v0
.end method

.method public whitelist getVibrator(I)Landroid/os/Vibrator;
    .registers 6

    .line 101
    iget-object v0, p0, Landroid/os/SystemVibratorManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_3
    iget-object v1, p0, Landroid/os/SystemVibratorManager;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 103
    if-eqz v1, :cond_f

    .line 104
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_3b

    return-object v1

    .line 106
    :cond_f
    nop

    .line 108
    const/4 v1, 0x0

    :try_start_11
    iget-object v2, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    if-nez v2, :cond_1d

    .line 109
    const-string v2, "VibratorManager"

    const-string v3, "Failed to retrieve vibrator; no vibrator manager service."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 111
    :cond_1d
    iget-object v2, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    invoke-interface {v2, p1}, Landroid/os/IVibratorManagerService;->getVibratorInfo(I)Landroid/os/VibratorInfo;

    move-result-object v1
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_23} :catch_24
    .catchall {:try_start_11 .. :try_end_23} :catchall_3b

    .line 115
    :goto_23
    goto :goto_28

    .line 113
    :catch_24
    move-exception v2

    .line 114
    :try_start_25
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 116
    :goto_28
    if-eqz v1, :cond_35

    .line 117
    new-instance v2, Landroid/os/SystemVibratorManager$SingleVibrator;

    invoke-direct {v2, p0, v1}, Landroid/os/SystemVibratorManager$SingleVibrator;-><init>(Landroid/os/SystemVibratorManager;Landroid/os/VibratorInfo;)V

    .line 118
    iget-object v1, p0, Landroid/os/SystemVibratorManager;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_39

    .line 120
    :cond_35
    invoke-static {}, Landroid/os/NullVibrator;->getInstance()Landroid/os/NullVibrator;

    move-result-object v2

    .line 122
    :goto_39
    monitor-exit v0

    return-object v2

    .line 123
    :catchall_3b
    move-exception p1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_25 .. :try_end_3d} :catchall_3b

    throw p1
.end method

.method public whitelist getVibratorIds()[I
    .registers 4

    .line 76
    iget-object v0, p0, Landroid/os/SystemVibratorManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_3
    iget-object v1, p0, Landroid/os/SystemVibratorManager;->mVibratorIds:[I

    if-eqz v1, :cond_b

    .line 78
    iget-object v1, p0, Landroid/os/SystemVibratorManager;->mVibratorIds:[I

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_2a

    return-object v1

    .line 81
    :cond_b
    :try_start_b
    iget-object v1, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    if-nez v1, :cond_17

    .line 82
    const-string v1, "VibratorManager"

    const-string v2, "Failed to retrieve vibrator ids; no vibrator manager service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    goto :goto_25

    .line 84
    :cond_17
    iget-object v1, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    invoke-interface {v1}, Landroid/os/IVibratorManagerService;->getVibratorIds()[I

    move-result-object v1

    iput-object v1, p0, Landroid/os/SystemVibratorManager;->mVibratorIds:[I
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1f} :catch_21
    .catchall {:try_start_b .. :try_end_1f} :catchall_2a

    :try_start_1f
    monitor-exit v0

    return-object v1

    .line 86
    :catch_21
    move-exception v1

    .line 87
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 89
    :goto_25
    const/4 v1, 0x0

    new-array v1, v1, [I

    monitor-exit v0

    return-object v1

    .line 90
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public blacklist hasCapabilities(I)Z
    .registers 3

    .line 95
    invoke-direct {p0}, Landroid/os/SystemVibratorManager;->getCapabilities()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public blacklist performHapticFeedback(IILjava/lang/String;II)V
    .registers 19

    .line 168
    iget-object v0, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    const-string v1, "VibratorManager"

    if-nez v0, :cond_c

    .line 169
    const-string p1, "Failed to perform haptic feedback; no vibrator manager service."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void

    .line 172
    :cond_c
    const-string/jumbo v0, "performHapticFeedback"

    const-wide/32 v2, 0x800000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 174
    :try_start_15
    iget-object v4, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    iget v5, p0, Landroid/os/SystemVibratorManager;->mUid:I

    iget-object v0, p0, Landroid/os/SystemVibratorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDeviceId()I

    move-result v6

    iget-object v7, p0, Landroid/os/SystemVibratorManager;->mPackageName:Ljava/lang/String;

    move v8, p1

    move v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-interface/range {v4 .. v12}, Landroid/os/IVibratorManagerService;->performHapticFeedback(IILjava/lang/String;IILjava/lang/String;II)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_2c} :catch_30
    .catchall {:try_start_15 .. :try_end_2c} :catchall_2d

    goto :goto_37

    .line 179
    :catchall_2d
    move-exception v0

    move-object p1, v0

    goto :goto_3c

    .line 176
    :catch_30
    move-exception v0

    move-object p1, v0

    .line 177
    :try_start_32
    const-string v0, "Failed to perform haptic feedback."

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_2d

    .line 179
    :goto_37
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 180
    nop

    .line 181
    return-void

    .line 179
    :goto_3c
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 180
    throw p1
.end method

.method public blacklist performHapticFeedbackForInputDevice(IIILjava/lang/String;II)V
    .registers 21

    .line 186
    iget-object v0, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    const-string v1, "VibratorManager"

    if-nez v0, :cond_c

    .line 187
    const-string v0, "Failed to perform haptic feedback for input device; no vibrator manager service."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void

    .line 191
    :cond_c
    const-string/jumbo v0, "performHapticFeedbackForInputDevice"

    const-wide/32 v2, 0x800000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 193
    :try_start_15
    iget-object v4, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    iget v5, p0, Landroid/os/SystemVibratorManager;->mUid:I

    iget-object v0, p0, Landroid/os/SystemVibratorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDeviceId()I

    move-result v6

    iget-object v7, p0, Landroid/os/SystemVibratorManager;->mPackageName:Ljava/lang/String;

    move v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    invoke-interface/range {v4 .. v13}, Landroid/os/IVibratorManagerService;->performHapticFeedbackForInputDevice(IILjava/lang/String;IIILjava/lang/String;II)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_2f} :catch_32
    .catchall {:try_start_15 .. :try_end_2f} :catchall_30

    goto :goto_38

    .line 198
    :catchall_30
    move-exception v0

    goto :goto_3d

    .line 195
    :catch_32
    move-exception v0

    .line 196
    :try_start_33
    const-string v4, "Failed to perform haptic feedback for input device."

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_30

    .line 198
    :goto_38
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 199
    nop

    .line 200
    return-void

    .line 198
    :goto_3d
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 199
    throw v0
.end method

.method public blacklist setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;)Z
    .registers 15

    .line 135
    iget-object v0, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    const/4 v1, 0x0

    const-string v2, "VibratorManager"

    if-nez v0, :cond_d

    .line 136
    const-string p1, "Failed to set always-on effect; no vibrator manager service."

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return v1

    .line 140
    :cond_d
    :try_start_d
    iget-object v3, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/os/IVibratorManagerService;->setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;)Z

    move-result p1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_19

    return p1

    .line 141
    :catch_19
    move-exception v0

    move-object p1, v0

    .line 142
    const-string p2, "Failed to set always-on effect."

    invoke-static {v2, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    return v1
.end method

.method public blacklist startVendorSession([ILandroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/vibrator/VendorVibrationSession$Callback;)V
    .registers 15

    .line 216
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    new-instance v7, Landroid/os/SystemVibratorManager$VendorVibrationSessionCallbackDelegate;

    invoke-direct {v7, p5, p6}, Landroid/os/SystemVibratorManager$VendorVibrationSessionCallbackDelegate;-><init>(Ljava/util/concurrent/Executor;Landroid/os/vibrator/VendorVibrationSession$Callback;)V

    .line 219
    iget-object p5, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    const-string p6, "VibratorManager"

    if-nez p5, :cond_18

    .line 220
    const-string p1, "Failed to start vibration session; no vibrator manager service."

    invoke-static {p6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 p1, 0x3

    invoke-virtual {v7, p1}, Landroid/os/SystemVibratorManager$VendorVibrationSessionCallbackDelegate;->onFinished(I)V

    .line 222
    return-void

    .line 225
    :cond_18
    :try_start_18
    iget-object v0, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    iget v1, p0, Landroid/os/SystemVibratorManager;->mUid:I

    iget-object p5, p0, Landroid/os/SystemVibratorManager;->mContext:Landroid/content/Context;

    .line 226
    invoke-virtual {p5}, Landroid/content/Context;->getDeviceId()I

    move-result v2

    iget-object v3, p0, Landroid/os/SystemVibratorManager;->mPackageName:Ljava/lang/String;

    .line 225
    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v7}, Landroid/os/IVibratorManagerService;->startVendorVibrationSession(IILjava/lang/String;[ILandroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/vibrator/IVibrationSessionCallback;)Landroid/os/ICancellationSignal;

    move-result-object p1

    .line 228
    if-eqz p4, :cond_30

    .line 229
    invoke-virtual {p4, p1}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_30} :catch_31

    .line 234
    :cond_30
    goto :goto_3c

    .line 231
    :catch_31
    move-exception v0

    move-object p1, v0

    .line 232
    const-string p2, "Failed to start vibration session."

    invoke-static {p6, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    const/4 p1, 0x5

    invoke-virtual {v7, p1}, Landroid/os/SystemVibratorManager$VendorVibrationSessionCallbackDelegate;->onFinished(I)V

    .line 235
    :goto_3c
    return-void
.end method

.method public blacklist vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Ljava/lang/String;Landroid/os/VibrationAttributes;)V
    .registers 18

    .line 150
    iget-object v0, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    const-string v1, "VibratorManager"

    if-nez v0, :cond_c

    .line 151
    const-string p1, "Failed to vibrate; no vibrator manager service."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void

    .line 154
    :cond_c
    const-string/jumbo v0, "vibrate"

    const-wide/32 v2, 0x800000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 156
    :try_start_15
    iget-object v4, p0, Landroid/os/SystemVibratorManager;->mService:Landroid/os/IVibratorManagerService;

    iget-object v0, p0, Landroid/os/SystemVibratorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDeviceId()I

    move-result v6

    iget-object v11, p0, Landroid/os/SystemVibratorManager;->mToken:Landroid/os/Binder;

    move v5, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v10, p4

    move-object/from16 v9, p5

    invoke-interface/range {v4 .. v11}, Landroid/os/IVibratorManagerService;->vibrate(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_29} :catch_2d
    .catchall {:try_start_15 .. :try_end_29} :catchall_2a

    goto :goto_34

    .line 161
    :catchall_2a
    move-exception v0

    move-object p1, v0

    goto :goto_39

    .line 158
    :catch_2d
    move-exception v0

    move-object p1, v0

    .line 159
    :try_start_2f
    const-string p2, "Failed to vibrate."

    invoke-static {v1, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_2a

    .line 161
    :goto_34
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 162
    nop

    .line 163
    return-void

    .line 161
    :goto_39
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 162
    throw p1
.end method
