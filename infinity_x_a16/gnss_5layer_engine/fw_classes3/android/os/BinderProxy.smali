.class public final Landroid/os/BinderProxy;
.super Ljava/lang/Object;
.source "BinderProxy.java"

# interfaces
.implements Landroid/os/IBinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BinderProxy$ProxyMap;,
        Landroid/os/BinderProxy$InterfaceCount;,
        Landroid/os/BinderProxy$NoImagePreloadHolder;,
        Landroid/os/BinderProxy$BinderProxyMapSizeException;
    }
.end annotation


# static fields
.field private static final blacklist NATIVE_ALLOCATION_SIZE:I = 0x3e8

.field private static final blacklist sProxyMap:Landroid/os/BinderProxy$ProxyMap;

.field private static volatile blacklist sTransactListener:Landroid/os/Binder$ProxyTransactListener;


# instance fields
.field private blacklist mDeathRecipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFrozenStateChangeCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder$FrozenStateChangeCallback;",
            "Landroid/os/IBinder$FrozenStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mNativeData:J

.field volatile blacklist mWarnOnBlocking:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsProxyMap()Landroid/os/BinderProxy$ProxyMap;
    .registers 1

    sget-object v0, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetNativeFinalizer()J
    .registers 2

    invoke-static {}, Landroid/os/BinderProxy;->getNativeFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 57
    const/4 v0, 0x0

    sput-object v0, Landroid/os/BinderProxy;->sTransactListener:Landroid/os/Binder$ProxyTransactListener;

    .line 391
    new-instance v1, Landroid/os/BinderProxy$ProxyMap;

    invoke-direct {v1, v0}, Landroid/os/BinderProxy$ProxyMap;-><init>(Landroid/os/BinderProxy-IA;)V

    sput-object v1, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    return-void
.end method

.method private constructor blacklist <init>(J)V
    .registers 4

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-boolean v0, Landroid/os/Binder;->sWarnOnBlocking:Z

    iput-boolean v0, p0, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    .line 637
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BinderProxy;->mDeathRecipients:Ljava/util/List;

    .line 671
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 672
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BinderProxy;->mFrozenStateChangeCallbacks:Ljava/util/Map;

    .line 479
    iput-wide p1, p0, Landroid/os/BinderProxy;->mNativeData:J

    .line 480
    return-void
.end method

.method private native blacklist addFrozenStateChangeCallbackNative(Landroid/os/IBinder$FrozenStateChangeCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public static blacklist dumpProxyDebugInfo()V
    .registers 1

    .line 439
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_e

    .line 440
    sget-object v0, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    invoke-static {v0}, Landroid/os/BinderProxy$ProxyMap;->-$$Nest$mdumpProxyInterfaceCounts(Landroid/os/BinderProxy$ProxyMap;)V

    .line 441
    sget-object v0, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    invoke-static {v0}, Landroid/os/BinderProxy$ProxyMap;->-$$Nest$mdumpPerUidProxyCounts(Landroid/os/BinderProxy$ProxyMap;)V

    .line 443
    :cond_e
    return-void
.end method

.method private static blacklist getInstance(JJ)Landroid/os/BinderProxy;
    .registers 7

    .line 458
    sget-object v0, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    monitor-enter v0

    .line 460
    :try_start_3
    sget-object v1, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    invoke-virtual {v1, p2, p3}, Landroid/os/BinderProxy$ProxyMap;->get(J)Landroid/os/BinderProxy;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1f

    .line 461
    if-eqz v1, :cond_d

    .line 462
    :try_start_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_26

    return-object v1

    .line 464
    :cond_d
    :try_start_d
    new-instance v1, Landroid/os/BinderProxy;

    invoke-direct {v1, p0, p1}, Landroid/os/BinderProxy;-><init>(J)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_1f

    .line 470
    nop

    .line 471
    :try_start_13
    sget-object v2, Landroid/os/BinderProxy$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v2, v1, p0, p1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 473
    sget-object p0, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    invoke-virtual {p0, p2, p3, v1}, Landroid/os/BinderProxy$ProxyMap;->set(JLandroid/os/BinderProxy;)V

    .line 474
    monitor-exit v0

    .line 475
    return-object v1

    .line 465
    :catchall_1f
    move-exception p2

    .line 467
    sget-wide v1, Landroid/os/BinderProxy$NoImagePreloadHolder;->sNativeFinalizer:J

    invoke-static {v1, v2, p0, p1}, Llibcore/util/NativeAllocationRegistry;->applyFreeFunction(JJ)V

    .line 469
    throw p2

    .line 474
    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_13 .. :try_end_28} :catchall_26

    throw p0
.end method

.method private static native blacklist getNativeFinalizer()J
.end method

.method public static blacklist getProxyCount()I
    .registers 2

    .line 428
    sget-object v0, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    monitor-enter v0

    .line 429
    :try_start_3
    sget-object v1, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    invoke-static {v1}, Landroid/os/BinderProxy$ProxyMap;->-$$Nest$msize(Landroid/os/BinderProxy$ProxyMap;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 430
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public static blacklist getSortedInterfaceCounts(I)[Landroid/os/BinderProxy$InterfaceCount;
    .registers 2

    .line 420
    sget-object v0, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    invoke-static {v0, p0}, Landroid/os/BinderProxy$ProxyMap;->-$$Nest$mgetSortedInterfaceCounts(Landroid/os/BinderProxy$ProxyMap;I)[Landroid/os/BinderProxy$InterfaceCount;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist invokeFrozenStateChangeCallback(Landroid/os/IBinder$FrozenStateChangeCallback;Landroid/os/IBinder;I)V
    .registers 3

    .line 797
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/os/IBinder$FrozenStateChangeCallback;->onFrozenStateChanged(Landroid/os/IBinder;I)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    .line 801
    goto :goto_c

    .line 798
    :catch_4
    move-exception p0

    .line 799
    const-string p1, "BinderNative"

    const-string p2, "Uncaught exception from frozen state change callback"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 802
    :goto_c
    return-void
.end method

.method public static blacklist isFrozenStateChangeCallbackSupported()Z
    .registers 1

    .line 698
    invoke-static {}, Landroid/os/BinderProxy;->isFrozenStateChangeCallbackSupportedNative()Z

    move-result v0

    return v0
.end method

.method private static native blacklist isFrozenStateChangeCallbackSupportedNative()Z
.end method

.method static synthetic blacklist lambda$addFrozenStateChangeCallback$0(Landroid/os/IBinder$FrozenStateChangeCallback;Landroid/os/IBinder;I)V
    .registers 3

    .line 680
    invoke-interface {p0, p1, p2}, Landroid/os/IBinder$FrozenStateChangeCallback;->onFrozenStateChanged(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic blacklist lambda$addFrozenStateChangeCallback$1(Ljava/util/concurrent/Executor;Landroid/os/IBinder$FrozenStateChangeCallback;Landroid/os/IBinder;I)V
    .registers 5

    .line 680
    new-instance v0, Landroid/os/BinderProxy$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/BinderProxy$$ExternalSyntheticLambda1;-><init>(Landroid/os/IBinder$FrozenStateChangeCallback;Landroid/os/IBinder;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private native blacklist linkToDeathNative(Landroid/os/IBinder$DeathRecipient;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method private native blacklist removeFrozenStateChangeCallbackNative(Landroid/os/IBinder$FrozenStateChangeCallback;)Z
.end method

.method private static blacklist sendDeathNotice(Landroid/os/IBinder$DeathRecipient;Landroid/os/IBinder;)V
    .registers 3

    .line 787
    :try_start_0
    invoke-interface {p0, p1}, Landroid/os/IBinder$DeathRecipient;->binderDied(Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    .line 791
    goto :goto_c

    .line 788
    :catch_4
    move-exception p0

    .line 789
    const-string p1, "BinderNative"

    const-string v0, "Uncaught exception from death notification"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 792
    :goto_c
    return-void
.end method

.method public static blacklist setTransactListener(Landroid/os/Binder$ProxyTransactListener;)V
    .registers 1

    .line 69
    sput-object p0, Landroid/os/BinderProxy;->sTransactListener:Landroid/os/Binder$ProxyTransactListener;

    .line 70
    return-void
.end method

.method private native blacklist unlinkToDeathNative(Landroid/os/IBinder$DeathRecipient;I)Z
.end method


# virtual methods
.method public whitelist addFrozenStateChangeCallback(Ljava/util/concurrent/Executor;Landroid/os/IBinder$FrozenStateChangeCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 679
    new-instance v0, Landroid/os/BinderProxy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Landroid/os/BinderProxy$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Executor;Landroid/os/IBinder$FrozenStateChangeCallback;)V

    .line 681
    invoke-direct {p0, v0}, Landroid/os/BinderProxy;->addFrozenStateChangeCallbackNative(Landroid/os/IBinder$FrozenStateChangeCallback;)V

    .line 682
    iget-object p1, p0, Landroid/os/BinderProxy;->mFrozenStateChangeCallbacks:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    return-void
.end method

.method public whitelist dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 717
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 718
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 719
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 720
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 722
    const p1, 0x5f444d50

    const/4 p2, 0x0

    :try_start_12
    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/os/BinderProxy;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 723
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_20

    .line 725
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 726
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 727
    nop

    .line 728
    return-void

    .line 725
    :catchall_20
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 726
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 727
    throw p1
.end method

.method public whitelist dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 738
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 739
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 740
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 741
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 743
    const p1, 0x5f444d50

    const/4 p2, 0x1

    :try_start_12
    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/os/BinderProxy;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1d

    .line 745
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 746
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 747
    nop

    .line 748
    return-void

    .line 745
    :catchall_1d
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 746
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 747
    throw p1
.end method

.method public native blacklist getExtension()Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public native whitelist getInterfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public native whitelist isBinderAlive()Z
.end method

.method public whitelist linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 644
    invoke-direct {p0, p1, p2}, Landroid/os/BinderProxy;->linkToDeathNative(Landroid/os/IBinder$DeathRecipient;I)V

    .line 645
    iget-object p2, p0, Landroid/os/BinderProxy;->mDeathRecipients:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    return-void
.end method

.method public native whitelist pingBinder()Z
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .registers 2

    .line 517
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist removeFrozenStateChangeCallback(Landroid/os/IBinder$FrozenStateChangeCallback;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 690
    iget-object v0, p0, Landroid/os/BinderProxy;->mFrozenStateChangeCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder$FrozenStateChangeCallback;

    .line 691
    if-eqz p1, :cond_f

    .line 694
    invoke-direct {p0, p1}, Landroid/os/BinderProxy;->removeFrozenStateChangeCallbackNative(Landroid/os/IBinder$FrozenStateChangeCallback;)Z

    move-result p1

    return p1

    .line 692
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "callback not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 765
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 766
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 767
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 768
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 769
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 770
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 771
    invoke-static {p5, v0}, Landroid/os/ShellCallback;->writeToParcel(Landroid/os/ShellCallback;Landroid/os/Parcel;)V

    .line 772
    const/4 p1, 0x0

    invoke-virtual {p6, v0, p1}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 774
    const p2, 0x5f434d44

    :try_start_1e
    invoke-virtual {p0, p2, v0, v1, p1}, Landroid/os/BinderProxy;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 775
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_2c

    .line 777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 778
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 779
    nop

    .line 780
    return-void

    .line 777
    :catchall_2c
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 778
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 779
    throw p1
.end method

.method public whitelist transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 542
    const-string v0, "Unreasonably large binder buffer"

    invoke-static {p0, p1, p2, v0}, Landroid/os/Binder;->checkParcel(Landroid/os/IBinder;ILandroid/os/Parcel;Ljava/lang/String;)V

    .line 544
    iget-boolean v0, p0, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    .line 546
    if-eqz v0, :cond_3d

    and-int/lit8 v1, p4, 0x1

    if-nez v1, :cond_3d

    sget-object v1, Landroid/os/Binder;->sWarnOnBlockingOnCurrentThread:Ljava/lang/ThreadLocal;

    .line 547
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 551
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    .line 552
    nop

    .line 554
    sget-boolean v1, Landroid/os/Build;->IS_USERDEBUG:Z

    const-string v2, "Outgoing transactions from this process must be FLAG_ONEWAY"

    const-string v3, "Binder"

    if-nez v1, :cond_35

    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    if-eqz v1, :cond_2c

    goto :goto_35

    .line 560
    :cond_2c
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d

    .line 556
    :cond_35
    :goto_35
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v2, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 566
    :cond_3d
    :goto_3d
    invoke-static {}, Landroid/os/Binder;->isStackTrackingEnabled()Z

    move-result v1

    .line 567
    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    if-eqz v1, :cond_7a

    .line 568
    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    .line 569
    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/TransactionTracker;->addTrace(Ljava/lang/Throwable;)V

    .line 570
    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v4

    .line 571
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 572
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 571
    invoke-static {v2, v3, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 576
    :cond_7a
    sget-object v5, Landroid/os/BinderProxy;->sTransactListener:Landroid/os/Binder$ProxyTransactListener;

    .line 577
    nop

    .line 579
    if-eqz v5, :cond_91

    .line 580
    invoke-static {}, Landroid/os/Binder;->getCallingWorkSourceUid()I

    move-result v6

    .line 581
    invoke-interface {v5, p0, p1, p4}, Landroid/os/Binder$ProxyTransactListener;->onTransactStarted(Landroid/os/IBinder;II)Ljava/lang/Object;

    move-result-object v7

    .line 585
    invoke-static {}, Landroid/os/Binder;->getCallingWorkSourceUid()I

    move-result v8

    .line 586
    if-eq v6, v8, :cond_92

    .line 587
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->replaceCallingWorkSourceUid(I)Z

    goto :goto_92

    .line 579
    :cond_91
    const/4 v7, 0x0

    .line 592
    :cond_92
    :goto_92
    invoke-static {}, Landroid/app/AppOpsManager;->pauseNotedAppOpsCollection()Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;

    move-result-object v6

    .line 594
    and-int/lit8 v8, p4, 0x1

    if-nez v8, :cond_a2

    invoke-static {}, Landroid/app/AppOpsManager;->isListeningForOpNoted()Z

    move-result v8

    if-eqz v8, :cond_a2

    .line 595
    or-int/lit8 p4, p4, 0x2

    .line 599
    :cond_a2
    :try_start_a2
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/BinderProxy;->transactNative(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    .line 601
    if-eqz p3, :cond_ad

    if-nez v0, :cond_ad

    .line 602
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->addFlags(I)V
    :try_end_ad
    .catchall {:try_start_a2 .. :try_end_ad} :catchall_bc

    .line 605
    :cond_ad
    nop

    .line 607
    invoke-static {v6}, Landroid/app/AppOpsManager;->resumeNotedAppOpsCollection(Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;)V

    .line 609
    if-eqz v5, :cond_b6

    .line 610
    invoke-interface {v5, v7}, Landroid/os/Binder$ProxyTransactListener;->onTransactEnded(Ljava/lang/Object;)V

    .line 613
    :cond_b6
    if-eqz v1, :cond_bb

    .line 614
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 605
    :cond_bb
    return p1

    .line 607
    :catchall_bc
    move-exception p1

    invoke-static {v6}, Landroid/app/AppOpsManager;->resumeNotedAppOpsCollection(Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;)V

    .line 609
    if-eqz v5, :cond_c5

    .line 610
    invoke-interface {v5, v7}, Landroid/os/Binder$ProxyTransactListener;->onTransactEnded(Ljava/lang/Object;)V

    .line 613
    :cond_c5
    if-eqz v1, :cond_ca

    .line 614
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 616
    :cond_ca
    throw p1
.end method

.method public native blacklist transactNative(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public whitelist unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .registers 4

    .line 652
    iget-object v0, p0, Landroid/os/BinderProxy;->mDeathRecipients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 653
    invoke-direct {p0, p1, p2}, Landroid/os/BinderProxy;->unlinkToDeathNative(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result p1

    return p1
.end method
