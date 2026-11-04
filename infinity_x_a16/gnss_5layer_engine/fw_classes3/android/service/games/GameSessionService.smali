.class public abstract Landroid/service/games/GameSessionService;
.super Landroid/app/Service;
.source "GameSessionService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist ACTION_GAME_SESSION_SERVICE:Ljava/lang/String; = "android.service.games.action.GAME_SESSION_SERVICE"


# instance fields
.field private blacklist mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final blacklist mInterface:Landroid/service/games/IGameSessionService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mdoCreate(Landroid/service/games/GameSessionService;Landroid/service/games/IGameSessionController;Landroid/service/games/CreateGameSessionRequest;Landroid/service/games/GameSessionViewHostConfiguration;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/games/GameSessionService;->doCreate(Landroid/service/games/IGameSessionController;Landroid/service/games/CreateGameSessionRequest;Landroid/service/games/GameSessionViewHostConfiguration;Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 67
    new-instance v0, Landroid/service/games/GameSessionService$1;

    invoke-direct {v0, p0}, Landroid/service/games/GameSessionService$1;-><init>(Landroid/service/games/GameSessionService;)V

    iput-object v0, p0, Landroid/service/games/GameSessionService;->mInterface:Landroid/service/games/IGameSessionService;

    return-void
.end method

.method private blacklist doCreate(Landroid/service/games/IGameSessionController;Landroid/service/games/CreateGameSessionRequest;Landroid/service/games/GameSessionViewHostConfiguration;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/games/IGameSessionController;",
            "Landroid/service/games/CreateGameSessionRequest;",
            "Landroid/service/games/GameSessionViewHostConfiguration;",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/service/games/CreateGameSessionResult;",
            ">;)V"
        }
    .end annotation

    .line 110
    invoke-virtual {p0, p2}, Landroid/service/games/GameSessionService;->onNewSession(Landroid/service/games/CreateGameSessionRequest;)Landroid/service/games/GameSession;

    move-result-object v0

    .line 111
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v1, p0, Landroid/service/games/GameSessionService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget v2, p3, Landroid/service/games/GameSessionViewHostConfiguration;->mDisplayId:I

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 114
    if-nez v1, :cond_2f

    .line 115
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No display found for id: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p3, Landroid/service/games/GameSessionViewHostConfiguration;->mDisplayId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 118
    return-void

    .line 123
    :cond_2f
    const/16 v2, 0x7f6

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/service/games/GameSessionService;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v3

    .line 125
    new-instance v4, Landroid/view/SurfaceControlViewHost;

    new-instance v2, Landroid/window/InputTransferToken;

    invoke-direct {v2}, Landroid/window/InputTransferToken;-><init>()V

    const-string v5, "GameSessionService"

    invoke-direct {v4, v3, v1, v2, v5}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/window/InputTransferToken;Ljava/lang/String;)V

    .line 129
    nop

    .line 131
    invoke-virtual {p2}, Landroid/service/games/CreateGameSessionRequest;->getTaskId()I

    move-result v2

    iget v5, p3, Landroid/service/games/GameSessionViewHostConfiguration;->mWidthPx:I

    iget v6, p3, Landroid/service/games/GameSessionViewHostConfiguration;->mHeightPx:I

    .line 129
    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/service/games/GameSession;->attach(Landroid/service/games/IGameSessionController;ILandroid/content/Context;Landroid/view/SurfaceControlViewHost;II)V

    .line 137
    new-instance p1, Landroid/service/games/CreateGameSessionResult;

    iget-object p2, v0, Landroid/service/games/GameSession;->mInterface:Landroid/service/games/IGameSession;

    .line 139
    invoke-virtual {v4}, Landroid/view/SurfaceControlViewHost;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/service/games/CreateGameSessionResult;-><init>(Landroid/service/games/IGameSession;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 141
    invoke-virtual {p4, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {v0}, Landroid/service/games/GameSession;->doCreate()V

    .line 144
    return-void
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    .line 94
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 95
    return-object v0

    .line 98
    :cond_4
    const-string v1, "android.service.games.action.GAME_SESSION_SERVICE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 99
    return-object v0

    .line 102
    :cond_11
    iget-object p1, p0, Landroid/service/games/GameSessionService;->mInterface:Landroid/service/games/IGameSessionService;

    invoke-interface {p1}, Landroid/service/games/IGameSessionService;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onCreate()V
    .registers 2

    .line 87
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 88
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/service/games/GameSessionService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Landroid/service/games/GameSessionService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 89
    return-void
.end method

.method public abstract whitelist onNewSession(Landroid/service/games/CreateGameSessionRequest;)Landroid/service/games/GameSession;
.end method
