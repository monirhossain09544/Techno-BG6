.class public final Landroid/service/carrier/CarrierMessagingServiceWrapper;
.super Ljava/lang/Object;
.source "CarrierMessagingServiceWrapper.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingServiceConnection;,
        Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;,
        Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;
    }
.end annotation


# instance fields
.field private volatile blacklist mCarrierMessagingServiceConnection:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingServiceConnection;

.field private blacklist mContext:Landroid/content/Context;

.field private volatile blacklist mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

.field private blacklist mOnServiceReadyCallback:Ljava/lang/Runnable;

.field private blacklist mServiceReadyCallbackExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$monServiceReady(Landroid/service/carrier/CarrierMessagingServiceWrapper;Landroid/service/carrier/ICarrierMessagingService;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/carrier/CarrierMessagingServiceWrapper;->onServiceReady(Landroid/service/carrier/ICarrierMessagingService;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist onServiceReady(Landroid/service/carrier/ICarrierMessagingService;)V
    .registers 5

    .line 120
    iput-object p1, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

    .line 121
    iget-object p1, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mOnServiceReadyCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_1e

    iget-object p1, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mServiceReadyCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz p1, :cond_1e

    .line 122
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 124
    :try_start_e
    iget-object p1, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mServiceReadyCallbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mOnServiceReadyCallback:Ljava/lang/Runnable;

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_19

    .line 126
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 127
    goto :goto_1e

    .line 126
    :catchall_19
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 127
    throw p1

    .line 129
    :cond_1e
    :goto_1e
    return-void
.end method


# virtual methods
.method public whitelist bindToCarrierMessagingService(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Z
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 84
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mCarrierMessagingServiceConnection:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingServiceConnection;

    const/4 v1, 0x1

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 85
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.service.carrier.CarrierMessagingService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    new-instance p2, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingServiceConnection;

    const/4 v2, 0x0

    invoke-direct {p2, p0, v2}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingServiceConnection;-><init>(Landroid/service/carrier/CarrierMessagingServiceWrapper;Landroid/service/carrier/CarrierMessagingServiceWrapper-IA;)V

    iput-object p2, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mCarrierMessagingServiceConnection:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingServiceConnection;

    .line 93
    iput-object p4, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mOnServiceReadyCallback:Ljava/lang/Runnable;

    .line 94
    iput-object p3, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mServiceReadyCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 95
    iput-object p1, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mContext:Landroid/content/Context;

    .line 96
    iget-object p2, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mCarrierMessagingServiceConnection:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingServiceConnection;

    .line 97
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p3

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    .line 96
    invoke-virtual {p1, v0, p2, v1, p3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api close()V
    .registers 1

    .line 300
    invoke-virtual {p0}, Landroid/service/carrier/CarrierMessagingServiceWrapper;->disconnect()V

    .line 301
    return-void
.end method

.method public whitelist disconnect()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 107
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mCarrierMessagingServiceConnection:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingServiceConnection;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mCarrierMessagingServiceConnection:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mCarrierMessagingServiceConnection:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingServiceConnection;

    .line 110
    iput-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mOnServiceReadyCallback:Ljava/lang/Runnable;

    .line 111
    iput-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mServiceReadyCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 112
    return-void
.end method

.method public whitelist downloadMms(Landroid/net/Uri;ILandroid/net/Uri;Ljava/util/concurrent/Executor;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;)V
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 288
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :try_start_5
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

    new-instance v1, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;

    invoke-direct {v1, p0, p5, p4}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;-><init>(Landroid/service/carrier/CarrierMessagingServiceWrapper;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/service/carrier/ICarrierMessagingService;->downloadMms(Landroid/net/Uri;ILandroid/net/Uri;Landroid/service/carrier/ICarrierMessagingCallback;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_11

    .line 294
    nop

    .line 295
    return-void

    .line 292
    :catch_11
    move-exception p1

    .line 293
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public whitelist receiveSms(Landroid/service/carrier/MessagePdu;Ljava/lang/String;IILjava/util/concurrent/Executor;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;)V
    .registers 9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 149
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

    if-eqz v0, :cond_19

    .line 151
    :try_start_4
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

    move-object v1, p5

    new-instance p5, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;

    invoke-direct {p5, p0, p6, v1}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;-><init>(Landroid/service/carrier/CarrierMessagingServiceWrapper;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;Ljava/util/concurrent/Executor;)V

    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Landroid/service/carrier/ICarrierMessagingService;->filterSms(Landroid/service/carrier/MessagePdu;Ljava/lang/String;IILandroid/service/carrier/ICarrierMessagingCallback;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_11

    .line 155
    goto :goto_19

    .line 153
    :catch_11
    move-exception v0

    move-object p1, v0

    .line 154
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 157
    :cond_19
    :goto_19
    return-void
.end method

.method public whitelist sendDataSms([BILjava/lang/String;IILjava/util/concurrent/Executor;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;)V
    .registers 10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 207
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :try_start_5
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

    move-object v1, p6

    new-instance p6, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;

    invoke-direct {p6, p0, p7, v1}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;-><init>(Landroid/service/carrier/CarrierMessagingServiceWrapper;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;Ljava/util/concurrent/Executor;)V

    move-object p0, v0

    invoke-interface/range {p0 .. p6}, Landroid/service/carrier/ICarrierMessagingService;->sendDataSms([BILjava/lang/String;IILandroid/service/carrier/ICarrierMessagingCallback;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_13

    .line 214
    nop

    .line 215
    return-void

    .line 212
    :catch_13
    move-exception v0

    move-object p1, v0

    .line 213
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public whitelist sendMms(Landroid/net/Uri;ILandroid/net/Uri;Ljava/util/concurrent/Executor;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;)V
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 263
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    :try_start_5
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

    new-instance v1, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;

    invoke-direct {v1, p0, p5, p4}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;-><init>(Landroid/service/carrier/CarrierMessagingServiceWrapper;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/service/carrier/ICarrierMessagingService;->sendMms(Landroid/net/Uri;ILandroid/net/Uri;Landroid/service/carrier/ICarrierMessagingCallback;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_11

    .line 269
    nop

    .line 270
    return-void

    .line 267
    :catch_11
    move-exception p1

    .line 268
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public whitelist sendMultipartTextSms(Ljava/util/List;ILjava/lang/String;ILjava/util/concurrent/Executor;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;)V
    .registers 9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;",
            ")V"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :try_start_5
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

    move-object v1, p5

    new-instance p5, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;

    invoke-direct {p5, p0, p6, v1}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;-><init>(Landroid/service/carrier/CarrierMessagingServiceWrapper;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;Ljava/util/concurrent/Executor;)V

    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Landroid/service/carrier/ICarrierMessagingService;->sendMultipartTextSms(Ljava/util/List;ILjava/lang/String;ILandroid/service/carrier/ICarrierMessagingCallback;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_13

    .line 243
    nop

    .line 244
    return-void

    .line 241
    :catch_13
    move-exception v0

    move-object p1, v0

    .line 242
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public whitelist sendTextSms(Ljava/lang/String;ILjava/lang/String;ILjava/util/concurrent/Executor;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;)V
    .registers 9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 178
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :try_start_5
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

    move-object v1, p5

    new-instance p5, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;

    invoke-direct {p5, p0, p6, v1}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;-><init>(Landroid/service/carrier/CarrierMessagingServiceWrapper;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;Ljava/util/concurrent/Executor;)V

    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Landroid/service/carrier/ICarrierMessagingService;->sendTextSms(Ljava/lang/String;ILjava/lang/String;ILandroid/service/carrier/ICarrierMessagingCallback;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_13

    .line 184
    nop

    .line 185
    return-void

    .line 182
    :catch_13
    move-exception v0

    move-object p1, v0

    .line 183
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
