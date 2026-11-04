.class public abstract Landroid/service/resolver/ResolverRankerService;
.super Landroid/app/Service;
.source "ResolverRankerService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;
    }
.end annotation


# static fields
.field public static final whitelist BIND_PERMISSION:Ljava/lang/String; = "android.permission.BIND_RESOLVER_RANKER_SERVICE"

.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o HANDLER_THREAD_NAME:Ljava/lang/String; = "RESOLVER_RANKER_SERVICE"

.field public static final whitelist HOLD_PERMISSION:Ljava/lang/String; = "android.permission.PROVIDE_RESOLVER_RANKER_SERVICE"

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.resolver.ResolverRankerService"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ResolverRankerService"


# instance fields
.field private volatile greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mHandlerThread:Landroid/os/HandlerThread;

.field private greylist-max-o mWrapper:Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/resolver/ResolverRankerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/resolver/ResolverRankerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smsendResult(Ljava/util/List;Landroid/service/resolver/IResolverRankerResult;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/service/resolver/ResolverRankerService;->sendResult(Ljava/util/List;Landroid/service/resolver/IResolverRankerResult;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/resolver/ResolverRankerService;->mWrapper:Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;

    return-void
.end method

.method private static greylist-max-o sendResult(Ljava/util/List;Landroid/service/resolver/IResolverRankerResult;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;",
            "Landroid/service/resolver/IResolverRankerResult;",
            ")V"
        }
    .end annotation

    .line 139
    :try_start_0
    invoke-interface {p1, p0}, Landroid/service/resolver/IResolverRankerResult;->sendResult(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 142
    goto :goto_1d

    .line 140
    :catch_4
    move-exception p0

    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to send results: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ResolverRankerService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_1d
    return-void
.end method


# virtual methods
.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    .line 113
    const-string v0, "android.service.resolver.ResolverRankerService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_e

    .line 115
    return-object v0

    .line 117
    :cond_e
    iget-object p1, p0, Landroid/service/resolver/ResolverRankerService;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez p1, :cond_2d

    .line 118
    new-instance p1, Landroid/os/HandlerThread;

    const-string v1, "RESOLVER_RANKER_SERVICE"

    invoke-direct {p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroid/service/resolver/ResolverRankerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 119
    iget-object p1, p0, Landroid/service/resolver/ResolverRankerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 120
    new-instance p1, Landroid/os/Handler;

    iget-object v1, p0, Landroid/service/resolver/ResolverRankerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/service/resolver/ResolverRankerService;->mHandler:Landroid/os/Handler;

    .line 122
    :cond_2d
    iget-object p1, p0, Landroid/service/resolver/ResolverRankerService;->mWrapper:Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;

    if-nez p1, :cond_38

    .line 123
    new-instance p1, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;

    invoke-direct {p1, p0, v0}, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;-><init>(Landroid/service/resolver/ResolverRankerService;Landroid/service/resolver/ResolverRankerService-IA;)V

    iput-object p1, p0, Landroid/service/resolver/ResolverRankerService;->mWrapper:Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;

    .line 125
    :cond_38
    iget-object p1, p0, Landroid/service/resolver/ResolverRankerService;->mWrapper:Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;

    return-object p1
.end method

.method public whitelist onDestroy()V
    .registers 2

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/resolver/ResolverRankerService;->mHandler:Landroid/os/Handler;

    .line 131
    iget-object v0, p0, Landroid/service/resolver/ResolverRankerService;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_c

    .line 132
    iget-object v0, p0, Landroid/service/resolver/ResolverRankerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 134
    :cond_c
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 135
    return-void
.end method

.method public whitelist onPredictSharingProbabilities(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;)V"
        }
    .end annotation

    .line 92
    return-void
.end method

.method public whitelist onTrainRankingModel(Ljava/util/List;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;I)V"
        }
    .end annotation

    .line 104
    return-void
.end method
