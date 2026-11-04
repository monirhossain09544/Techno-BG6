.class Lcom/android/internal/os/ZygoteServer;
.super Ljava/lang/Object;
.source "ZygoteServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist INVALID_TIMESTAMP:I = -0x1

.field public static final blacklist TAG:Ljava/lang/String; = "ZygoteServer"


# instance fields
.field private blacklist mCloseSocketFd:Z

.field private blacklist mIsFirstPropertyCheck:Z

.field private blacklist mIsForkChild:Z

.field private blacklist mLastPropCheckTimestamp:J

.field private blacklist mUsapPoolEnabled:Z

.field private final blacklist mUsapPoolEventFD:Ljava/io/FileDescriptor;

.field private blacklist mUsapPoolRefillAction:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

.field private blacklist mUsapPoolRefillDelayMs:I

.field private blacklist mUsapPoolRefillThreshold:I

.field private blacklist mUsapPoolRefillTriggerTimestamp:J

.field private blacklist mUsapPoolSizeMax:I

.field private blacklist mUsapPoolSizeMin:I

.field private final blacklist mUsapPoolSocket:Landroid/net/LocalServerSocket;

.field private final blacklist mUsapPoolSupported:Z

.field private blacklist mZygoteSocket:Landroid/net/LocalServerSocket;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 48
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 4

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    .line 107
    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    .line 112
    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    .line 118
    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillThreshold:I

    .line 124
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillDelayMs:I

    .line 281
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/os/ZygoteServer;->mIsFirstPropertyCheck:Z

    .line 282
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/ZygoteServer;->mLastPropCheckTimestamp:J

    .line 139
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEventFD:Ljava/io/FileDescriptor;

    .line 140
    iput-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    .line 141
    iput-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSocket:Landroid/net/LocalServerSocket;

    .line 143
    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSupported:Z

    .line 144
    return-void
.end method

.method constructor blacklist <init>(Z)V
    .registers 5

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    .line 107
    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    .line 112
    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    .line 118
    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillThreshold:I

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillDelayMs:I

    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mIsFirstPropertyCheck:Z

    .line 282
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/ZygoteServer;->mLastPropCheckTimestamp:J

    .line 153
    invoke-static {}, Lcom/android/internal/os/Zygote;->getUsapPoolEventFD()Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEventFD:Ljava/io/FileDescriptor;

    .line 155
    if-eqz p1, :cond_30

    .line 156
    const-string p1, "zygote"

    invoke-static {p1}, Lcom/android/internal/os/Zygote;->createManagedSocketFromInitSocket(Ljava/lang/String;)Landroid/net/LocalServerSocket;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    .line 157
    nop

    .line 158
    const-string p1, "usap_pool_primary"

    invoke-static {p1}, Lcom/android/internal/os/Zygote;->createManagedSocketFromInitSocket(Ljava/lang/String;)Landroid/net/LocalServerSocket;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSocket:Landroid/net/LocalServerSocket;

    goto :goto_41

    .line 161
    :cond_30
    const-string p1, "zygote_secondary"

    invoke-static {p1}, Lcom/android/internal/os/Zygote;->createManagedSocketFromInitSocket(Ljava/lang/String;)Landroid/net/LocalServerSocket;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    .line 162
    nop

    .line 163
    const-string p1, "usap_pool_secondary"

    invoke-static {p1}, Lcom/android/internal/os/Zygote;->createManagedSocketFromInitSocket(Ljava/lang/String;)Landroid/net/LocalServerSocket;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSocket:Landroid/net/LocalServerSocket;

    .line 167
    :goto_41
    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSupported:Z

    .line 168
    invoke-direct {p0}, Lcom/android/internal/os/ZygoteServer;->fetchUsapPoolPolicyProps()V

    .line 169
    return-void
.end method

.method private blacklist acceptCommandPeer(Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;
    .registers 4

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/os/ZygoteServer;->createNewConnection(Landroid/net/LocalSocket;Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;

    move-result-object p1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    .line 202
    :catch_b
    move-exception p1

    .line 203
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "IOException during accept()"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private blacklist fetchUsapPoolPolicyProps()V
    .registers 5

    .line 246
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSupported:Z

    if-eqz v0, :cond_52

    .line 247
    nop

    .line 248
    const-string v0, "usap_pool_size_max"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/internal/os/ZygoteConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 247
    const/16 v2, 0x64

    invoke-static {v0, v2}, Ljava/lang/Integer;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    .line 253
    nop

    .line 254
    const-string v0, "usap_pool_size_min"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/internal/os/ZygoteConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 253
    invoke-static {v0, v2}, Ljava/lang/Integer;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    .line 259
    nop

    .line 260
    const-string v0, "usap_refill_threshold"

    invoke-static {v0, v2}, Lcom/android/internal/os/ZygoteConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget v3, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    .line 259
    invoke-static {v0, v3}, Ljava/lang/Integer;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillThreshold:I

    .line 265
    const-string v0, "usap_pool_refill_delay_ms"

    const/16 v3, 0xbb8

    invoke-static {v0, v3}, Lcom/android/internal/os/ZygoteConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillDelayMs:I

    .line 270
    iget v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    iget v3, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    if-lt v0, v3, :cond_52

    .line 271
    const-string v0, "ZygoteServer"

    const-string v3, "The max size of the USAP pool must be greater than the minimum size.  Restoring default values."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iput v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    .line 275
    iput v2, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    .line 276
    iget v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillThreshold:I

    .line 279
    :cond_52
    return-void
.end method

.method private blacklist fetchUsapPoolPolicyPropsIfUnfetched()V
    .registers 2

    .line 296
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mIsFirstPropertyCheck:Z

    if-eqz v0, :cond_a

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mIsFirstPropertyCheck:Z

    .line 298
    invoke-direct {p0}, Lcom/android/internal/os/ZygoteServer;->fetchUsapPoolPolicyProps()V

    .line 300
    :cond_a
    return-void
.end method

.method private blacklist fetchUsapPoolPolicyPropsWithMinInterval()V
    .registers 7

    .line 285
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 287
    iget-boolean v2, p0, Lcom/android/internal/os/ZygoteServer;->mIsFirstPropertyCheck:Z

    if-nez v2, :cond_13

    iget-wide v2, p0, Lcom/android/internal/os/ZygoteServer;->mLastPropCheckTimestamp:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1b

    .line 289
    :cond_13
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/os/ZygoteServer;->mIsFirstPropertyCheck:Z

    .line 290
    iput-wide v0, p0, Lcom/android/internal/os/ZygoteServer;->mLastPropCheckTimestamp:J

    .line 291
    invoke-direct {p0}, Lcom/android/internal/os/ZygoteServer;->fetchUsapPoolPolicyProps()V

    .line 293
    :cond_1b
    return-void
.end method

.method private blacklist resetUsapRefillState()V
    .registers 3

    .line 384
    sget-object v0, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->NONE:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    iput-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillAction:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    .line 385
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillTriggerTimestamp:J

    .line 386
    return-void
.end method


# virtual methods
.method blacklist closeServerSocket()V
    .registers 4

    .line 219
    const-string v0, "ZygoteServer"

    :try_start_2
    iget-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    if-eqz v1, :cond_28

    .line 220
    iget-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 221
    iget-object v2, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->close()V

    .line 222
    if-eqz v1, :cond_28

    iget-boolean v2, p0, Lcom/android/internal/os/ZygoteServer;->mCloseSocketFd:Z

    if-eqz v2, :cond_28

    .line 223
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1a} :catch_22
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_1a} :catch_1b

    goto :goto_28

    .line 228
    :catch_1b
    move-exception v1

    .line 229
    const-string v2, "Zygote:  error closing descriptor"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29

    .line 226
    :catch_22
    move-exception v1

    .line 227
    const-string v2, "Zygote:  error closing sockets"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    :cond_28
    :goto_28
    nop

    .line 232
    :goto_29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    .line 233
    return-void
.end method

.method protected blacklist createNewConnection(Landroid/net/LocalSocket;Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    new-instance v0, Lcom/android/internal/os/ZygoteConnection;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/os/ZygoteConnection;-><init>(Landroid/net/LocalSocket;Ljava/lang/String;)V

    return-object v0
.end method

.method blacklist fillUsapPool([IZ)Ljava/lang/Runnable;
    .registers 9

    .line 313
    const-string v0, "Zygote:FillUsapPool"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 316
    invoke-direct {p0}, Lcom/android/internal/os/ZygoteServer;->fetchUsapPoolPolicyPropsIfUnfetched()V

    .line 318
    invoke-static {}, Lcom/android/internal/os/Zygote;->getUsapPoolCount()I

    move-result v0

    .line 321
    const-string v3, "zygote"

    if-eqz p2, :cond_2c

    .line 323
    iget v4, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    sub-int/2addr v4, v0

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Priority USAP Pool refill. New USAPs: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 329
    :cond_2c
    iget v4, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    sub-int/2addr v4, v0

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delayed USAP Pool refill. New USAPs: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :goto_45
    invoke-static {}, Ldalvik/system/ZygoteHooks;->preFork()V

    .line 339
    :goto_48
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_56

    .line 340
    iget-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSocket:Landroid/net/LocalServerSocket;

    .line 341
    invoke-static {v0, p1, p2}, Lcom/android/internal/os/Zygote;->forkUsap(Landroid/net/LocalServerSocket;[IZ)Ljava/lang/Runnable;

    move-result-object v0

    .line 343
    if-eqz v0, :cond_55

    .line 344
    return-object v0

    .line 346
    :cond_55
    goto :goto_48

    .line 350
    :cond_56
    invoke-static {}, Ldalvik/system/ZygoteHooks;->postForkCommon()V

    .line 352
    invoke-direct {p0}, Lcom/android/internal/os/ZygoteServer;->resetUsapRefillState()V

    .line 354
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 356
    const/4 p1, 0x0

    return-object p1
.end method

.method blacklist getZygoteSocketFileDescriptor()Ljava/io/FileDescriptor;
    .registers 2

    .line 242
    iget-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isUsapPoolEnabled()Z
    .registers 2

    .line 176
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    return v0
.end method

.method blacklist registerServerSocketAtAbstractName(Ljava/lang/String;)V
    .registers 6

    .line 184
    iget-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    if-nez v0, :cond_2f

    .line 186
    :try_start_4
    new-instance v0, Landroid/net/LocalServerSocket;

    invoke-direct {v0, p1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mCloseSocketFd:Z
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_e} :catch_f

    .line 191
    goto :goto_2f

    .line 188
    :catch_f
    move-exception v0

    .line 189
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error binding to abstract socket \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 193
    :cond_2f
    :goto_2f
    return-void
.end method

.method blacklist runSelectLoop(Ljava/lang/String;)Ljava/lang/Runnable;
    .registers 20

    .line 395
    move-object/from16 v1, p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 396
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 398
    iget-object v0, v1, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    const-wide/16 v5, -0x1

    iput-wide v5, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillTriggerTimestamp:J

    .line 404
    :goto_1d
    invoke-direct {v1}, Lcom/android/internal/os/ZygoteServer;->fetchUsapPoolPolicyPropsWithMinInterval()V

    .line 405
    sget-object v0, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->NONE:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    iput-object v0, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillAction:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    .line 407
    nop

    .line 413
    iget-boolean v0, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    const/4 v7, 0x1

    if-eqz v0, :cond_38

    .line 414
    invoke-static {}, Lcom/android/internal/os/Zygote;->getUsapPipeFDs()[I

    move-result-object v0

    .line 415
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v8, v7

    array-length v9, v0

    add-int/2addr v8, v9

    new-array v8, v8, [Landroid/system/StructPollfd;

    goto :goto_3f

    .line 417
    :cond_38
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v8, v0, [Landroid/system/StructPollfd;

    move-object v0, v4

    .line 428
    :goto_3f
    nop

    .line 429
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v11, 0x0

    :goto_45
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_66

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/io/FileDescriptor;

    .line 430
    new-instance v13, Landroid/system/StructPollfd;

    invoke-direct {v13}, Landroid/system/StructPollfd;-><init>()V

    aput-object v13, v8, v11

    .line 431
    aget-object v13, v8, v11

    iput-object v12, v13, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 432
    aget-object v12, v8, v11

    sget v13, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v13, v13

    iput-short v13, v12, Landroid/system/StructPollfd;->events:S

    .line 433
    add-int/lit8 v11, v11, 0x1

    .line 434
    goto :goto_45

    .line 436
    :cond_66
    nop

    .line 438
    iget-boolean v9, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    if-eqz v9, :cond_a7

    .line 439
    new-instance v9, Landroid/system/StructPollfd;

    invoke-direct {v9}, Landroid/system/StructPollfd;-><init>()V

    aput-object v9, v8, v11

    .line 440
    aget-object v9, v8, v11

    iget-object v12, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEventFD:Ljava/io/FileDescriptor;

    iput-object v12, v9, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 441
    aget-object v9, v8, v11

    sget v12, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v12, v12

    iput-short v12, v9, Landroid/system/StructPollfd;->events:S

    .line 442
    add-int/lit8 v9, v11, 0x1

    .line 445
    nop

    .line 446
    array-length v12, v0

    const/4 v13, 0x0

    :goto_84
    if-ge v13, v12, :cond_a8

    aget v14, v0, v13

    .line 447
    new-instance v15, Ljava/io/FileDescriptor;

    invoke-direct {v15}, Ljava/io/FileDescriptor;-><init>()V

    .line 448
    invoke-virtual {v15, v14}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 450
    new-instance v14, Landroid/system/StructPollfd;

    invoke-direct {v14}, Landroid/system/StructPollfd;-><init>()V

    aput-object v14, v8, v9

    .line 451
    aget-object v14, v8, v9

    iput-object v15, v14, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 452
    aget-object v14, v8, v9

    sget v15, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v15, v15

    iput-short v15, v14, Landroid/system/StructPollfd;->events:S

    .line 453
    add-int/lit8 v9, v9, 0x1

    .line 446
    add-int/lit8 v13, v13, 0x1

    goto :goto_84

    .line 438
    :cond_a7
    move v9, v11

    .line 459
    :cond_a8
    iget-wide v12, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillTriggerTimestamp:J

    cmp-long v0, v12, v5

    if-nez v0, :cond_b3

    .line 460
    move/from16 v16, v11

    const/4 v0, -0x1

    const/4 v15, -0x1

    goto :goto_de

    .line 462
    :cond_b3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-wide/from16 v16, v13

    const/4 v15, -0x1

    iget-wide v12, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillTriggerTimestamp:J

    sub-long v13, v16, v12

    .line 464
    iget v0, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillDelayMs:I

    move/from16 v16, v11

    int-to-long v10, v0

    cmp-long v0, v13, v10

    if-ltz v0, :cond_d0

    .line 468
    nop

    .line 469
    iput-wide v5, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillTriggerTimestamp:J

    .line 470
    sget-object v0, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->DELAYED:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    iput-object v0, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillAction:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    const/4 v0, 0x0

    goto :goto_de

    .line 472
    :cond_d0
    const-wide/16 v10, 0x0

    cmp-long v0, v13, v10

    if-gtz v0, :cond_d9

    .line 477
    iget v0, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillDelayMs:I

    goto :goto_de

    .line 480
    :cond_d9
    iget v0, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillDelayMs:I

    int-to-long v10, v0

    sub-long/2addr v10, v13

    long-to-int v0, v10

    .line 486
    :goto_de
    :try_start_de
    invoke-static {v8, v0}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I

    move-result v0
    :try_end_e2
    .catch Landroid/system/ErrnoException; {:try_start_de .. :try_end_e2} :catch_267

    .line 489
    nop

    .line 491
    if-nez v0, :cond_ee

    .line 497
    iput-wide v5, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillTriggerTimestamp:J

    .line 498
    sget-object v0, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->DELAYED:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    iput-object v0, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillAction:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    const/4 v12, 0x0

    goto/16 :goto_22c

    .line 501
    :cond_ee
    const/4 v10, 0x0

    .line 503
    :goto_ef
    add-int/2addr v9, v15

    if-ltz v9, :cond_20f

    .line 504
    aget-object v0, v8, v9

    iget-short v0, v0, Landroid/system/StructPollfd;->revents:S

    sget v11, Landroid/system/OsConstants;->POLLIN:I

    and-int/2addr v0, v11

    if-nez v0, :cond_100

    .line 505
    move/from16 v13, v16

    const/4 v12, 0x0

    goto/16 :goto_20a

    .line 508
    :cond_100
    if-nez v9, :cond_115

    .line 510
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/os/ZygoteServer;->acceptCommandPeer(Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;

    move-result-object v0

    .line 511
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    invoke-virtual {v0}, Lcom/android/internal/os/ZygoteConnection;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    move/from16 v13, v16

    const/4 v12, 0x0

    goto/16 :goto_20a

    :cond_115
    const-string v11, "ZygoteServer"

    move/from16 v13, v16

    if-ge v9, v13, :cond_18b

    .line 517
    :try_start_11b
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ZygoteConnection;

    .line 518
    invoke-virtual {v1}, Lcom/android/internal/os/ZygoteServer;->isUsapPoolEnabled()Z

    move-result v14

    if-nez v14, :cond_12f

    .line 519
    invoke-static {}, Ldalvik/system/ZygoteHooks;->isIndefiniteThreadSuspensionSafe()Z

    move-result v14

    if-eqz v14, :cond_12f

    move v14, v7

    goto :goto_130

    :cond_12f
    const/4 v14, 0x0

    .line 520
    :goto_130
    nop

    .line 521
    invoke-virtual {v0, v1, v14}, Lcom/android/internal/os/ZygoteConnection;->processCommand(Lcom/android/internal/os/ZygoteServer;Z)Ljava/lang/Runnable;

    move-result-object v14

    .line 524
    iget-boolean v4, v1, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_137} :catch_167
    .catchall {:try_start_11b .. :try_end_137} :catchall_165

    if-eqz v4, :cond_148

    .line 527
    if-eqz v14, :cond_140

    .line 531
    nop

    .line 576
    const/4 v12, 0x0

    iput-boolean v12, v1, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    .line 531
    return-object v14

    .line 528
    :cond_140
    :try_start_140
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "command == null"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 534
    :cond_148
    if-nez v14, :cond_15d

    .line 542
    invoke-virtual {v0}, Lcom/android/internal/os/ZygoteConnection;->isClosedByPeer()Z

    move-result v4

    if-eqz v4, :cond_159

    .line 543
    invoke-virtual {v0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    .line 544
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 545
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_159
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_159} :catch_167
    .catchall {:try_start_140 .. :try_end_159} :catchall_165

    .line 576
    :cond_159
    :goto_159
    const/4 v12, 0x0

    iput-boolean v12, v1, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    .line 577
    goto :goto_17e

    .line 535
    :cond_15d
    :try_start_15d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "command != null"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_165
    .catch Ljava/lang/Exception; {:try_start_15d .. :try_end_165} :catch_167
    .catchall {:try_start_15d .. :try_end_165} :catchall_165

    .line 576
    :catchall_165
    move-exception v0

    goto :goto_187

    .line 548
    :catch_167
    move-exception v0

    .line 549
    :try_start_168
    iget-boolean v4, v1, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    if-nez v4, :cond_181

    .line 555
    const-string v4, "Exception executing zygote command: "

    invoke-static {v11, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 560
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ZygoteConnection;

    .line 561
    invoke-virtual {v0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    .line 563
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 564
    goto :goto_159

    .line 577
    :goto_17e
    const/4 v12, 0x0

    goto/16 :goto_20a

    .line 569
    :cond_181
    const-string v2, "Caught post-fork exception in child process."

    invoke-static {v11, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 570
    throw v0
    :try_end_187
    .catchall {:try_start_168 .. :try_end_187} :catchall_165

    .line 576
    :goto_187
    const/4 v12, 0x0

    iput-boolean v12, v1, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    .line 577
    throw v0

    .line 590
    :cond_18b
    const/16 v0, 0x8

    :try_start_18d
    new-array v4, v0, [B

    .line 591
    aget-object v14, v8, v9

    iget-object v14, v14, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;
    :try_end_193
    .catch Ljava/lang/Exception; {:try_start_18d .. :try_end_193} :catch_1d0

    .line 592
    const/4 v12, 0x0

    :try_start_194
    invoke-static {v14, v4, v12, v0}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v14

    .line 594
    if-ne v14, v0, :cond_1b7

    .line 595
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v14, Ljava/io/ByteArrayInputStream;

    invoke-direct {v14, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v14}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 598
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v10
    :try_end_1a8
    .catch Ljava/lang/Exception; {:try_start_194 .. :try_end_1a8} :catch_1ce

    .line 599
    nop

    .line 614
    nop

    .line 616
    if-le v9, v13, :cond_1b0

    .line 617
    long-to-int v0, v10

    invoke-static {v0}, Lcom/android/internal/os/Zygote;->removeUsapTableEntry(I)Z

    .line 620
    :cond_1b0
    nop

    .line 621
    move v10, v7

    move/from16 v16, v13

    const/4 v4, 0x0

    goto/16 :goto_ef

    .line 600
    :cond_1b7
    :try_start_1b7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incomplete read from USAP management FD of size "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1cd
    .catch Ljava/lang/Exception; {:try_start_1b7 .. :try_end_1cd} :catch_1ce

    .line 602
    goto :goto_20a

    .line 604
    :catch_1ce
    move-exception v0

    goto :goto_1d2

    :catch_1d0
    move-exception v0

    const/4 v12, 0x0

    .line 605
    :goto_1d2
    if-ne v9, v13, :cond_1ef

    .line 606
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to read from USAP pool event FD: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 607
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 606
    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_209

    .line 609
    :cond_1ef
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to read from USAP reporting pipe: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 610
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 609
    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :goto_209
    nop

    .line 503
    :goto_20a
    move/from16 v16, v13

    const/4 v4, 0x0

    goto/16 :goto_ef

    .line 624
    :cond_20f
    const/4 v12, 0x0

    if-eqz v10, :cond_22c

    .line 625
    invoke-static {}, Lcom/android/internal/os/Zygote;->getUsapPoolCount()I

    move-result v0

    .line 627
    iget v4, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    if-ge v0, v4, :cond_21f

    .line 629
    sget-object v0, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->IMMEDIATE:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    iput-object v0, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillAction:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    goto :goto_22c

    .line 630
    :cond_21f
    iget v4, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    sub-int/2addr v4, v0

    iget v0, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillThreshold:I

    if-lt v4, v0, :cond_22c

    .line 632
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillTriggerTimestamp:J

    .line 637
    :cond_22c
    :goto_22c
    iget-object v0, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillAction:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    sget-object v4, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->NONE:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    if-eq v0, v4, :cond_264

    .line 638
    nop

    .line 639
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v2, v7, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 640
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v4, Lcom/android/internal/os/ZygoteServer$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/internal/os/ZygoteServer$$ExternalSyntheticLambda0;-><init>()V

    .line 641
    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 642
    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 644
    iget-object v4, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillAction:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    sget-object v8, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->IMMEDIATE:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    if-ne v4, v8, :cond_253

    goto :goto_254

    :cond_253
    move v7, v12

    .line 647
    :goto_254
    nop

    .line 648
    invoke-virtual {v1, v0, v7}, Lcom/android/internal/os/ZygoteServer;->fillUsapPool([IZ)Ljava/lang/Runnable;

    move-result-object v0

    .line 650
    if-eqz v0, :cond_25c

    .line 651
    return-object v0

    .line 652
    :cond_25c
    if-eqz v7, :cond_264

    .line 654
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillTriggerTimestamp:J

    .line 657
    :cond_264
    const/4 v4, 0x0

    goto/16 :goto_1d

    .line 487
    :catch_267
    move-exception v0

    .line 488
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "poll failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method blacklist setForkChild()V
    .registers 2

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    .line 173
    return-void
.end method

.method blacklist setUsapPoolStatus(ZLandroid/net/LocalSocket;)Ljava/lang/Runnable;
    .registers 7

    .line 363
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSupported:Z

    const-string v1, "ZygoteServer"

    const/4 v2, 0x0

    if-nez v0, :cond_d

    .line 364
    const-string p1, "Attempting to enable a USAP pool for a Zygote that doesn\'t support it."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    return-object v2

    .line 367
    :cond_d
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    if-ne v0, p1, :cond_12

    .line 368
    return-object v2

    .line 371
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USAP Pool status change: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_22

    const-string v3, "ENABLED"

    goto :goto_24

    :cond_22
    const-string v3, "DISABLED"

    :goto_24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iput-boolean p1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    .line 375
    if-eqz p1, :cond_45

    .line 376
    invoke-virtual {p2}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result p1

    filled-new-array {p1}, [I

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/ZygoteServer;->fillUsapPool([IZ)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1

    .line 378
    :cond_45
    invoke-static {}, Lcom/android/internal/os/Zygote;->emptyUsapPool()V

    .line 379
    return-object v2
.end method
