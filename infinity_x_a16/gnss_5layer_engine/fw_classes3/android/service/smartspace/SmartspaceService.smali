.class public abstract Landroid/service/smartspace/SmartspaceService;
.super Landroid/app/Service;
.source "SmartspaceService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/smartspace/SmartspaceService$CallbackWrapper;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static final blacklist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.smartspace.SmartspaceService"

.field private static final blacklist TAG:Ljava/lang/String; = "SmartspaceService"


# instance fields
.field private blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mInterface:Landroid/service/smartspace/ISmartspaceService;

.field private final blacklist mSessionCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/smartspace/SmartspaceSessionId;",
            "Ljava/util/ArrayList<",
            "Landroid/service/smartspace/SmartspaceService$CallbackWrapper;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$X2GHqjIaYN5npavClfuuWaFRXvQ(Landroid/service/smartspace/SmartspaceService;Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/smartspace/SmartspaceService;->lambda$doRegisterSmartspaceUpdates$0(Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$umKlkaFhpKT5zx747Db8USoKIyQ(Landroid/service/smartspace/SmartspaceService;Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/smartspace/SmartspaceService;->lambda$doRegisterSmartspaceUpdates$1(Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/smartspace/SmartspaceService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/smartspace/SmartspaceService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdoCreateSmartspaceSession(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/smartspace/SmartspaceService;->doCreateSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoDestroy(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceSessionId;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/smartspace/SmartspaceService;->doDestroy(Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoRegisterSmartspaceUpdates(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/smartspace/SmartspaceService;->doRegisterSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoRequestPredictionUpdate(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceSessionId;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/smartspace/SmartspaceService;->doRequestPredictionUpdate(Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoUnregisterSmartspaceUpdates(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/smartspace/SmartspaceService;->doUnregisterSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 68
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mSessionCallbacks:Landroid/util/ArrayMap;

    .line 72
    new-instance v0, Landroid/service/smartspace/SmartspaceService$1;

    invoke-direct {v0, p0}, Landroid/service/smartspace/SmartspaceService$1;-><init>(Landroid/service/smartspace/SmartspaceService;)V

    iput-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mInterface:Landroid/service/smartspace/ISmartspaceService;

    return-void
.end method

.method private blacklist doCreateSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V
    .registers 5

    .line 151
    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mSessionCallbacks:Landroid/util/ArrayMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-virtual {p0, p1, p2}, Landroid/service/smartspace/SmartspaceService;->onCreateSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V

    .line 153
    return-void
.end method

.method private blacklist doDestroy(Landroid/app/smartspace/SmartspaceSessionId;)V
    .registers 4

    .line 251
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 253
    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mSessionCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 254
    if-eqz v0, :cond_15

    new-instance v1, Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 255
    :cond_15
    invoke-virtual {p0, p1}, Landroid/service/smartspace/SmartspaceService;->onDestroySmartspaceSession(Landroid/app/smartspace/SmartspaceSessionId;)V

    .line 256
    return-void
.end method

.method private blacklist doRegisterSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .registers 5

    .line 179
    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mSessionCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 180
    if-nez v0, :cond_23

    .line 181
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to register for updates for unknown session: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SmartspaceService"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void

    .line 185
    :cond_23
    invoke-direct {p0, v0, p2}, Landroid/service/smartspace/SmartspaceService;->findCallbackWrapper(Ljava/util/ArrayList;Landroid/app/smartspace/ISmartspaceCallback;)Landroid/service/smartspace/SmartspaceService$CallbackWrapper;

    move-result-object p1

    .line 186
    if-nez p1, :cond_36

    .line 187
    new-instance p1, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;

    new-instance v1, Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda1;-><init>(Landroid/service/smartspace/SmartspaceService;Ljava/util/ArrayList;)V

    invoke-direct {p1, p2, v1}, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;-><init>(Landroid/app/smartspace/ISmartspaceCallback;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_36
    return-void
.end method

.method private blacklist doRequestPredictionUpdate(Landroid/app/smartspace/SmartspaceSessionId;)V
    .registers 3

    .line 214
    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mSessionCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 215
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 216
    invoke-virtual {p0, p1}, Landroid/service/smartspace/SmartspaceService;->onRequestSmartspaceUpdate(Landroid/app/smartspace/SmartspaceSessionId;)V

    .line 218
    :cond_13
    return-void
.end method

.method private blacklist doUnregisterSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .registers 4

    .line 199
    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mSessionCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 200
    if-nez v0, :cond_23

    .line 201
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to unregister for updates for unknown session: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SmartspaceService"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void

    .line 205
    :cond_23
    invoke-direct {p0, v0, p2}, Landroid/service/smartspace/SmartspaceService;->findCallbackWrapper(Ljava/util/ArrayList;Landroid/app/smartspace/ISmartspaceCallback;)Landroid/service/smartspace/SmartspaceService$CallbackWrapper;

    move-result-object p1

    .line 206
    invoke-direct {p0, v0, p1}, Landroid/service/smartspace/SmartspaceService;->removeCallbackWrapper(Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V

    .line 207
    return-void
.end method

.method private blacklist findCallbackWrapper(Ljava/util/ArrayList;Landroid/app/smartspace/ISmartspaceCallback;)Landroid/service/smartspace/SmartspaceService$CallbackWrapper;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/service/smartspace/SmartspaceService$CallbackWrapper;",
            ">;",
            "Landroid/app/smartspace/ISmartspaceCallback;",
            ")",
            "Landroid/service/smartspace/SmartspaceService$CallbackWrapper;"
        }
    .end annotation

    .line 225
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1e

    .line 226
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;

    invoke-virtual {v1, p2}, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->isCallback(Landroid/app/smartspace/ISmartspaceCallback;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 227
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;

    return-object p1

    .line 225
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 230
    :cond_1e
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic blacklist lambda$doRegisterSmartspaceUpdates$0(Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V
    .registers 3

    .line 190
    invoke-direct {p0, p1, p2}, Landroid/service/smartspace/SmartspaceService;->removeCallbackWrapper(Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V

    return-void
.end method

.method private synthetic blacklist lambda$doRegisterSmartspaceUpdates$1(Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V
    .registers 5

    .line 189
    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda0;-><init>(Landroid/service/smartspace/SmartspaceService;Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private blacklist removeCallbackWrapper(Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/service/smartspace/SmartspaceService$CallbackWrapper;",
            ">;",
            "Landroid/service/smartspace/SmartspaceService$CallbackWrapper;",
            ")V"
        }
    .end annotation

    .line 235
    if-eqz p1, :cond_c

    if-nez p2, :cond_5

    goto :goto_c

    .line 238
    :cond_5
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 239
    invoke-virtual {p2}, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->destroy()V

    .line 240
    return-void

    .line 236
    :cond_c
    :goto_c
    return-void
.end method


# virtual methods
.method public abstract whitelist notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;)V
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    .line 138
    const-string v0, "android.service.smartspace.SmartspaceService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 139
    iget-object p1, p0, Landroid/service/smartspace/SmartspaceService;->mInterface:Landroid/service/smartspace/ISmartspaceService;

    invoke-interface {p1}, Landroid/service/smartspace/ISmartspaceService;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    .line 141
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to bind to wrong intent (should be android.service.smartspace.SmartspaceService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SmartspaceService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist onCreate()V
    .registers 5

    .line 125
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 129
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mHandler:Landroid/os/Handler;

    .line 130
    return-void
.end method

.method public abstract whitelist onCreateSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V
.end method

.method public abstract whitelist onDestroy(Landroid/app/smartspace/SmartspaceSessionId;)V
.end method

.method public abstract whitelist onDestroySmartspaceSession(Landroid/app/smartspace/SmartspaceSessionId;)V
.end method

.method public abstract whitelist onRequestSmartspaceUpdate(Landroid/app/smartspace/SmartspaceSessionId;)V
.end method

.method public final whitelist updateSmartspaceTargets(Landroid/app/smartspace/SmartspaceSessionId;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/smartspace/SmartspaceSessionId;",
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceTarget;",
            ">;)V"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mSessionCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 269
    if-eqz p1, :cond_1e

    .line 270
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;

    .line 271
    invoke-virtual {v0, p2}, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->accept(Ljava/util/List;)V

    .line 272
    goto :goto_e

    .line 274
    :cond_1e
    return-void
.end method
