.class final Landroid/service/dreams/DreamService$DreamServiceWrapper;
.super Landroid/service/dreams/IDreamService$Stub;
.source "DreamService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DreamServiceWrapper"
.end annotation


# instance fields
.field final blacklist mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/service/dreams/DreamService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$ECVNm96ywwmY895g12OaV0VHQV0(Landroid/service/dreams/DreamService;)V
    .registers 1

    invoke-static {p0}, Landroid/service/dreams/DreamService;->-$$Nest$mcomeToFront(Landroid/service/dreams/DreamService;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$K8ZJKdMDnolGoGrQgEsLeavi5Zg(Landroid/service/dreams/DreamService;)V
    .registers 1

    invoke-static {p0}, Landroid/service/dreams/DreamService;->-$$Nest$mdetach(Landroid/service/dreams/DreamService;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/ref/WeakReference;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/service/dreams/DreamService;",
            ">;)V"
        }
    .end annotation

    .line 1860
    invoke-direct {p0}, Landroid/service/dreams/IDreamService$Stub;-><init>()V

    .line 1861
    iput-object p1, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->mService:Ljava/lang/ref/WeakReference;

    .line 1862
    return-void
.end method

.method static synthetic blacklist lambda$attach$1(Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;Landroid/service/dreams/DreamService;)V
    .registers 5

    .line 1879
    invoke-static {p4, p0, p1, p2, p3}, Landroid/service/dreams/DreamService;->-$$Nest$mattach(Landroid/service/dreams/DreamService;Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;)V

    return-void
.end method

.method static synthetic blacklist lambda$post$0(Ljava/util/function/Consumer;Landroid/service/dreams/DreamService;)V
    .registers 2

    .line 1871
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$wakeUp$2(Landroid/service/dreams/DreamService;)V
    .registers 2

    .line 1900
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/service/dreams/DreamService;->-$$Nest$mwakeUp(Landroid/service/dreams/DreamService;Z)V

    return-void
.end method

.method private blacklist post(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/service/dreams/DreamService;",
            ">;)V"
        }
    .end annotation

    .line 1865
    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/dreams/DreamService;

    .line 1867
    if-nez v0, :cond_b

    .line 1868
    return-void

    .line 1871
    :cond_b
    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmHandler(Landroid/service/dreams/DreamService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, v0}, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/Consumer;Landroid/service/dreams/DreamService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1872
    return-void
.end method


# virtual methods
.method public blacklist attach(Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;)V
    .registers 8

    .line 1877
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1879
    :try_start_4
    new-instance v2, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;)V

    invoke-direct {p0, v2}, Landroid/service/dreams/DreamService$DreamServiceWrapper;->post(Ljava/util/function/Consumer;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    .line 1882
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1883
    nop

    .line 1884
    return-void

    .line 1882
    :catchall_11
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1883
    throw p1
.end method

.method public blacklist comeToFront()V
    .registers 4

    .line 1908
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1910
    :try_start_4
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/Flags;->dreamHandlesBeingObscured()Z

    move-result v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_1b

    if-nez v2, :cond_e

    .line 1915
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1911
    return-void

    .line 1913
    :cond_e
    :try_start_e
    new-instance v2, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p0, v2}, Landroid/service/dreams/DreamService$DreamServiceWrapper;->post(Ljava/util/function/Consumer;)V
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_1b

    .line 1915
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1916
    nop

    .line 1917
    return-void

    .line 1915
    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1916
    throw v2
.end method

.method public greylist-max-o detach()V
    .registers 4

    .line 1888
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1890
    :try_start_4
    new-instance v2, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, v2}, Landroid/service/dreams/DreamService$DreamServiceWrapper;->post(Ljava/util/function/Consumer;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    .line 1892
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1893
    nop

    .line 1894
    return-void

    .line 1892
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1893
    throw v2
.end method

.method public greylist-max-o wakeUp()V
    .registers 4

    .line 1898
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1900
    :try_start_4
    new-instance v2, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda4;-><init>()V

    invoke-direct {p0, v2}, Landroid/service/dreams/DreamService$DreamServiceWrapper;->post(Ljava/util/function/Consumer;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    .line 1902
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1903
    nop

    .line 1904
    return-void

    .line 1902
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1903
    throw v2
.end method
