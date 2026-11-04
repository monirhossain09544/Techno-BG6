.class public final Landroid/service/dreams/DreamService$DreamActivityCallbacks;
.super Landroid/os/Binder;
.source "DreamService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DreamActivityCallbacks"
.end annotation


# instance fields
.field private final blacklist mActivityDreamToken:Landroid/os/IBinder;

.field private blacklist mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/service/dreams/DreamService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/os/IBinder;Ljava/lang/ref/WeakReference;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/service/dreams/DreamService;",
            ">;)V"
        }
    .end annotation

    .line 1954
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1955
    iput-object p1, p0, Landroid/service/dreams/DreamService$DreamActivityCallbacks;->mActivityDreamToken:Landroid/os/IBinder;

    .line 1956
    iput-object p2, p0, Landroid/service/dreams/DreamService$DreamActivityCallbacks;->mService:Ljava/lang/ref/WeakReference;

    .line 1957
    return-void
.end method


# virtual methods
.method public blacklist onActivityCreated(Landroid/service/dreams/DreamActivity;)V
    .registers 4

    .line 1961
    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamActivityCallbacks;->mService:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_5

    .line 1962
    return-void

    .line 1965
    :cond_5
    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamActivityCallbacks;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/dreams/DreamService;

    .line 1967
    if-nez v0, :cond_10

    .line 1968
    return-void

    .line 1971
    :cond_10
    iget-object v1, p0, Landroid/service/dreams/DreamService$DreamActivityCallbacks;->mActivityDreamToken:Landroid/os/IBinder;

    invoke-static {v0, p1, v1}, Landroid/service/dreams/DreamService;->-$$Nest$monActivityCreated(Landroid/service/dreams/DreamService;Landroid/service/dreams/DreamActivity;Landroid/os/IBinder;)V

    .line 1972
    return-void
.end method

.method public blacklist onActivityDestroyed()V
    .registers 2

    .line 1976
    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamActivityCallbacks;->mService:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_5

    .line 1977
    return-void

    .line 1980
    :cond_5
    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamActivityCallbacks;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/dreams/DreamService;

    .line 1982
    if-nez v0, :cond_10

    .line 1983
    return-void

    .line 1986
    :cond_10
    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$monActivityDestroyed(Landroid/service/dreams/DreamService;)V

    .line 1987
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/dreams/DreamService$DreamActivityCallbacks;->mService:Ljava/lang/ref/WeakReference;

    .line 1988
    return-void
.end method
