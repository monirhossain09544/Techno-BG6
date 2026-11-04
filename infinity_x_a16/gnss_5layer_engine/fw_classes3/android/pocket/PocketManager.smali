.class public Landroid/pocket/PocketManager;
.super Ljava/lang/Object;
.source "PocketManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/pocket/PocketManager$PocketLockTimeout;
    }
.end annotation


# static fields
.field static final blacklist DEBUG:Z = false

.field public static final blacklist REASON_ERROR:I = 0x1

.field public static final blacklist REASON_RESET:I = 0x2

.field public static final blacklist REASON_SENSOR:I

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mPocketLockTimeout:Landroid/pocket/PocketManager$PocketLockTimeout;

.field private blacklist mPocketViewTimerActive:Z

.field private final blacklist mPowerManager:Landroid/os/PowerManager;

.field private final blacklist mService:Landroid/pocket/IPocketService;

.field private final blacklist mTelecomManager:Landroid/telecom/TelecomManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPowerManager(Landroid/pocket/PocketManager;)Landroid/os/PowerManager;
    .registers 1

    iget-object p0, p0, Landroid/pocket/PocketManager;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTelecomManager(Landroid/pocket/PocketManager;)Landroid/telecom/TelecomManager;
    .registers 1

    iget-object p0, p0, Landroid/pocket/PocketManager;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPocketViewTimerActive(Landroid/pocket/PocketManager;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/pocket/PocketManager;->mPocketViewTimerActive:Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 61
    const-class v0, Landroid/pocket/PocketManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/pocket/PocketManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/pocket/IPocketService;)V
    .registers 4

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    new-instance v0, Landroid/pocket/PocketManager$PocketLockTimeout;

    invoke-direct {v0, p0}, Landroid/pocket/PocketManager$PocketLockTimeout;-><init>(Landroid/pocket/PocketManager;)V

    iput-object v0, p0, Landroid/pocket/PocketManager;->mPocketLockTimeout:Landroid/pocket/PocketManager$PocketLockTimeout;

    .line 94
    iput-object p1, p0, Landroid/pocket/PocketManager;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Landroid/pocket/PocketManager;->mService:Landroid/pocket/IPocketService;

    .line 96
    iget-object p1, p0, Landroid/pocket/PocketManager;->mService:Landroid/pocket/IPocketService;

    if-nez p1, :cond_19

    .line 97
    sget-object p1, Landroid/pocket/PocketManager;->TAG:Ljava/lang/String;

    const-string p2, "PocketService was null"

    invoke-static {p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_19
    iget-object p1, p0, Landroid/pocket/PocketManager;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Landroid/pocket/PocketManager;->mPowerManager:Landroid/os/PowerManager;

    .line 100
    iget-object p1, p0, Landroid/pocket/PocketManager;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "telecom"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    iput-object p1, p0, Landroid/pocket/PocketManager;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 101
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroid/pocket/PocketManager;->mHandler:Landroid/os/Handler;

    .line 102
    return-void
.end method


# virtual methods
.method public blacklist addCallback(Landroid/pocket/IPocketCallback;)V
    .registers 5

    .line 109
    iget-object v0, p0, Landroid/pocket/PocketManager;->mService:Landroid/pocket/IPocketService;

    if-eqz v0, :cond_22

    .line 110
    :try_start_4
    iget-object v0, p0, Landroid/pocket/PocketManager;->mService:Landroid/pocket/IPocketService;

    invoke-interface {v0, p1}, Landroid/pocket/IPocketService;->addCallback(Landroid/pocket/IPocketCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 120
    goto :goto_22

    .line 111
    :catch_a
    move-exception v0

    .line 112
    sget-object v1, Landroid/pocket/PocketManager;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception in addCallback: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    if-eqz p1, :cond_22

    .line 115
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_16
    invoke-interface {p1, v0, v1}, Landroid/pocket/IPocketCallback;->onStateChanged(ZI)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1a

    .line 118
    goto :goto_22

    .line 116
    :catch_1a
    move-exception p1

    .line 117
    sget-object v0, Landroid/pocket/PocketManager;->TAG:Ljava/lang/String;

    const-string v1, "Remote exception in callback.onPocketStateChanged: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    :cond_22
    :goto_22
    return-void
.end method

.method public blacklist isDeviceInPocket()Z
    .registers 4

    .line 194
    iget-object v0, p0, Landroid/pocket/PocketManager;->mService:Landroid/pocket/IPocketService;

    if-eqz v0, :cond_13

    .line 195
    :try_start_4
    iget-object v0, p0, Landroid/pocket/PocketManager;->mService:Landroid/pocket/IPocketService;

    invoke-interface {v0}, Landroid/pocket/IPocketService;->isDeviceInPocket()Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    .line 196
    :catch_b
    move-exception v0

    .line 197
    sget-object v1, Landroid/pocket/PocketManager;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception in isDeviceInPocket: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isPocketLockVisible()Z
    .registers 4

    .line 227
    iget-object v0, p0, Landroid/pocket/PocketManager;->mService:Landroid/pocket/IPocketService;

    if-eqz v0, :cond_13

    .line 228
    :try_start_4
    iget-object v0, p0, Landroid/pocket/PocketManager;->mService:Landroid/pocket/IPocketService;

    invoke-interface {v0}, Landroid/pocket/IPocketService;->isPocketLockVisible()Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    .line 229
    :catch_b
    move-exception v0

    .line 230
    sget-object v1, Landroid/pocket/PocketManager;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception in isPocketLockVisible: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onInteractiveChanged(Z)V
    .registers 8

    .line 148
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Landroid/pocket/PocketManager;->isDeviceInPocket()Z

    move-result v2

    if-eqz v2, :cond_c

    move v2, v0

    goto :goto_d

    :cond_c
    move v2, v1

    .line 149
    :goto_d
    iget-object v3, p0, Landroid/pocket/PocketManager;->mPocketLockTimeout:Landroid/pocket/PocketManager$PocketLockTimeout;

    monitor-enter v3

    .line 150
    :try_start_10
    iget-boolean v4, p0, Landroid/pocket/PocketManager;->mPocketViewTimerActive:Z

    if-eq v4, v2, :cond_32

    .line 151
    if-eqz v2, :cond_29

    .line 153
    iget-object v1, p0, Landroid/pocket/PocketManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/pocket/PocketManager;->mPocketLockTimeout:Landroid/pocket/PocketManager$PocketLockTimeout;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 154
    iget-object v1, p0, Landroid/pocket/PocketManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/pocket/PocketManager;->mPocketLockTimeout:Landroid/pocket/PocketManager$PocketLockTimeout;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 155
    iput-boolean v0, p0, Landroid/pocket/PocketManager;->mPocketViewTimerActive:Z

    goto :goto_32

    .line 158
    :cond_29
    iget-object v0, p0, Landroid/pocket/PocketManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/pocket/PocketManager;->mPocketLockTimeout:Landroid/pocket/PocketManager$PocketLockTimeout;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 159
    iput-boolean v1, p0, Landroid/pocket/PocketManager;->mPocketViewTimerActive:Z

    .line 162
    :cond_32
    :goto_32
    monitor-exit v3
    :try_end_33
    .catchall {:try_start_10 .. :try_end_33} :catchall_46

    .line 163
    iget-object v0, p0, Landroid/pocket/PocketManager;->mService:Landroid/pocket/IPocketService;

    if-eqz v0, :cond_45

    .line 164
    :try_start_37
    iget-object v0, p0, Landroid/pocket/PocketManager;->mService:Landroid/pocket/IPocketService;

    invoke-interface {v0, p1}, Landroid/pocket/IPocketService;->onInteractiveChanged(Z)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d

    .line 167
    goto :goto_45

    .line 165
    :catch_3d
    move-exception p1

    .line 166
    sget-object v0, Landroid/pocket/PocketManager;->TAG:Ljava/lang/String;

    const-string v1, "Remote exception in addCallback: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    :cond_45
    :goto_45
    return-void

    .line 162
    :catchall_46
    move-exception p1

    :try_start_47
    monitor-exit v3
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p1
.end method

.method public blacklist removeCallback(Landroid/pocket/IPocketCallback;)V
    .registers 5

    .line 128
    iget-object v0, p0, Landroid/pocket/PocketManager;->mService:Landroid/pocket/IPocketService;

    if-eqz v0, :cond_22

    .line 129
    :try_start_4
    iget-object v0, p0, Landroid/pocket/PocketManager;->mService:Landroid/pocket/IPocketService;

    invoke-interface {v0, p1}, Landroid/pocket/IPocketService;->removeCallback(Landroid/pocket/IPocketCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 139
    goto :goto_22

    .line 130
    :catch_a
    move-exception v0

    .line 131
    sget-object v1, Landroid/pocket/PocketManager;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception in removeCallback: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    if-eqz p1, :cond_22

    .line 134
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_16
    invoke-interface {p1, v0, v1}, Landroid/pocket/IPocketCallback;->onStateChanged(ZI)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1a

    .line 137
    goto :goto_22

    .line 135
    :catch_1a
    move-exception p1

    .line 136
    sget-object v0, Landroid/pocket/PocketManager;->TAG:Ljava/lang/String;

    const-string v1, "Remote exception in callback.onPocketStateChanged: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    :cond_22
    :goto_22
    return-void
.end method

.method public blacklist setListeningExternal(Z)V
    .registers 5

    .line 175
    iget-object v0, p0, Landroid/pocket/PocketManager;->mService:Landroid/pocket/IPocketService;

    if-eqz v0, :cond_12

    .line 176
    :try_start_4
    iget-object v0, p0, Landroid/pocket/PocketManager;->mService:Landroid/pocket/IPocketService;

    invoke-interface {v0, p1}, Landroid/pocket/IPocketService;->setListeningExternal(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 179
    goto :goto_12

    .line 177
    :catch_a
    move-exception v0

    .line 178
    sget-object v1, Landroid/pocket/PocketManager;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception in setListeningExternal: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    :cond_12
    :goto_12
    iget-boolean v0, p0, Landroid/pocket/PocketManager;->mPocketViewTimerActive:Z

    if-eqz v0, :cond_22

    if-nez p1, :cond_22

    .line 183
    iget-object p1, p0, Landroid/pocket/PocketManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroid/pocket/PocketManager;->mPocketLockTimeout:Landroid/pocket/PocketManager$PocketLockTimeout;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 184
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/pocket/PocketManager;->mPocketViewTimerActive:Z

    .line 186
    :cond_22
    return-void
.end method

.method public blacklist setPocketLockVisible(Z)V
    .registers 4

    .line 214
    if-nez p1, :cond_c

    .line 216
    iget-object v0, p0, Landroid/pocket/PocketManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/pocket/PocketManager;->mPocketLockTimeout:Landroid/pocket/PocketManager$PocketLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/pocket/PocketManager;->mPocketViewTimerActive:Z

    .line 219
    :cond_c
    iget-object v0, p0, Landroid/pocket/PocketManager;->mService:Landroid/pocket/IPocketService;

    if-eqz v0, :cond_1e

    .line 220
    :try_start_10
    iget-object v0, p0, Landroid/pocket/PocketManager;->mService:Landroid/pocket/IPocketService;

    invoke-interface {v0, p1}, Landroid/pocket/IPocketService;->setPocketLockVisible(Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_16

    .line 223
    goto :goto_1e

    .line 221
    :catch_16
    move-exception p1

    .line 222
    sget-object v0, Landroid/pocket/PocketManager;->TAG:Ljava/lang/String;

    const-string v1, "Remote exception in setPocketLockVisible: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    :cond_1e
    :goto_1e
    return-void
.end method
