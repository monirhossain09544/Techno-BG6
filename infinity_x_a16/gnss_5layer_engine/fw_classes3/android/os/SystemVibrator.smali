.class public Landroid/os/SystemVibrator;
.super Landroid/os/Vibrator;
.source "SystemVibrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/SystemVibrator$MultiVibratorStateListener;,
        Landroid/os/SystemVibrator$SingleVibratorStateListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "Vibrator"


# instance fields
.field private final blacklist mBrokenListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/SystemVibrator$MultiVibratorStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mRegisteredListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/Vibrator$OnVibratorStateChangedListener;",
            "Landroid/os/SystemVibrator$MultiVibratorStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mVibratorIds:[I

.field private blacklist mVibratorInfo:Landroid/os/VibratorInfo;

.field private final blacklist mVibratorManager:Landroid/os/VibratorManager;


# direct methods
.method public constructor greylist <init>(Landroid/content/Context;)V
    .registers 3

    .line 63
    invoke-direct {p0, p1}, Landroid/os/Vibrator;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibrator;->mRegisteredListeners:Landroid/util/ArrayMap;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibrator;->mLock:Ljava/lang/Object;

    .line 64
    iput-object p1, p0, Landroid/os/SystemVibrator;->mContext:Landroid/content/Context;

    .line 65
    iget-object p1, p0, Landroid/os/SystemVibrator;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/VibratorManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/VibratorManager;

    iput-object p1, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    .line 66
    return-void
.end method

.method private blacklist getVibratorIds()[I
    .registers 4

    .line 290
    iget-object v0, p0, Landroid/os/SystemVibrator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_3
    iget-object v1, p0, Landroid/os/SystemVibrator;->mVibratorIds:[I

    if-eqz v1, :cond_b

    .line 292
    iget-object v1, p0, Landroid/os/SystemVibrator;->mVibratorIds:[I

    monitor-exit v0

    return-object v1

    .line 294
    :cond_b
    iget-object v1, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v1, :cond_19

    .line 295
    const-string v1, "Vibrator"

    const-string v2, "Failed to retrieve vibrator ids; no vibrator manager."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 298
    :cond_19
    iget-object v1, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    invoke-virtual {v1}, Landroid/os/VibratorManager;->getVibratorIds()[I

    move-result-object v1

    iput-object v1, p0, Landroid/os/SystemVibrator;->mVibratorIds:[I

    monitor-exit v0

    return-object v1

    .line 299
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method static synthetic blacklist lambda$startVendorSession$0(Landroid/os/vibrator/VendorVibrationSession$Callback;)V
    .registers 2

    .line 274
    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/os/vibrator/VendorVibrationSession$Callback;->onFinished(I)V

    return-void
.end method

.method static synthetic blacklist lambda$startVendorSession$1(Landroid/os/vibrator/VendorVibrationSession$Callback;)V
    .registers 2

    .line 281
    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/os/vibrator/VendorVibrationSession$Callback;->onFinished(I)V

    return-void
.end method

.method private blacklist tryUnregisterBrokenListeners()V
    .registers 5

    .line 313
    iget-object v0, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 315
    :try_start_3
    iget-object v1, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_9
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_20

    .line 316
    iget-object v2, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/SystemVibrator$MultiVibratorStateListener;

    iget-object v3, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    invoke-virtual {v2, v3}, Landroid/os/SystemVibrator$MultiVibratorStateListener;->unregister(Landroid/os/VibratorManager;)V

    .line 317
    iget-object v2, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_1f} :catch_23
    .catchall {:try_start_3 .. :try_end_1f} :catchall_21

    goto :goto_9

    .line 321
    :cond_20
    goto :goto_2b

    .line 322
    :catchall_21
    move-exception v1

    goto :goto_2d

    .line 319
    :catch_23
    move-exception v1

    .line 320
    :try_start_24
    const-string v2, "Vibrator"

    const-string v3, "Failed to unregister broken listener"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    :goto_2b
    monitor-exit v0

    .line 323
    return-void

    .line 322
    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_21

    throw v1
.end method


# virtual methods
.method public whitelist addVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .registers 3

    .line 131
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Landroid/os/SystemVibrator;->mContext:Landroid/content/Context;

    if-nez v0, :cond_f

    .line 133
    const-string p1, "Vibrator"

    const-string v0, "Failed to add vibrate state listener; no vibrator context."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void

    .line 136
    :cond_f
    iget-object v0, p0, Landroid/os/SystemVibrator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/os/SystemVibrator;->addVibratorStateListener(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V

    .line 137
    return-void
.end method

.method public whitelist addVibratorStateListener(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .registers 7

    .line 143
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v0, :cond_12

    .line 146
    const-string p1, "Vibrator"

    const-string p2, "Failed to add vibrate state listener; no vibrator manager."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void

    .line 149
    :cond_12
    invoke-direct {p0}, Landroid/os/SystemVibrator;->getVibratorIds()[I

    move-result-object v0

    .line 150
    if-nez v0, :cond_20

    .line 151
    const-string p1, "Vibrator"

    const-string p2, "Failed to add vibrate state listener; error retrieving vibrator ids."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void

    .line 154
    :cond_20
    nop

    .line 156
    const/4 v1, 0x0

    :try_start_22
    iget-object v2, p0, Landroid/os/SystemVibrator;->mRegisteredListeners:Landroid/util/ArrayMap;

    monitor-enter v2
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_57

    .line 158
    :try_start_25
    iget-object v3, p0, Landroid/os/SystemVibrator;->mRegisteredListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 159
    const-string p1, "Vibrator"

    const-string p2, "Listener already registered."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_25 .. :try_end_35} :catchall_54

    .line 168
    nop

    .line 175
    invoke-direct {p0}, Landroid/os/SystemVibrator;->tryUnregisterBrokenListeners()V

    .line 160
    return-void

    .line 162
    :cond_3a
    :try_start_3a
    new-instance v3, Landroid/os/SystemVibrator$MultiVibratorStateListener;

    invoke-direct {v3, p1, p2}, Landroid/os/SystemVibrator$MultiVibratorStateListener;-><init>(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_54

    .line 163
    :try_start_3f
    iget-object p1, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    invoke-virtual {v3, p1, v0}, Landroid/os/SystemVibrator$MultiVibratorStateListener;->register(Landroid/os/VibratorManager;[I)V

    .line 164
    iget-object p1, p0, Landroid/os/SystemVibrator;->mRegisteredListeners:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49
    .catchall {:try_start_3f .. :try_end_49} :catchall_51

    .line 165
    nop

    .line 166
    :try_start_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_54

    .line 168
    nop

    .line 175
    invoke-direct {p0}, Landroid/os/SystemVibrator;->tryUnregisterBrokenListeners()V

    .line 176
    nop

    .line 177
    return-void

    .line 166
    :catchall_51
    move-exception p1

    move-object v1, v3

    goto :goto_55

    :catchall_54
    move-exception p1

    :goto_55
    :try_start_55
    monitor-exit v2
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    :try_start_56
    throw p1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_57

    .line 168
    :catchall_57
    move-exception p1

    if-eqz v1, :cond_6d

    invoke-virtual {v1}, Landroid/os/SystemVibrator$MultiVibratorStateListener;->hasRegisteredListeners()Z

    move-result p2

    if-eqz p2, :cond_6d

    .line 171
    iget-object p2, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    monitor-enter p2

    .line 172
    :try_start_63
    iget-object v0, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    monitor-exit p2

    goto :goto_6d

    :catchall_6a
    move-exception p1

    monitor-exit p2
    :try_end_6c
    .catchall {:try_start_63 .. :try_end_6c} :catchall_6a

    throw p1

    .line 175
    :cond_6d
    :goto_6d
    invoke-direct {p0}, Landroid/os/SystemVibrator;->tryUnregisterBrokenListeners()V

    .line 176
    throw p1
.end method

.method public whitelist areVendorSessionsSupported()Z
    .registers 3

    .line 203
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/os/VibratorManager;->hasCapabilities(I)Z

    move-result v0

    return v0
.end method

.method public whitelist cancel()V
    .registers 3

    .line 251
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v0, :cond_c

    .line 252
    const-string v0, "Vibrator"

    const-string v1, "Failed to cancel vibrate; no vibrator manager."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return-void

    .line 255
    :cond_c
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    invoke-virtual {v0}, Landroid/os/VibratorManager;->cancel()V

    .line 256
    return-void
.end method

.method public blacklist cancel(I)V
    .registers 3

    .line 260
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v0, :cond_c

    .line 261
    const-string p1, "Vibrator"

    const-string v0, "Failed to cancel vibrate; no vibrator manager."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void

    .line 264
    :cond_c
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    invoke-virtual {v0, p1}, Landroid/os/VibratorManager;->cancel(I)V

    .line 265
    return-void
.end method

.method public blacklist getInfo()Landroid/os/VibratorInfo;
    .registers 7

    .line 70
    iget-object v0, p0, Landroid/os/SystemVibrator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_3
    iget-object v1, p0, Landroid/os/SystemVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    if-eqz v1, :cond_b

    .line 72
    iget-object v1, p0, Landroid/os/SystemVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    monitor-exit v0

    return-object v1

    .line 74
    :cond_b
    iget-object v1, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v1, :cond_1a

    .line 75
    const-string v1, "Vibrator"

    const-string v2, "Failed to retrieve vibrator info; no vibrator manager."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    sget-object v1, Landroid/os/VibratorInfo;->EMPTY_VIBRATOR_INFO:Landroid/os/VibratorInfo;

    monitor-exit v0

    return-object v1

    .line 78
    :cond_1a
    invoke-direct {p0}, Landroid/os/SystemVibrator;->getVibratorIds()[I

    move-result-object v1

    .line 79
    if-nez v1, :cond_2b

    .line 80
    const-string v1, "Vibrator"

    const-string v2, "Failed to retrieve vibrator info; error retrieving vibrator ids."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sget-object v1, Landroid/os/VibratorInfo;->EMPTY_VIBRATOR_INFO:Landroid/os/VibratorInfo;

    monitor-exit v0

    return-object v1

    .line 83
    :cond_2b
    array-length v2, v1

    if-nez v2, :cond_34

    .line 86
    sget-object v1, Landroid/os/VibratorInfo;->EMPTY_VIBRATOR_INFO:Landroid/os/VibratorInfo;

    iput-object v1, p0, Landroid/os/SystemVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    monitor-exit v0

    return-object v1

    .line 88
    :cond_34
    array-length v2, v1

    new-array v2, v2, [Landroid/os/VibratorInfo;

    .line 89
    const/4 v3, 0x0

    :goto_38
    array-length v4, v1

    if-ge v3, v4, :cond_6e

    .line 90
    iget-object v4, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    aget v5, v1, v3

    invoke-virtual {v4, v5}, Landroid/os/VibratorManager;->getVibrator(I)Landroid/os/Vibrator;

    move-result-object v4

    .line 91
    instance-of v5, v4, Landroid/os/NullVibrator;

    if-eqz v5, :cond_65

    .line 92
    const-string v2, "Vibrator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Vibrator manager service not ready; Info not yet available for vibrator: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v1, v1, v3

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object v1, Landroid/os/VibratorInfo;->EMPTY_VIBRATOR_INFO:Landroid/os/VibratorInfo;

    monitor-exit v0

    return-object v1

    .line 98
    :cond_65
    invoke-virtual {v4}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v4

    aput-object v4, v2, v3

    .line 89
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 100
    :cond_6e
    const/4 v1, -0x1

    invoke-static {v1, v2}, Landroid/os/vibrator/VibratorInfoFactory;->create(I[Landroid/os/VibratorInfo;)Landroid/os/VibratorInfo;

    move-result-object v1

    iput-object v1, p0, Landroid/os/SystemVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    monitor-exit v0

    return-object v1

    .line 101
    :catchall_77
    move-exception v1

    monitor-exit v0
    :try_end_79
    .catchall {:try_start_3 .. :try_end_79} :catchall_77

    throw v1
.end method

.method public whitelist hasAmplitudeControl()Z
    .registers 2

    .line 198
    invoke-virtual {p0}, Landroid/os/SystemVibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->hasAmplitudeControl()Z

    move-result v0

    return v0
.end method

.method public whitelist hasVibrator()Z
    .registers 4

    .line 106
    invoke-direct {p0}, Landroid/os/SystemVibrator;->getVibratorIds()[I

    move-result-object v0

    .line 107
    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 108
    const-string v0, "Vibrator"

    const-string v2, "Failed to check if vibrator exists; no vibrator manager."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return v1

    .line 111
    :cond_f
    array-length v0, v0

    if-lez v0, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1
.end method

.method public whitelist isVibrating()Z
    .registers 7

    .line 116
    invoke-direct {p0}, Landroid/os/SystemVibrator;->getVibratorIds()[I

    move-result-object v0

    .line 117
    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 118
    const-string v0, "Vibrator"

    const-string v2, "Failed to vibrate; no vibrator manager."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return v1

    .line 121
    :cond_f
    array-length v2, v0

    move v3, v1

    :goto_11
    if-ge v3, v2, :cond_26

    aget v4, v0, v3

    .line 122
    iget-object v5, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    invoke-virtual {v5, v4}, Landroid/os/VibratorManager;->getVibrator(I)Landroid/os/Vibrator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Vibrator;->isVibrating()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 123
    const/4 v0, 0x1

    return v0

    .line 121
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 126
    :cond_26
    return v1
.end method

.method public blacklist performHapticFeedback(IILjava/lang/String;II)V
    .registers 12

    .line 231
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v0, :cond_c

    .line 232
    const-string p1, "Vibrator"

    const-string p2, "Failed to perform haptic feedback; no vibrator manager."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void

    .line 235
    :cond_c
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/os/VibratorManager;->performHapticFeedback(IILjava/lang/String;II)V

    .line 236
    return-void
.end method

.method public blacklist performHapticFeedbackForInputDevice(IIILjava/lang/String;II)V
    .registers 14

    .line 241
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v0, :cond_c

    .line 242
    const-string p1, "Vibrator"

    const-string p2, "Failed to perform haptic feedback for input device; no vibrator manager."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-void

    .line 245
    :cond_c
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/os/VibratorManager;->performHapticFeedbackForInputDevice(IIILjava/lang/String;II)V

    .line 247
    return-void
.end method

.method public whitelist removeVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .registers 5

    .line 181
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v0, :cond_f

    .line 183
    const-string p1, "Vibrator"

    const-string v0, "Failed to remove vibrate state listener; no vibrator manager."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void

    .line 186
    :cond_f
    iget-object v0, p0, Landroid/os/SystemVibrator;->mRegisteredListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 187
    :try_start_12
    iget-object v1, p0, Landroid/os/SystemVibrator;->mRegisteredListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 188
    iget-object v1, p0, Landroid/os/SystemVibrator;->mRegisteredListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SystemVibrator$MultiVibratorStateListener;

    .line 189
    iget-object v2, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    invoke-virtual {v1, v2}, Landroid/os/SystemVibrator$MultiVibratorStateListener;->unregister(Landroid/os/VibratorManager;)V

    .line 190
    iget-object v1, p0, Landroid/os/SystemVibrator;->mRegisteredListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_12 .. :try_end_2d} :catchall_31

    .line 193
    invoke-direct {p0}, Landroid/os/SystemVibrator;->tryUnregisterBrokenListeners()V

    .line 194
    return-void

    .line 192
    :catchall_31
    move-exception p1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p1
.end method

.method public blacklist setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)Z
    .registers 12

    .line 209
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v0, :cond_d

    .line 210
    const-string p1, "Vibrator"

    const-string p2, "Failed to set always-on effect; no vibrator manager."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 p1, 0x0

    return p1

    .line 213
    :cond_d
    invoke-static {p4}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object v4

    .line 214
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/os/VibratorManager;->setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;)Z

    move-result p1

    return p1
.end method

.method public whitelist startVendorSession(Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/vibrator/VendorVibrationSession$Callback;)V
    .registers 13

    .line 271
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    const-string v1, "Vibrator"

    if-nez v0, :cond_14

    .line 272
    const-string p1, "Failed to start vibration session; no vibrator manager."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance p1, Landroid/os/SystemVibrator$$ExternalSyntheticLambda0;

    invoke-direct {p1, p5}, Landroid/os/SystemVibrator$$ExternalSyntheticLambda0;-><init>(Landroid/os/vibrator/VendorVibrationSession$Callback;)V

    invoke-interface {p4, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 275
    return-void

    .line 277
    :cond_14
    move-object v0, v1

    invoke-direct {p0}, Landroid/os/SystemVibrator;->getVibratorIds()[I

    move-result-object v1

    .line 278
    if-nez v1, :cond_29

    .line 279
    const-string p1, "Failed to start vibration session; error retrieving vibrator ids."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    new-instance p1, Landroid/os/SystemVibrator$$ExternalSyntheticLambda1;

    invoke-direct {p1, p5}, Landroid/os/SystemVibrator$$ExternalSyntheticLambda1;-><init>(Landroid/os/vibrator/VendorVibrationSession$Callback;)V

    invoke-interface {p4, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 282
    return-void

    .line 284
    :cond_29
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/os/VibratorManager;->startVendorSession([ILandroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/vibrator/VendorVibrationSession$Callback;)V

    .line 286
    return-void
.end method

.method public blacklist vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V
    .registers 12

    .line 220
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v0, :cond_c

    .line 221
    const-string p1, "Vibrator"

    const-string p2, "Failed to vibrate; no vibrator manager."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void

    .line 224
    :cond_c
    invoke-static {p3}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object v3

    .line 225
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/os/VibratorManager;->vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    .line 226
    return-void
.end method
