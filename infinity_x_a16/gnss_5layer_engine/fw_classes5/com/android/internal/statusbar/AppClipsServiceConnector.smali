.class public Lcom/android/internal/statusbar/AppClipsServiceConnector;
.super Ljava/lang/Object;
.source "AppClipsServiceConnector.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/internal/statusbar/AppClipsServiceConnector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    const-class v0, Lcom/android/internal/statusbar/AppClipsServiceConnector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/statusbar/AppClipsServiceConnector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/internal/statusbar/AppClipsServiceConnector;->mContext:Landroid/content/Context;

    .line 42
    new-instance p1, Landroid/os/HandlerThread;

    sget-object v0, Lcom/android/internal/statusbar/AppClipsServiceConnector;->TAG:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 44
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/statusbar/AppClipsServiceConnector;->mHandler:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method private blacklist connectToServiceAndProcessRequest(ILjava/util/concurrent/CompletableFuture;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 64
    new-instance v2, Lcom/android/internal/statusbar/AppClipsServiceConnector$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/internal/statusbar/AppClipsServiceConnector$1;-><init>(Lcom/android/internal/statusbar/AppClipsServiceConnector;Ljava/util/concurrent/CompletableFuture;I)V

    .line 84
    iget-object p1, p0, Lcom/android/internal/statusbar/AppClipsServiceConnector;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10402e1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 87
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 88
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 90
    iget-object v0, p0, Lcom/android/internal/statusbar/AppClipsServiceConnector;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/statusbar/AppClipsServiceConnector;->mHandler:Landroid/os/Handler;

    iget-object p1, p0, Lcom/android/internal/statusbar/AppClipsServiceConnector;->mContext:Landroid/content/Context;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    .line 90
    const v3, 0x4000001

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result p1

    .line 95
    if-nez p1, :cond_39

    .line 96
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 98
    :cond_39
    return-void
.end method


# virtual methods
.method public blacklist canLaunchCaptureContentActivityForNote(I)Z
    .registers 5

    .line 53
    :try_start_0
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/android/internal/statusbar/AppClipsServiceConnector;->connectToServiceAndProcessRequest(ILjava/util/concurrent/CompletableFuture;)V

    .line 55
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    return p1

    .line 56
    :catch_13
    move-exception p1

    .line 57
    sget-object v0, Lcom/android/internal/statusbar/AppClipsServiceConnector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception from service\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 p1, 0x0

    return p1
.end method
