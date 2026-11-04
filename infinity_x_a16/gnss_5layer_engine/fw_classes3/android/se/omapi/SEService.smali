.class public final Landroid/se/omapi/SEService;
.super Ljava/lang/Object;
.source "SEService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/se/omapi/SEService$SEListener;,
        Landroid/se/omapi/SEService$OnConnectedListener;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_SECURE_ELEMENT_STATE_CHANGED:Ljava/lang/String; = "android.se.omapi.action.SECURE_ELEMENT_STATE_CHANGED"

.field public static final whitelist EXTRA_READER_NAME:Ljava/lang/String; = "android.se.omapi.extra.READER_NAME"

.field public static final whitelist EXTRA_READER_STATE:Ljava/lang/String; = "android.se.omapi.extra.READER_STATE"

.field public static final greylist-max-o IO_ERROR:I = 0x1

.field public static final greylist-max-o NO_SUCH_ELEMENT_ERROR:I = 0x2

.field private static final blacklist SERVICE_NAME:Ljava/lang/String; = "android.se.omapi.ISecureElementService/default"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "OMAPI.SEService"

.field private static final blacklist UICC_TERMINAL:Ljava/lang/String; = "SIM"


# instance fields
.field private greylist-max-o mConnection:Landroid/content/ServiceConnection;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mReaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/se/omapi/Reader;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSEListener:Landroid/se/omapi/SEService$SEListener;

.field private volatile greylist-max-o mSecureElementService:Landroid/se/omapi/ISecureElementService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSEListener(Landroid/se/omapi/SEService;)Landroid/se/omapi/SEService$SEListener;
    .registers 1

    iget-object p0, p0, Landroid/se/omapi/SEService;->mSEListener:Landroid/se/omapi/SEService$SEListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSecureElementService(Landroid/se/omapi/SEService;Landroid/se/omapi/ISecureElementService;)V
    .registers 2

    iput-object p1, p0, Landroid/se/omapi/SEService;->mSecureElementService:Landroid/se/omapi/ISecureElementService;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/se/omapi/SEService$OnConnectedListener;)V
    .registers 6

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Landroid/se/omapi/SEService$SEListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/se/omapi/SEService$SEListener;-><init>(Landroid/se/omapi/SEService;Landroid/se/omapi/SEService-IA;)V

    iput-object v0, p0, Landroid/se/omapi/SEService;->mSEListener:Landroid/se/omapi/SEService$SEListener;

    .line 142
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/se/omapi/SEService;->mLock:Ljava/lang/Object;

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/se/omapi/SEService;->mReaders:Ljava/util/HashMap;

    .line 180
    if-eqz p1, :cond_7f

    if-eqz p3, :cond_7f

    if-eqz p2, :cond_7f

    .line 184
    iput-object p1, p0, Landroid/se/omapi/SEService;->mContext:Landroid/content/Context;

    .line 185
    iget-object p1, p0, Landroid/se/omapi/SEService;->mSEListener:Landroid/se/omapi/SEService$SEListener;

    iput-object p3, p1, Landroid/se/omapi/SEService$SEListener;->mListener:Landroid/se/omapi/SEService$OnConnectedListener;

    .line 186
    iget-object p1, p0, Landroid/se/omapi/SEService;->mSEListener:Landroid/se/omapi/SEService$SEListener;

    iput-object p2, p1, Landroid/se/omapi/SEService$SEListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 188
    const-string p1, "android.se.omapi.ISecureElementService/default"

    invoke-static {p1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 189
    const-string v0, "OMAPI.SEService"

    if-eqz p1, :cond_4a

    .line 190
    invoke-static {p1}, Landroid/se/omapi/ISecureElementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/se/omapi/ISecureElementService;

    move-result-object p1

    iput-object p1, p0, Landroid/se/omapi/SEService;->mSecureElementService:Landroid/se/omapi/ISecureElementService;

    .line 191
    const-string p1, "Got SecureElementService from system, not sending intent."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/se/omapi/SEService$$ExternalSyntheticLambda0;

    invoke-direct {p1, p3}, Landroid/se/omapi/SEService$$ExternalSyntheticLambda0;-><init>(Landroid/se/omapi/SEService$OnConnectedListener;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 193
    return-void

    .line 196
    :cond_4a
    new-instance p1, Landroid/se/omapi/SEService$1;

    invoke-direct {p1, p0}, Landroid/se/omapi/SEService$1;-><init>(Landroid/se/omapi/SEService;)V

    iput-object p1, p0, Landroid/se/omapi/SEService;->mConnection:Landroid/content/ServiceConnection;

    .line 214
    const-string p1, "No SecureElementService available from system, sending intent to start it"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance p1, Landroid/content/Intent;

    const-class p2, Landroid/se/omapi/ISecureElementService;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    const-string p2, "com.android.se"

    const-string p3, "com.android.se.SecureElementService"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    iget-object p2, p0, Landroid/se/omapi/SEService;->mContext:Landroid/content/Context;

    iget-object p3, p0, Landroid/se/omapi/SEService;->mConnection:Landroid/content/ServiceConnection;

    .line 220
    const/4 v1, 0x1

    invoke-virtual {p2, p1, p3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    .line 221
    if-eqz p1, :cond_79

    .line 222
    const-string p1, "bindService successful"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 224
    :cond_79
    const-string p1, "bindService failed"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :goto_7e
    return-void

    .line 181
    :cond_7f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Arguments must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o getReader(Ljava/lang/String;)Landroid/se/omapi/ISecureElementReader;
    .registers 3

    .line 322
    :try_start_0
    iget-object v0, p0, Landroid/se/omapi/SEService;->mSecureElementService:Landroid/se/omapi/ISecureElementService;

    invoke-interface {v0, p1}, Landroid/se/omapi/ISecureElementService;->getReader(Ljava/lang/String;)Landroid/se/omapi/ISecureElementReader;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 323
    :catch_7
    move-exception p1

    .line 324
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist loadReaders()V
    .registers 8

    .line 332
    iget-object v0, p0, Landroid/se/omapi/SEService;->mSecureElementService:Landroid/se/omapi/ISecureElementService;

    if-eqz v0, :cond_4b

    .line 337
    :try_start_4
    iget-object v0, p0, Landroid/se/omapi/SEService;->mSecureElementService:Landroid/se/omapi/ISecureElementService;

    invoke-interface {v0}, Landroid/se/omapi/ISecureElementService;->getReaders()[Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_45

    .line 340
    nop

    .line 342
    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_44

    aget-object v3, v0, v2

    .line 343
    iget-object v4, p0, Landroid/se/omapi/SEService;->mReaders:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_41

    .line 345
    :try_start_19
    iget-object v4, p0, Landroid/se/omapi/SEService;->mReaders:Ljava/util/HashMap;

    new-instance v5, Landroid/se/omapi/Reader;

    .line 346
    invoke-direct {p0, v3}, Landroid/se/omapi/SEService;->getReader(Ljava/lang/String;)Landroid/se/omapi/ISecureElementReader;

    move-result-object v6

    invoke-direct {v5, p0, v3, v6}, Landroid/se/omapi/Reader;-><init>(Landroid/se/omapi/SEService;Ljava/lang/String;Landroid/se/omapi/ISecureElementReader;)V

    .line 345
    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_27} :catch_28

    .line 349
    goto :goto_41

    .line 347
    :catch_28
    move-exception v4

    .line 348
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error adding Reader: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "OMAPI.SEService"

    invoke-static {v5, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    :cond_41
    :goto_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 352
    :cond_44
    return-void

    .line 338
    :catch_45
    move-exception v0

    .line 339
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 333
    :cond_4b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method greylist-max-o getListener()Landroid/se/omapi/ISecureElementListener;
    .registers 2

    .line 314
    iget-object v0, p0, Landroid/se/omapi/SEService;->mSEListener:Landroid/se/omapi/SEService$SEListener;

    return-object v0
.end method

.method public whitelist getReaders()[Landroid/se/omapi/Reader;
    .registers 3

    .line 246
    invoke-direct {p0}, Landroid/se/omapi/SEService;->loadReaders()V

    .line 248
    iget-object v0, p0, Landroid/se/omapi/SEService;->mReaders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/se/omapi/Reader;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/se/omapi/Reader;

    return-object v0
.end method

.method public whitelist getUiccReader(I)Landroid/se/omapi/Reader;
    .registers 5

    .line 260
    const/4 v0, 0x1

    if-lt p1, v0, :cond_43

    .line 263
    invoke-direct {p0}, Landroid/se/omapi/SEService;->loadReaders()V

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 266
    iget-object v0, p0, Landroid/se/omapi/SEService;->mReaders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/se/omapi/Reader;

    .line 268
    if-eqz v0, :cond_24

    .line 272
    return-object v0

    .line 269
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reader:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " doesn\'t exist"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_43
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "slotNumber should be larger than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getVersion()Ljava/lang/String;
    .registers 2

    .line 310
    const-string v0, "3.3"

    return-object v0
.end method

.method public whitelist isConnected()Z
    .registers 2

    .line 234
    iget-object v0, p0, Landroid/se/omapi/SEService;->mSecureElementService:Landroid/se/omapi/ISecureElementService;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist shutdown()V
    .registers 4

    .line 285
    iget-object v0, p0, Landroid/se/omapi/SEService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_3
    iget-object v1, p0, Landroid/se/omapi/SEService;->mSecureElementService:Landroid/se/omapi/ISecureElementService;

    if-eqz v1, :cond_24

    .line 287
    iget-object v1, p0, Landroid/se/omapi/SEService;->mReaders:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/se/omapi/Reader;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_32

    .line 289
    :try_start_1d
    invoke-virtual {v2}, Landroid/se/omapi/Reader;->closeSessions()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_21
    .catchall {:try_start_1d .. :try_end_20} :catchall_32

    .line 290
    :goto_20
    goto :goto_23

    :catch_21
    move-exception v2

    goto :goto_20

    .line 291
    :goto_23
    goto :goto_11

    .line 294
    :cond_24
    :try_start_24
    iget-object v1, p0, Landroid/se/omapi/SEService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/se/omapi/SEService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_2b} :catch_2c
    .catchall {:try_start_24 .. :try_end_2b} :catchall_32

    .line 298
    goto :goto_2d

    .line 295
    :catch_2c
    move-exception v1

    .line 299
    :goto_2d
    const/4 v1, 0x0

    :try_start_2e
    iput-object v1, p0, Landroid/se/omapi/SEService;->mSecureElementService:Landroid/se/omapi/ISecureElementService;

    .line 300
    monitor-exit v0

    .line 301
    return-void

    .line 300
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_32

    throw v1
.end method
