.class Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;
.super Landroid/service/contentcapture/IDataShareReadAdapter$Stub;
.source "ContentCaptureService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/contentcapture/ContentCaptureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataShareReadAdapterDelegate"
.end annotation


# instance fields
.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mResourceManagerReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/service/contentcapture/DataShareReadAdapter;Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;)V
    .registers 5

    .line 971
    invoke-direct {p0}, Landroid/service/contentcapture/IDataShareReadAdapter$Stub;-><init>()V

    .line 968
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;->mLock:Ljava/lang/Object;

    .line 972
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    invoke-virtual {p3, p0, p2, p1}, Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;->initializeForDelegate(Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;Landroid/service/contentcapture/DataShareReadAdapter;Ljava/util/concurrent/Executor;)V

    .line 977
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;->mResourceManagerReference:Ljava/lang/ref/WeakReference;

    .line 978
    return-void
.end method

.method private blacklist clearHardReferences()V
    .registers 3

    .line 1029
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;->mResourceManagerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;

    .line 1030
    if-nez v0, :cond_14

    .line 1031
    invoke-static {}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Can\'t clear references, resource manager has been GC\'ed"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    return-void

    .line 1035
    :cond_14
    invoke-virtual {v0, p0}, Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;->clearHardReferences(Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;)V

    .line 1036
    return-void
.end method

.method private blacklist executeAdapterMethodLocked(Ljava/util/function/Consumer;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/service/contentcapture/DataShareReadAdapter;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1006
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;->mResourceManagerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;

    .line 1007
    const-string v1, "Can\'t execute "

    if-nez v0, :cond_2b

    .line 1008
    invoke-static {}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "(), resource manager has been GC\'ed"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    return-void

    .line 1012
    :cond_2b
    invoke-virtual {v0, p0}, Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;->getAdapter(Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;)Landroid/service/contentcapture/DataShareReadAdapter;

    move-result-object v2

    .line 1013
    invoke-virtual {v0, p0}, Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;->getExecutor(Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 1015
    if-eqz v2, :cond_4e

    if-nez v0, :cond_38

    goto :goto_4e

    .line 1020
    :cond_38
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1022
    :try_start_3c
    new-instance p2, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1, v2}, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Landroid/service/contentcapture/DataShareReadAdapter;)V

    invoke-interface {v0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_49

    .line 1024
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1025
    nop

    .line 1026
    return-void

    .line 1024
    :catchall_49
    move-exception p1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1025
    throw p1

    .line 1016
    :cond_4e
    :goto_4e
    invoke-static {}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "(), references are null"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    return-void
.end method

.method static synthetic blacklist lambda$error$1(ILandroid/service/contentcapture/DataShareReadAdapter;)V
    .registers 2

    .line 992
    invoke-interface {p1, p0}, Landroid/service/contentcapture/DataShareReadAdapter;->onError(I)V

    return-void
.end method

.method static synthetic blacklist lambda$executeAdapterMethodLocked$2(Ljava/util/function/Consumer;Landroid/service/contentcapture/DataShareReadAdapter;)V
    .registers 2

    .line 1022
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$start$0(Landroid/os/ParcelFileDescriptor;Landroid/service/contentcapture/DataShareReadAdapter;)V
    .registers 2

    .line 984
    invoke-interface {p1, p0}, Landroid/service/contentcapture/DataShareReadAdapter;->onStart(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method


# virtual methods
.method public blacklist error(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 990
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 991
    :try_start_3
    new-instance v1, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate$$ExternalSyntheticLambda2;-><init>(I)V

    const-string/jumbo p1, "onError"

    invoke-direct {p0, v1, p1}, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;->executeAdapterMethodLocked(Ljava/util/function/Consumer;Ljava/lang/String;)V

    .line 993
    invoke-direct {p0}, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;->clearHardReferences()V

    .line 994
    monitor-exit v0

    .line 995
    return-void

    .line 994
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public blacklist finish()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 999
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1000
    :try_start_3
    invoke-direct {p0}, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;->clearHardReferences()V

    .line 1001
    monitor-exit v0

    .line 1002
    return-void

    .line 1001
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public blacklist start(Landroid/os/ParcelFileDescriptor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 983
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 984
    :try_start_3
    new-instance v1, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate$$ExternalSyntheticLambda1;-><init>(Landroid/os/ParcelFileDescriptor;)V

    const-string/jumbo p1, "onStart"

    invoke-direct {p0, v1, p1}, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;->executeAdapterMethodLocked(Ljava/util/function/Consumer;Ljava/lang/String;)V

    .line 985
    monitor-exit v0

    .line 986
    return-void

    .line 985
    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method
