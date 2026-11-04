.class public Landroid/os/Binder;
.super Ljava/lang/Object;
.source "Binder.java"

# interfaces
.implements Landroid/os/IBinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Binder$NoImagePreloadHolder;,
        Landroid/os/Binder$ProxyTransactListener;,
        Landroid/os/Binder$TransactionTraceNamesCacheHolder;,
        Landroid/os/Binder$PropagateWorkSourceTransactListener;
    }
.end annotation


# static fields
.field public static final greylist-max-o CHECK_PARCEL_SIZE:Z = false

.field private static final greylist-max-o FIND_POTENTIAL_LEAKS:Z = false

.field public static greylist-max-o LOG_RUNTIME_EXCEPTION:Z = false

.field private static final greylist-max-o NATIVE_ALLOCATION_SIZE:I = 0x1f4

.field static final greylist-max-o TAG:Ljava/lang/String; = "Binder"

.field private static final blacklist TRANSACTION_TRACE_NAME_ID_LIMIT:I = 0x400

.field public static final blacklist UNSET_WORKSOURCE:I = -0x1

.field private static blacklist sBinderCallback:Landroid/os/IBinderCallback;

.field private static volatile greylist-max-o sDumpDisabled:Ljava/lang/String;

.field private static volatile blacklist sHeavyHitterWatcher:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

.field private static blacklist sIsHandlingBinderTransaction:Z

.field private static blacklist sObserver:Lcom/android/internal/os/BinderInternal$Observer;

.field private static volatile blacklist sStackTrackingEnabled:Z

.field private static volatile greylist-max-o sTransactionTracker:Landroid/os/TransactionTracker;

.field static volatile greylist-max-o sWarnOnBlocking:Z

.field static blacklist sWarnOnBlockingOnCurrentThread:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile blacklist sWorkSourceProvider:Lcom/android/internal/os/BinderInternal$WorkSourceProvider;


# instance fields
.field private greylist-max-o mDescriptor:Ljava/lang/String;

.field private blacklist mExtension:Landroid/os/IBinder;

.field private final greylist mObject:J

.field private greylist-max-o mOwner:Landroid/os/IInterface;

.field private volatile blacklist mSimpleDescriptor:Ljava/lang/String;

.field private volatile blacklist mTransactionTraceNames:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetNativeFinalizer()J
    .registers 2

    invoke-static {}, Landroid/os/Binder;->getNativeFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 97
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/Binder;->LOG_RUNTIME_EXCEPTION:Z

    .line 112
    const/4 v1, 0x0

    sput-object v1, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;

    .line 117
    sput-object v1, Landroid/os/Binder;->sTransactionTracker:Landroid/os/TransactionTracker;

    .line 122
    sput-object v1, Landroid/os/Binder;->sObserver:Lcom/android/internal/os/BinderInternal$Observer;

    .line 141
    sput-object v1, Landroid/os/Binder;->sHeavyHitterWatcher:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    .line 148
    sput-boolean v0, Landroid/os/Binder;->sStackTrackingEnabled:Z

    .line 206
    sput-boolean v0, Landroid/os/Binder;->sWarnOnBlocking:Z

    .line 275
    new-instance v2, Landroid/os/Binder$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/os/Binder$$ExternalSyntheticLambda0;-><init>()V

    .line 276
    invoke-static {v2}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v2

    sput-object v2, Landroid/os/Binder;->sWarnOnBlockingOnCurrentThread:Ljava/lang/ThreadLocal;

    .line 360
    sput-boolean v0, Landroid/os/Binder;->sIsHandlingBinderTransaction:Z

    .line 696
    sput-object v1, Landroid/os/Binder;->sBinderCallback:Landroid/os/IBinderCallback;

    .line 1374
    new-instance v0, Landroid/os/Binder$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/os/Binder$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroid/os/Binder;->sWorkSourceProvider:Lcom/android/internal/os/BinderInternal$WorkSourceProvider;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 725
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 726
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 5

    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/Binder;->mExtension:Landroid/os/IBinder;

    .line 318
    iput-object v0, p0, Landroid/os/Binder;->mTransactionTraceNames:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 319
    iput-object v0, p0, Landroid/os/Binder;->mSimpleDescriptor:Ljava/lang/String;

    .line 741
    invoke-static {}, Landroid/os/Binder;->getNativeBBinderHolder()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/Binder;->mObject:J

    .line 742
    sget-object v0, Landroid/os/Binder$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/os/Binder;->mObject:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 752
    iput-object p1, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    .line 753
    return-void
.end method

.method public static greylist-max-o allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 4

    .line 239
    :try_start_0
    instance-of v0, p0, Landroid/os/BinderProxy;

    if-eqz v0, :cond_b

    .line 240
    move-object v0, p0

    check-cast v0, Landroid/os/BinderProxy;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    goto :goto_35

    .line 241
    :cond_b
    if-eqz p0, :cond_35

    invoke-interface {p0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 242
    invoke-interface {p0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_35

    .line 243
    const-string v0, "Binder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to allow blocking on interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_35} :catch_36

    .line 246
    :cond_35
    :goto_35
    goto :goto_37

    .line 245
    :catch_36
    move-exception v0

    .line 247
    :goto_37
    return-object p0
.end method

.method public static blacklist allowBlockingForCurrentThread()V
    .registers 2

    .line 286
    sget-object v0, Landroid/os/Binder;->sWarnOnBlockingOnCurrentThread:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 287
    return-void
.end method

.method public static final native greylist-max-o blockUntilThreadAvailable()V
.end method

.method static greylist-max-o checkParcel(Landroid/os/IBinder;ILandroid/os/Parcel;Ljava/lang/String;)V
    .registers 4

    .line 1366
    return-void
.end method

.method public static final native whitelist clearCallingIdentity()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static final native whitelist clearCallingWorkSource()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static greylist-max-o copyAllowBlocking(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 3

    .line 270
    instance-of v0, p0, Landroid/os/BinderProxy;

    if-eqz v0, :cond_10

    instance-of v0, p1, Landroid/os/BinderProxy;

    if-eqz v0, :cond_10

    .line 271
    check-cast p1, Landroid/os/BinderProxy;

    check-cast p0, Landroid/os/BinderProxy;

    iget-boolean p0, p0, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    iput-boolean p0, p1, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    .line 273
    :cond_10
    return-void
.end method

.method public static greylist-max-o defaultBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 3

    .line 257
    instance-of v0, p0, Landroid/os/BinderProxy;

    if-eqz v0, :cond_b

    .line 258
    move-object v0, p0

    check-cast v0, Landroid/os/BinderProxy;

    sget-boolean v1, Landroid/os/Binder;->sWarnOnBlocking:Z

    iput-boolean v1, v0, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    .line 260
    :cond_b
    return-object p0
.end method

.method public static blacklist defaultBlockingForCurrentThread()V
    .registers 2

    .line 297
    sget-object v0, Landroid/os/Binder;->sWarnOnBlockingOnCurrentThread:Ljava/lang/ThreadLocal;

    sget-boolean v1, Landroid/os/Binder;->sWarnOnBlocking:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 298
    return-void
.end method

.method public static blacklist disableStackTracking()V
    .registers 1

    .line 171
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/Binder;->sStackTrackingEnabled:Z

    .line 172
    return-void
.end method

.method public static blacklist enableStackTracking()V
    .registers 1

    .line 162
    const/4 v0, 0x1

    sput-boolean v0, Landroid/os/Binder;->sStackTrackingEnabled:Z

    .line 163
    return-void
.end method

.method private greylist execTransact(IJJI)Z
    .registers 11

    .line 1402
    invoke-static {p2, p3}, Landroid/os/Parcel;->obtain(J)Landroid/os/Parcel;

    move-result-object p3

    .line 1403
    invoke-static {p4, p5}, Landroid/os/Parcel;->obtain(J)Landroid/os/Parcel;

    move-result-object p4

    .line 1413
    invoke-virtual {p3}, Landroid/os/Parcel;->isForRpc()Z

    move-result p2

    const/4 v1, -0x1

    if-eqz p2, :cond_11

    move p2, v1

    goto :goto_15

    :cond_11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    .line 1414
    :goto_15
    if-ne p2, v1, :cond_1a

    .line 1415
    const-wide/16 v2, -0x1

    goto :goto_1e

    :cond_1a
    invoke-static {p2}, Landroid/os/ThreadLocalWorkSource;->setUid(I)J

    move-result-wide v2

    .line 1418
    :goto_1e
    move p5, p6

    move p6, p2

    move p2, p1

    move-object p1, p0

    :try_start_22
    invoke-direct/range {p1 .. p6}, Landroid/os/Binder;->execTransactInternal(ILandroid/os/Parcel;Landroid/os/Parcel;II)Z

    move-result p1
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_32

    .line 1420
    invoke-virtual {p4}, Landroid/os/Parcel;->recycle()V

    .line 1421
    invoke-virtual {p3}, Landroid/os/Parcel;->recycle()V

    .line 1423
    if-eq p6, v1, :cond_31

    .line 1424
    invoke-static {v2, v3}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    .line 1418
    :cond_31
    return p1

    .line 1420
    :catchall_32
    move-exception v0

    move-object p1, v0

    invoke-virtual {p4}, Landroid/os/Parcel;->recycle()V

    .line 1421
    invoke-virtual {p3}, Landroid/os/Parcel;->recycle()V

    .line 1423
    if-eq p6, v1, :cond_3f

    .line 1424
    invoke-static {v2, v3}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    .line 1426
    :cond_3f
    throw p1
.end method

.method private blacklist execTransactInternal(ILandroid/os/Parcel;Landroid/os/Parcel;II)Z
    .registers 22

    .line 1432
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v0, p5

    const-string v5, "Unreasonably large binder reply buffer"

    sget-object v6, Landroid/os/Binder;->sObserver:Lcom/android/internal/os/BinderInternal$Observer;

    .line 1436
    const/4 v7, 0x0

    const/4 v8, -0x1

    if-eqz v6, :cond_17

    invoke-interface {v6, v1, v2, v8}, Lcom/android/internal/os/BinderInternal$Observer;->callStarted(Landroid/os/Binder;II)Lcom/android/internal/os/BinderInternal$CallSession;

    move-result-object v9

    goto :goto_18

    :cond_17
    move-object v9, v7

    .line 1444
    :goto_18
    const-wide/32 v10, 0x1000000

    invoke-static {v10, v11}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v12

    .line 1447
    if-eqz v12, :cond_26

    .line 1449
    invoke-virtual/range {p0 .. p1}, Landroid/os/Binder;->getTransactionTraceName(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_27

    .line 1451
    :cond_26
    nop

    .line 1454
    :goto_27
    const/4 v14, 0x0

    if-eqz v12, :cond_2e

    if-eqz v7, :cond_2e

    const/4 v12, 0x1

    goto :goto_2f

    :cond_2e
    move v12, v14

    .line 1458
    :goto_2f
    :try_start_2f
    sget-object v15, Landroid/os/Binder;->sHeavyHitterWatcher:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    .line 1459
    if-eqz v15, :cond_3c

    if-eq v0, v8, :cond_3c

    .line 1461
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v15, v0, v13, v2}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->onTransaction(ILjava/lang/Class;I)V

    .line 1463
    :cond_3c
    if-eqz v12, :cond_41

    .line 1464
    invoke-static {v10, v11, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1470
    :cond_41
    and-int/lit8 v7, v4, 0x2

    if-eqz v7, :cond_58

    if-eq v0, v8, :cond_58

    .line 1471
    invoke-static {v0}, Landroid/app/AppOpsManager;->startNotedAppOpsCollection(I)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_4a} :catch_7f
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_4a} :catch_7f
    .catchall {:try_start_2f .. :try_end_4a} :catchall_7d

    .line 1473
    :try_start_4a
    invoke-virtual/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_53

    .line 1475
    :try_start_4e
    invoke-static {}, Landroid/app/AppOpsManager;->finishNotedAppOpsCollection()V

    .line 1476
    move v13, v0

    goto :goto_5d

    .line 1475
    :catchall_53
    move-exception v0

    invoke-static {}, Landroid/app/AppOpsManager;->finishNotedAppOpsCollection()V

    .line 1476
    throw v0

    .line 1478
    :cond_58
    invoke-virtual/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_5c} :catch_7f
    .catch Ljava/lang/RuntimeException; {:try_start_4e .. :try_end_5c} :catch_7f
    .catchall {:try_start_4e .. :try_end_5c} :catchall_7d

    move v13, v0

    .line 1506
    :goto_5d
    if-eqz v12, :cond_62

    .line 1507
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1509
    :cond_62
    if-eqz v6, :cond_79

    .line 1512
    sget-object v0, Landroid/os/Binder;->sWorkSourceProvider:Lcom/android/internal/os/BinderInternal$WorkSourceProvider;

    .line 1513
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readCallingWorkSourceUid()I

    move-result v4

    .line 1512
    invoke-interface {v0, v4}, Lcom/android/internal/os/BinderInternal$WorkSourceProvider;->resolveWorkSourceUid(I)I

    move-result v0

    .line 1514
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v7

    invoke-interface {v6, v9, v4, v7, v0}, Lcom/android/internal/os/BinderInternal$Observer;->callEnded(Lcom/android/internal/os/BinderInternal$CallSession;III)V

    .line 1517
    :cond_79
    invoke-static {v1, v2, v3, v5}, Landroid/os/Binder;->checkParcel(Landroid/os/IBinder;ILandroid/os/Parcel;Ljava/lang/String;)V

    .line 1518
    goto :goto_d8

    .line 1506
    :catchall_7d
    move-exception v0

    goto :goto_dc

    .line 1480
    :catch_7f
    move-exception v0

    .line 1481
    if-eqz v6, :cond_85

    .line 1482
    :try_start_82
    invoke-interface {v6, v9, v0}, Lcom/android/internal/os/BinderInternal$Observer;->callThrewException(Lcom/android/internal/os/BinderInternal$CallSession;Ljava/lang/Exception;)V

    .line 1484
    :cond_85
    sget-boolean v7, Landroid/os/Binder;->LOG_RUNTIME_EXCEPTION:Z
    :try_end_87
    .catchall {:try_start_82 .. :try_end_87} :catchall_7d

    const-string v8, "Caught a RuntimeException from the binder stub implementation."

    const-string v13, "Binder"

    if-eqz v7, :cond_90

    .line 1485
    :try_start_8d
    invoke-static {v13, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1487
    :cond_90
    and-int/lit8 v7, v4, 0x1

    if-eqz v7, :cond_a5

    .line 1488
    instance-of v7, v0, Landroid/os/RemoteException;

    if-eqz v7, :cond_9e

    .line 1489
    const-string v7, "Binder call failed."

    invoke-static {v13, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a1

    .line 1491
    :cond_9e
    invoke-static {v13, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1493
    :goto_a1
    invoke-virtual {v1, v2, v4, v0}, Landroid/os/Binder;->onUnhandledException(IILjava/lang/Exception;)V

    goto :goto_b7

    .line 1496
    :cond_a5
    invoke-virtual {v3, v14}, Landroid/os/Parcel;->setDataSize(I)V

    .line 1497
    invoke-virtual {v3, v14}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1499
    invoke-static {v0}, Landroid/os/Parcel;->getExceptionCode(Ljava/lang/Throwable;)I

    move-result v7

    if-nez v7, :cond_b4

    .line 1500
    invoke-virtual {v1, v2, v4, v0}, Landroid/os/Binder;->onUnhandledException(IILjava/lang/Exception;)V

    .line 1502
    :cond_b4
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V
    :try_end_b7
    .catchall {:try_start_8d .. :try_end_b7} :catchall_7d

    .line 1504
    :goto_b7
    nop

    .line 1506
    if-eqz v12, :cond_bd

    .line 1507
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1509
    :cond_bd
    if-eqz v6, :cond_d4

    .line 1512
    sget-object v0, Landroid/os/Binder;->sWorkSourceProvider:Lcom/android/internal/os/BinderInternal$WorkSourceProvider;

    .line 1513
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readCallingWorkSourceUid()I

    move-result v4

    .line 1512
    invoke-interface {v0, v4}, Lcom/android/internal/os/BinderInternal$WorkSourceProvider;->resolveWorkSourceUid(I)I

    move-result v0

    .line 1514
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v7

    invoke-interface {v6, v9, v4, v7, v0}, Lcom/android/internal/os/BinderInternal$Observer;->callEnded(Lcom/android/internal/os/BinderInternal$CallSession;III)V

    .line 1517
    :cond_d4
    invoke-static {v1, v2, v3, v5}, Landroid/os/Binder;->checkParcel(Landroid/os/IBinder;ILandroid/os/Parcel;Ljava/lang/String;)V

    .line 1518
    const/4 v13, 0x1

    .line 1525
    :goto_d8
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    .line 1526
    return v13

    .line 1506
    :goto_dc
    if-eqz v12, :cond_e1

    .line 1507
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1509
    :cond_e1
    if-eqz v6, :cond_f8

    .line 1512
    sget-object v4, Landroid/os/Binder;->sWorkSourceProvider:Lcom/android/internal/os/BinderInternal$WorkSourceProvider;

    .line 1513
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readCallingWorkSourceUid()I

    move-result v7

    .line 1512
    invoke-interface {v4, v7}, Lcom/android/internal/os/BinderInternal$WorkSourceProvider;->resolveWorkSourceUid(I)I

    move-result v4

    .line 1514
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->dataSize()I

    move-result v7

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v8

    invoke-interface {v6, v9, v7, v8, v4}, Lcom/android/internal/os/BinderInternal$Observer;->callEnded(Lcom/android/internal/os/BinderInternal$CallSession;III)V

    .line 1517
    :cond_f8
    invoke-static {v1, v2, v3, v5}, Landroid/os/Binder;->checkParcel(Landroid/os/IBinder;ILandroid/os/Parcel;Ljava/lang/String;)V

    .line 1518
    throw v0
.end method

.method public static final native whitelist flushPendingCommands()V
.end method

.method public static final native whitelist getCallingPid()I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static final native whitelist getCallingUid()I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static final whitelist getCallingUidOrThrow()I
    .registers 2

    .line 395
    invoke-static {}, Landroid/os/Binder;->isDirectlyHandlingTransaction()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Landroid/os/Binder;->hasExplicitIdentity()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_15

    .line 396
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Thread is not in a binder transaction, and the calling identity has not been explicitly set with clearCallingIdentity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_15
    :goto_15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public static final blacklist getCallingUidOrWtf(Ljava/lang/String;)I
    .registers 2

    .line 415
    invoke-static {}, Landroid/os/Binder;->isDirectlyHandlingTransaction()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {}, Landroid/os/Binder;->hasExplicitIdentity()Z

    move-result v0

    if-nez v0, :cond_24

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ": Thread is not in a binder transaction, and the calling identity has not been explicitly set with clearCallingIdentity"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Binder"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_24
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    return p0
.end method

.method public static final whitelist getCallingUserHandle()Landroid/os/UserHandle;
    .registers 1

    .line 435
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public static final native whitelist getCallingWorkSourceUid()I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o getNativeBBinderHolder()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o getNativeFinalizer()J
.end method

.method private blacklist getSimpleDescriptor()Ljava/lang/String;
    .registers 3

    .line 1064
    iget-object v0, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    .line 1065
    if-nez v0, :cond_7

    .line 1067
    const-string v0, "Binder"

    return-object v0

    .line 1070
    :cond_7
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1071
    if-lez v1, :cond_16

    .line 1073
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1075
    :cond_16
    return-object v0
.end method

.method public static final native greylist-max-o getThreadStrictModePolicy()I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static declared-synchronized greylist-max-o getTransactionTracker()Landroid/os/TransactionTracker;
    .registers 2

    const-class v0, Landroid/os/Binder;

    monitor-enter v0

    .line 189
    :try_start_3
    sget-object v1, Landroid/os/Binder;->sTransactionTracker:Landroid/os/TransactionTracker;

    if-nez v1, :cond_e

    .line 190
    new-instance v1, Landroid/os/TransactionTracker;

    invoke-direct {v1}, Landroid/os/TransactionTracker;-><init>()V

    sput-object v1, Landroid/os/Binder;->sTransactionTracker:Landroid/os/TransactionTracker;

    .line 191
    :cond_e
    sget-object v1, Landroid/os/Binder;->sTransactionTracker:Landroid/os/TransactionTracker;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 188
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private static native blacklist hasExplicitIdentity()Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static final blacklist isDirectlyHandlingTransaction()Z
    .registers 1

    .line 366
    sget-boolean v0, Landroid/os/Binder;->sIsHandlingBinderTransaction:Z

    if-nez v0, :cond_d

    invoke-static {}, Landroid/os/Binder;->isDirectlyHandlingTransactionNative()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public static final native blacklist isDirectlyHandlingTransactionNative()Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static final greylist-max-o isProxy(Landroid/os/IInterface;)Z
    .registers 2

    .line 681
    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eq v0, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static blacklist isStackTrackingEnabled()Z
    .registers 1

    .line 180
    sget-boolean v0, Landroid/os/Binder;->sStackTrackingEnabled:Z

    return v0
.end method

.method public static final whitelist joinThreadPool()V
    .registers 0

    .line 672
    invoke-static {}, Lcom/android/internal/os/BinderInternal;->joinThreadPool()V

    .line 673
    return-void
.end method

.method static synthetic blacklist lambda$static$0()Ljava/lang/Boolean;
    .registers 1

    .line 276
    sget-boolean v0, Landroid/os/Binder;->sWarnOnBlocking:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$static$1(I)I
    .registers 1

    .line 1375
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    return p0
.end method

.method public static final native whitelist restoreCallingIdentity(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static final native whitelist restoreCallingWorkSource(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static final native whitelist setCallingWorkSourceUid(I)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static greylist-max-o setDumpDisabled(Ljava/lang/String;)V
    .registers 1

    .line 815
    sput-object p0, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;

    .line 816
    return-void
.end method

.method private final native blacklist setExtensionNative(Landroid/os/IBinder;)V
.end method

.method public static final native blacklist setGlobalInheritRt(Z)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static declared-synchronized blacklist setHeavyHitterWatcherConfig(ZIFLcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;)V
    .registers 8

    const-class v0, Landroid/os/Binder;

    monitor-enter v0

    .line 1537
    :try_start_3
    const-string v1, "Binder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting heavy hitter watcher config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    sget-object v1, Landroid/os/Binder;->sHeavyHitterWatcher:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    .line 1540
    const/4 v2, 0x0

    if-eqz p0, :cond_4d

    .line 1541
    if-eqz p3, :cond_47

    .line 1544
    nop

    .line 1545
    const/4 p0, 0x1

    if-nez v1, :cond_3f

    .line 1546
    invoke-static {}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->getInstance()Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    move-result-object v1

    .line 1547
    move v2, p0

    .line 1549
    :cond_3f
    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->setConfig(ZIFLcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;)V

    .line 1550
    if-eqz v2, :cond_55

    .line 1551
    sput-object v1, Landroid/os/Binder;->sHeavyHitterWatcher:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    goto :goto_55

    .line 1542
    :cond_47
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 1553
    :cond_4d
    if-eqz v1, :cond_55

    .line 1554
    const/4 p0, 0x0

    const/4 p1, 0x0

    invoke-virtual {v1, v2, v2, p0, p1}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->setConfig(ZIFLcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;)V
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_58

    goto :goto_56

    .line 1553
    :cond_55
    :goto_55
    nop

    .line 1556
    :goto_56
    monitor-exit v0

    return-void

    .line 1536
    :catchall_58
    move-exception p0

    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw p0
.end method

.method public static blacklist setIsDirectlyHandlingTransactionOverride(Z)V
    .registers 1

    .line 374
    sput-boolean p0, Landroid/os/Binder;->sIsHandlingBinderTransaction:Z

    .line 375
    return-void
.end method

.method public static blacklist setObserver(Lcom/android/internal/os/BinderInternal$Observer;)V
    .registers 1

    .line 202
    sput-object p0, Landroid/os/Binder;->sObserver:Lcom/android/internal/os/BinderInternal$Observer;

    .line 203
    return-void
.end method

.method public static whitelist setProxyTransactListener(Landroid/os/Binder$ProxyTransactListener;)V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 905
    invoke-static {p0}, Landroid/os/BinderProxy;->setTransactListener(Landroid/os/Binder$ProxyTransactListener;)V

    .line 906
    return-void
.end method

.method public static final native greylist-max-o setThreadStrictModePolicy(I)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static final blacklist setTransactionCallback(Landroid/os/IBinderCallback;)V
    .registers 1

    .line 704
    sput-object p0, Landroid/os/Binder;->sBinderCallback:Landroid/os/IBinderCallback;

    .line 705
    return-void
.end method

.method public static greylist-max-o setWarnOnBlocking(Z)V
    .registers 1

    .line 220
    sput-boolean p0, Landroid/os/Binder;->sWarnOnBlocking:Z

    .line 221
    return-void
.end method

.method public static blacklist setWorkSourceProvider(Lcom/android/internal/os/BinderInternal$WorkSourceProvider;)V
    .registers 2

    .line 1391
    if-eqz p0, :cond_5

    .line 1394
    sput-object p0, Landroid/os/Binder;->sWorkSourceProvider:Lcom/android/internal/os/BinderInternal$WorkSourceProvider;

    .line 1395
    return-void

    .line 1392
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "workSourceProvider cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final blacklist transactionCallback(IIII)V
    .registers 5

    .line 713
    sget-object v0, Landroid/os/Binder;->sBinderCallback:Landroid/os/IBinderCallback;

    if-eqz v0, :cond_9

    .line 714
    sget-object v0, Landroid/os/Binder;->sBinderCallback:Landroid/os/IBinderCallback;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/os/IBinderCallback;->onTransactionError(IIII)V

    .line 716
    :cond_9
    return-void
.end method

.method public static final greylist-max-o withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 504
    nop

    .line 505
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 507
    :try_start_5
    invoke-interface {p0}, Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;->getOrThrow()Ljava/lang/Object;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_e

    .line 512
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 513
    nop

    .line 507
    return-object p0

    .line 508
    :catchall_e
    move-exception p0

    .line 509
    nop

    .line 510
    nop

    .line 512
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 513
    nop

    .line 514
    invoke-static {p0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static final greylist-max-o withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    .registers 3

    .line 480
    nop

    .line 481
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 483
    :try_start_5
    invoke-interface {p0}, Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;->runOrThrow()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    .line 487
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 488
    nop

    .line 492
    return-void

    .line 484
    :catchall_d
    move-exception p0

    .line 485
    nop

    .line 487
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 488
    nop

    .line 489
    invoke-static {p0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public whitelist attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
    .registers 3

    .line 762
    iput-object p1, p0, Landroid/os/Binder;->mOwner:Landroid/os/IInterface;

    .line 763
    iput-object p2, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    .line 764
    return-void
.end method

.method greylist-max-o doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 1101
    sget-object v0, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;

    .line 1102
    if-nez v0, :cond_31

    .line 1104
    :try_start_4
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Binder;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_7} :catch_15
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    .line 1116
    :goto_7
    goto :goto_36

    .line 1108
    :catchall_8
    move-exception p1

    .line 1113
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1114
    const-string p3, "Exception occurred while dumping:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1115
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_7

    .line 1105
    :catch_15
    move-exception p1

    .line 1106
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Security exception: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1107
    throw p1

    .line 1118
    :cond_31
    sget-object p1, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1120
    :goto_36
    return-void
.end method

.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 1151
    return-void
.end method

.method public whitelist dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 5

    .line 1091
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1092
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1094
    :try_start_a
    invoke-virtual {p0, p1, v1, p2}, Landroid/os/Binder;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_12

    .line 1096
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1097
    nop

    .line 1098
    return-void

    .line 1096
    :catchall_12
    move-exception p1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1097
    throw p1
.end method

.method public whitelist dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 10

    .line 1127
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1128
    new-instance v5, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v5, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1129
    new-instance v1, Landroid/os/Binder$1;

    const-string v3, "Binder.dumpAsync"

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Landroid/os/Binder$1;-><init>(Landroid/os/Binder;Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1138
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1139
    return-void
.end method

.method public final native blacklist forceDowngradeToSystemStability()V
.end method

.method public final blacklist getExtension()Landroid/os/IBinder;
    .registers 2

    .line 1278
    iget-object v0, p0, Landroid/os/Binder;->mExtension:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 770
    iget-object v0, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1083
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 995
    const/4 p1, 0x0

    return-object p1
.end method

.method public final blacklist getTransactionTraceName(I)Ljava/lang/String;
    .registers 7

    .line 1003
    invoke-virtual {p0}, Landroid/os/Binder;->getMaxTransactionId()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 1004
    :goto_b
    iget-object v1, p0, Landroid/os/Binder;->mTransactionTraceNames:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    if-nez v1, :cond_68

    .line 1005
    invoke-direct {p0}, Landroid/os/Binder;->getSimpleDescriptor()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/Binder;->mSimpleDescriptor:Ljava/lang/String;

    .line 1006
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->binderCacheTransactionTraceNames()Z

    move-result v1

    const/16 v3, 0x400

    if-eqz v1, :cond_55

    .line 1009
    iget-object v1, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    if-eqz v1, :cond_24

    iget-object v1, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    goto :goto_2c

    :cond_24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1011
    :goto_2c
    sget-object v4, Landroid/os/Binder$TransactionTraceNamesCacheHolder;->sNamesCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1012
    if-nez v4, :cond_52

    .line 1014
    if-eqz v0, :cond_39

    goto :goto_41

    .line 1015
    :cond_39
    invoke-virtual {p0}, Landroid/os/Binder;->getMaxTransactionId()I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1016
    :goto_41
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/2addr v3, v2

    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 1018
    sget-object v2, Landroid/os/Binder$TransactionTraceNamesCacheHolder;->sNamesCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1019
    invoke-virtual {v2, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1021
    if-eqz v1, :cond_52

    .line 1024
    move-object v4, v1

    .line 1027
    :cond_52
    iput-object v4, p0, Landroid/os/Binder;->mTransactionTraceNames:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1028
    goto :goto_68

    .line 1029
    :cond_55
    if-eqz v0, :cond_58

    goto :goto_60

    .line 1030
    :cond_58
    invoke-virtual {p0}, Landroid/os/Binder;->getMaxTransactionId()I

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1031
    :goto_60
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/2addr v3, v2

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v1, p0, Landroid/os/Binder;->mTransactionTraceNames:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1035
    :cond_68
    :goto_68
    if-eqz v0, :cond_6c

    .line 1036
    move v0, p1

    goto :goto_6e

    :cond_6c
    add-int/lit8 v0, p1, -0x1

    .line 1037
    :goto_6e
    iget-object v1, p0, Landroid/os/Binder;->mTransactionTraceNames:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_c1

    if-gez v0, :cond_79

    goto :goto_c1

    .line 1041
    :cond_79
    iget-object v1, p0, Landroid/os/Binder;->mTransactionTraceNames:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAcquire(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1042
    if-nez v1, :cond_c0

    .line 1043
    invoke-virtual {p0, p1}, Landroid/os/Binder;->getTransactionName(I)Ljava/lang/String;

    move-result-object v1

    .line 1044
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1048
    const-string v3, "AIDL::java::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1049
    if-eqz v1, :cond_a3

    .line 1050
    iget-object p1, p0, Landroid/os/Binder;->mSimpleDescriptor:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v3, "::"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b2

    .line 1052
    :cond_a3
    iget-object v1, p0, Landroid/os/Binder;->mSimpleDescriptor:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "::#"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1054
    :goto_b2
    const-string p1, "::server"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1056
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1057
    iget-object p1, p0, Landroid/os/Binder;->mTransactionTraceNames:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->setRelease(ILjava/lang/Object;)V

    .line 1060
    :cond_c0
    return-object v1

    .line 1038
    :cond_c1
    :goto_c1
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1268
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1269
    new-instance p2, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {p2, p1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1270
    const-string p1, "No shell command implementation."

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1271
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1272
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist isBinderAlive()Z
    .registers 2

    .line 788
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .registers 3

    .line 1336
    return-void
.end method

.method public final native whitelist markVintfStability()V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public greylist-max-o onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1203
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p5

    .line 1204
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p5, :cond_18

    const/16 v2, 0x7d0

    if-ne p5, v2, :cond_d

    goto :goto_18

    .line 1205
    :cond_d
    invoke-virtual {p6, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1206
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Shell commands are only callable by ADB"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1211
    :cond_18
    :goto_18
    const-string p5, "/dev/null"

    if-nez p1, :cond_28

    .line 1212
    :try_start_1c
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    goto :goto_28

    .line 1220
    :catch_26
    move-exception p1

    goto :goto_34

    .line 1214
    :cond_28
    :goto_28
    if-nez p2, :cond_62

    .line 1215
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_33} :catch_26

    goto :goto_62

    .line 1221
    :goto_34
    new-instance p4, Lcom/android/internal/util/FastPrintWriter;

    new-instance p5, Ljava/io/FileOutputStream;

    if-eqz p3, :cond_3b

    move-object p2, p3

    :cond_3b
    invoke-direct {p5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p4, p5}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1222
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to open /dev/null: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1223
    invoke-virtual {p4}, Ljava/io/PrintWriter;->flush()V

    .line 1224
    invoke-virtual {p6, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1225
    return-void

    .line 1217
    :cond_62
    :goto_62
    if-nez p3, :cond_65

    .line 1218
    move-object p3, p2

    .line 1226
    :cond_65
    nop

    .line 1228
    if-nez p4, :cond_6b

    .line 1229
    const/4 p4, 0x0

    new-array p4, p4, [Ljava/lang/String;

    .line 1232
    :cond_6b
    nop

    .line 1233
    :try_start_6c
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_70} :catch_b5
    .catchall {:try_start_6c .. :try_end_70} :catchall_b3

    .line 1234
    :try_start_70
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p2
    :try_end_74
    .catchall {:try_start_70 .. :try_end_74} :catchall_a7

    .line 1235
    :try_start_74
    invoke-static {p3}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p5
    :try_end_78
    .catchall {:try_start_74 .. :try_end_78} :catchall_9b

    .line 1236
    :try_start_78
    invoke-virtual {p0, p1, p2, p5, p4}, Landroid/os/Binder;->handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I

    move-result v0
    :try_end_7c
    .catchall {:try_start_78 .. :try_end_7c} :catchall_8f

    .line 1237
    if-eqz p5, :cond_81

    :try_start_7e
    invoke-virtual {p5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_9b

    :cond_81
    if-eqz p2, :cond_86

    :try_start_83
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_a7

    :cond_86
    if-eqz p1, :cond_8b

    :try_start_88
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_b5
    .catchall {:try_start_88 .. :try_end_8b} :catchall_b3

    .line 1242
    :cond_8b
    :goto_8b
    invoke-virtual {p6, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1243
    goto :goto_de

    .line 1233
    :catchall_8f
    move-exception p4

    if-eqz p5, :cond_9a

    :try_start_92
    invoke-virtual {p5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_96

    goto :goto_9a

    :catchall_96
    move-exception p5

    :try_start_97
    invoke-virtual {p4, p5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9a
    :goto_9a
    throw p4
    :try_end_9b
    .catchall {:try_start_97 .. :try_end_9b} :catchall_9b

    :catchall_9b
    move-exception p4

    if-eqz p2, :cond_a6

    :try_start_9e
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_a2

    goto :goto_a6

    :catchall_a2
    move-exception p2

    :try_start_a3
    invoke-virtual {p4, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a6
    :goto_a6
    throw p4
    :try_end_a7
    .catchall {:try_start_a3 .. :try_end_a7} :catchall_a7

    :catchall_a7
    move-exception p2

    if-eqz p1, :cond_b2

    :try_start_aa
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_ae

    goto :goto_b2

    :catchall_ae
    move-exception p1

    :try_start_af
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b2
    :goto_b2
    throw p2
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b3} :catch_b5
    .catchall {:try_start_af .. :try_end_b3} :catchall_b3

    .line 1242
    :catchall_b3
    move-exception p1

    goto :goto_df

    .line 1237
    :catch_b5
    move-exception p1

    .line 1238
    :try_start_b6
    new-instance p2, Lcom/android/internal/util/FastPrintWriter;

    new-instance p4, Ljava/io/FileOutputStream;

    invoke-direct {p4, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p2, p4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1239
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "dup() failed: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1240
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V
    :try_end_dd
    .catchall {:try_start_b6 .. :try_end_dd} :catchall_b3

    goto :goto_8b

    .line 1244
    :goto_de
    return-void

    .line 1242
    :goto_df
    invoke-virtual {p6, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1243
    throw p1
.end method

.method protected whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 932
    const p4, 0x5f4e5446

    const/4 v0, 0x1

    if-ne p1, p4, :cond_e

    .line 933
    invoke-virtual {p0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 934
    return v0

    .line 935
    :cond_e
    const p4, 0x5f444d50

    if-ne p1, p4, :cond_38

    .line 936
    invoke-virtual {p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 937
    invoke-virtual {p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 938
    if-eqz p1, :cond_2e

    .line 940
    :try_start_1d
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p4

    invoke-virtual {p0, p4, p2}, Landroid/os/Binder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_28

    .line 942
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 943
    goto :goto_2e

    .line 942
    :catchall_28
    move-exception v0

    move-object p2, v0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 943
    throw p2

    .line 946
    :cond_2e
    :goto_2e
    if-eqz p3, :cond_34

    .line 947
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_37

    .line 949
    :cond_34
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    .line 951
    :goto_37
    return v0

    .line 952
    :cond_38
    const p4, 0x5f434d44

    if-ne p1, p4, :cond_a9

    .line 953
    invoke-virtual {p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 954
    invoke-virtual {p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p4

    .line 955
    invoke-virtual {p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 956
    invoke-virtual {p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 957
    sget-object v2, Landroid/os/ShellCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/os/ShellCallback;

    .line 958
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v8, p2

    check-cast v8, Landroid/os/ResultReceiver;

    .line 960
    if-eqz p4, :cond_95

    .line 961
    if-eqz p1, :cond_6b

    :try_start_63
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    goto :goto_6c

    .line 967
    :catchall_68
    move-exception v0

    move-object p2, v0

    goto :goto_82

    .line 961
    :cond_6b
    const/4 p2, 0x0

    :goto_6c
    move-object v3, p2

    .line 962
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 963
    if-eqz v1, :cond_78

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    goto :goto_7c

    :cond_78
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    :goto_7c
    move-object v5, p2

    .line 961
    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/os/Binder;->shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    :try_end_81
    .catchall {:try_start_63 .. :try_end_81} :catchall_68

    goto :goto_95

    .line 967
    :goto_82
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 968
    invoke-static {p4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 969
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 971
    if-eqz p3, :cond_91

    .line 972
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_94

    .line 974
    :cond_91
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    .line 976
    :goto_94
    throw p2

    .line 967
    :cond_95
    :goto_95
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 968
    invoke-static {p4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 969
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 971
    if-eqz p3, :cond_a4

    .line 972
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a8

    .line 974
    :cond_a4
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    .line 976
    nop

    .line 977
    :goto_a8
    return v0

    .line 979
    :cond_a9
    const/4 p1, 0x0

    return p1
.end method

.method protected blacklist onUnhandledException(IILjava/lang/Exception;)V
    .registers 4

    .line 1166
    return-void
.end method

.method public whitelist pingBinder()Z
    .registers 2

    .line 778
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .registers 3

    .line 797
    iget-object v0, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 798
    iget-object p1, p0, Landroid/os/Binder;->mOwner:Landroid/os/IInterface;

    return-object p1

    .line 800
    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method

.method public final blacklist setExtension(Landroid/os/IBinder;)V
    .registers 2

    .line 1288
    iput-object p1, p0, Landroid/os/Binder;->mExtension:Landroid/os/IBinder;

    .line 1289
    invoke-direct {p0, p1}, Landroid/os/Binder;->setExtensionNative(Landroid/os/IBinder;)V

    .line 1290
    return-void
.end method

.method public final native blacklist setInheritRt(Z)V
.end method

.method public greylist-max-o shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1183
    invoke-virtual/range {p0 .. p6}, Landroid/os/Binder;->onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V

    .line 1184
    return-void
.end method

.method public final whitelist transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1322
    const/4 v0, 0x0

    if-eqz p2, :cond_6

    .line 1323
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1325
    :cond_6
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    .line 1326
    if-eqz p3, :cond_f

    .line 1327
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1329
    :cond_f
    return p1
.end method

.method public whitelist unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .registers 3

    .line 1342
    const/4 p1, 0x1

    return p1
.end method
