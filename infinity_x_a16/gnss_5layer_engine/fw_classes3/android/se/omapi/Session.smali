.class public final Landroid/se/omapi/Session;
.super Ljava/lang/Object;
.source "Session.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "OMAPI.Session"


# instance fields
.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mReader:Landroid/se/omapi/Reader;

.field private final greylist-max-o mService:Landroid/se/omapi/SEService;

.field private final greylist-max-o mSession:Landroid/se/omapi/ISecureElementSession;


# direct methods
.method constructor greylist-max-o <init>(Landroid/se/omapi/SEService;Landroid/se/omapi/ISecureElementSession;Landroid/se/omapi/Reader;)V
    .registers 5

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/se/omapi/Session;->mLock:Ljava/lang/Object;

    .line 52
    if-eqz p1, :cond_17

    if-eqz p3, :cond_17

    if-eqz p2, :cond_17

    .line 55
    iput-object p1, p0, Landroid/se/omapi/Session;->mService:Landroid/se/omapi/SEService;

    .line 56
    iput-object p3, p0, Landroid/se/omapi/Session;->mReader:Landroid/se/omapi/Reader;

    .line 57
    iput-object p2, p0, Landroid/se/omapi/Session;->mSession:Landroid/se/omapi/ISecureElementSession;

    .line 58
    return-void

    .line 53
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameters cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist close()V
    .registers 5

    .line 94
    iget-object v0, p0, Landroid/se/omapi/Session;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_11

    .line 95
    const-string v0, "OMAPI.Session"

    const-string/jumbo v1, "service not connected to system"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void

    .line 98
    :cond_11
    iget-object v0, p0, Landroid/se/omapi/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_14
    iget-object v1, p0, Landroid/se/omapi/Session;->mSession:Landroid/se/omapi/ISecureElementSession;

    invoke-interface {v1}, Landroid/se/omapi/ISecureElementSession;->close()V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_1c
    .catchall {:try_start_14 .. :try_end_19} :catchall_1a

    .line 103
    goto :goto_24

    .line 104
    :catchall_1a
    move-exception v1

    goto :goto_26

    .line 101
    :catch_1c
    move-exception v1

    .line 102
    :try_start_1d
    const-string v2, "OMAPI.Session"

    const-string v3, "Error closing session"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    :goto_24
    monitor-exit v0

    .line 105
    return-void

    .line 104
    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_1a

    throw v1
.end method

.method public whitelist closeChannels()V
    .registers 5

    .line 125
    iget-object v0, p0, Landroid/se/omapi/Session;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_11

    .line 126
    const-string v0, "OMAPI.Session"

    const-string/jumbo v1, "service not connected to system"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void

    .line 130
    :cond_11
    iget-object v0, p0, Landroid/se/omapi/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_14
    iget-object v1, p0, Landroid/se/omapi/Session;->mSession:Landroid/se/omapi/ISecureElementSession;

    invoke-interface {v1}, Landroid/se/omapi/ISecureElementSession;->closeChannels()V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_1c
    .catchall {:try_start_14 .. :try_end_19} :catchall_1a

    .line 135
    goto :goto_24

    .line 136
    :catchall_1a
    move-exception v1

    goto :goto_26

    .line 133
    :catch_1c
    move-exception v1

    .line 134
    :try_start_1d
    const-string v2, "OMAPI.Session"

    const-string v3, "Error closing channels"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    :goto_24
    monitor-exit v0

    .line 137
    return-void

    .line 136
    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_1a

    throw v1
.end method

.method public whitelist getATR()[B
    .registers 3

    .line 79
    iget-object v0, p0, Landroid/se/omapi/Session;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 83
    :try_start_8
    iget-object v0, p0, Landroid/se/omapi/Session;->mSession:Landroid/se/omapi/ISecureElementSession;

    invoke-interface {v0}, Landroid/se/omapi/ISecureElementSession;->getAtr()[B

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return-object v0

    .line 84
    :catch_f
    move-exception v0

    .line 85
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getReader()Landroid/se/omapi/Reader;
    .registers 2

    .line 66
    iget-object v0, p0, Landroid/se/omapi/Session;->mReader:Landroid/se/omapi/Reader;

    return-object v0
.end method

.method public whitelist isClosed()Z
    .registers 2

    .line 114
    :try_start_0
    iget-object v0, p0, Landroid/se/omapi/Session;->mSession:Landroid/se/omapi/ISecureElementSession;

    invoke-interface {v0}, Landroid/se/omapi/ISecureElementSession;->isClosed()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 115
    :catch_7
    move-exception v0

    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist openBasicChannel([B)Landroid/se/omapi/Channel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/se/omapi/Session;->openBasicChannel([BB)Landroid/se/omapi/Channel;

    move-result-object p1

    return-object p1
.end method

.method public whitelist openBasicChannel([BB)Landroid/se/omapi/Channel;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Landroid/se/omapi/Session;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 205
    iget-object v0, p0, Landroid/se/omapi/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_b
    iget-object v1, p0, Landroid/se/omapi/Session;->mSession:Landroid/se/omapi/ISecureElementSession;

    iget-object v2, p0, Landroid/se/omapi/Session;->mReader:Landroid/se/omapi/Reader;

    .line 208
    invoke-virtual {v2}, Landroid/se/omapi/Reader;->getSEService()Landroid/se/omapi/SEService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/se/omapi/SEService;->getListener()Landroid/se/omapi/ISecureElementListener;

    move-result-object v2

    .line 207
    invoke-interface {v1, p1, p2, v2}, Landroid/se/omapi/ISecureElementSession;->openBasicChannel([BBLandroid/se/omapi/ISecureElementListener;)Landroid/se/omapi/ISecureElementChannel;

    move-result-object p1
    :try_end_1b
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_1b} :catch_36
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1b} :catch_2b
    .catchall {:try_start_b .. :try_end_1b} :catchall_29

    .line 209
    if-nez p1, :cond_20

    .line 210
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_29

    const/4 p1, 0x0

    return-object p1

    .line 212
    :cond_20
    :try_start_20
    new-instance p2, Landroid/se/omapi/Channel;

    iget-object v1, p0, Landroid/se/omapi/Session;->mService:Landroid/se/omapi/SEService;

    invoke-direct {p2, v1, p0, p1}, Landroid/se/omapi/Channel;-><init>(Landroid/se/omapi/SEService;Landroid/se/omapi/Session;Landroid/se/omapi/ISecureElementChannel;)V
    :try_end_27
    .catch Landroid/os/ServiceSpecificException; {:try_start_20 .. :try_end_27} :catch_36
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_2b
    .catchall {:try_start_20 .. :try_end_27} :catchall_29

    :try_start_27
    monitor-exit v0

    return-object p2

    .line 224
    :catchall_29
    move-exception p1

    goto :goto_5f

    .line 221
    :catch_2b
    move-exception p1

    .line 222
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 213
    :catch_36
    move-exception p1

    .line 214
    iget p2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v1, 0x1

    if-eq p2, v1, :cond_55

    .line 216
    iget p2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v1, 0x2

    if-ne p2, v1, :cond_4b

    .line 217
    new-instance p2, Ljava/util/NoSuchElementException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 219
    :cond_4b
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 215
    :cond_55
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 224
    :goto_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_27 .. :try_end_60} :catchall_29

    throw p1

    .line 202
    :cond_61
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "service not connected to system"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist openLogicalChannel([B)Landroid/se/omapi/Channel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/se/omapi/Session;->openLogicalChannel([BB)Landroid/se/omapi/Channel;

    move-result-object p1

    return-object p1
.end method

.method public whitelist openLogicalChannel([BB)Landroid/se/omapi/Channel;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    iget-object v0, p0, Landroid/se/omapi/Session;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 310
    iget-object v0, p0, Landroid/se/omapi/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 312
    :try_start_b
    iget-object v1, p0, Landroid/se/omapi/Session;->mSession:Landroid/se/omapi/ISecureElementSession;

    iget-object v2, p0, Landroid/se/omapi/Session;->mReader:Landroid/se/omapi/Reader;

    .line 315
    invoke-virtual {v2}, Landroid/se/omapi/Reader;->getSEService()Landroid/se/omapi/SEService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/se/omapi/SEService;->getListener()Landroid/se/omapi/ISecureElementListener;

    move-result-object v2

    .line 312
    invoke-interface {v1, p1, p2, v2}, Landroid/se/omapi/ISecureElementSession;->openLogicalChannel([BBLandroid/se/omapi/ISecureElementListener;)Landroid/se/omapi/ISecureElementChannel;

    move-result-object p1
    :try_end_1b
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_1b} :catch_36
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1b} :catch_2b
    .catchall {:try_start_b .. :try_end_1b} :catchall_29

    .line 316
    if-nez p1, :cond_20

    .line 317
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_29

    const/4 p1, 0x0

    return-object p1

    .line 319
    :cond_20
    :try_start_20
    new-instance p2, Landroid/se/omapi/Channel;

    iget-object v1, p0, Landroid/se/omapi/Session;->mService:Landroid/se/omapi/SEService;

    invoke-direct {p2, v1, p0, p1}, Landroid/se/omapi/Channel;-><init>(Landroid/se/omapi/SEService;Landroid/se/omapi/Session;Landroid/se/omapi/ISecureElementChannel;)V
    :try_end_27
    .catch Landroid/os/ServiceSpecificException; {:try_start_20 .. :try_end_27} :catch_36
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_2b
    .catchall {:try_start_20 .. :try_end_27} :catchall_29

    :try_start_27
    monitor-exit v0

    return-object p2

    .line 331
    :catchall_29
    move-exception p1

    goto :goto_5f

    .line 328
    :catch_2b
    move-exception p1

    .line 329
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 320
    :catch_36
    move-exception p1

    .line 321
    iget p2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v1, 0x1

    if-eq p2, v1, :cond_55

    .line 323
    iget p2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v1, 0x2

    if-ne p2, v1, :cond_4b

    .line 324
    new-instance p2, Ljava/util/NoSuchElementException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 326
    :cond_4b
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 322
    :cond_55
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 331
    :goto_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_27 .. :try_end_60} :catchall_29

    throw p1

    .line 308
    :cond_61
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "service not connected to system"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
