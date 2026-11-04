.class public abstract Landroid/service/voice/VoiceInteractionSessionService;
.super Landroid/app/Service;
.source "VoiceInteractionSessionService.java"


# static fields
.field static final greylist-max-o MSG_NEW_SESSION:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "VoiceInteractionSession"


# instance fields
.field greylist-max-o mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

.field final greylist-max-o mHandlerCallerCallback:Lcom/android/internal/os/HandlerCaller$Callback;

.field greylist-max-o mInterface:Landroid/service/voice/IVoiceInteractionSessionService;

.field greylist-max-o mSession:Landroid/service/voice/VoiceInteractionSession;

.field greylist-max-o mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 51
    new-instance v0, Landroid/service/voice/VoiceInteractionSessionService$1;

    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionSessionService$1;-><init>(Landroid/service/voice/VoiceInteractionSessionService;)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mInterface:Landroid/service/voice/IVoiceInteractionSessionService;

    .line 60
    new-instance v0, Landroid/service/voice/VoiceInteractionSessionService$2;

    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionSessionService$2;-><init>(Landroid/service/voice/VoiceInteractionSessionService;)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mHandlerCallerCallback:Lcom/android/internal/os/HandlerCaller$Callback;

    return-void
.end method

.method private blacklist deliverSession(Landroid/os/IBinder;)Z
    .registers 5

    .line 139
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    iget-object v2, v2, Landroid/service/voice/VoiceInteractionSession;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->deliverNewSession(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z

    move-result p1
    :try_end_e
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_e} :catch_29
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return p1

    .line 141
    :catch_f
    move-exception p1

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to deliver session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VoiceInteractionSession"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 140
    :catch_29
    move-exception p1

    .line 143
    nop

    .line 144
    :goto_2b
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method greylist-max-o doNewSession(Landroid/os/IBinder;Landroid/os/Bundle;I)V
    .registers 5

    .line 123
    iget-object p3, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    const/4 v0, 0x0

    if-eqz p3, :cond_c

    .line 124
    iget-object p3, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {p3}, Landroid/service/voice/VoiceInteractionSession;->doDestroy()V

    .line 125
    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    .line 127
    :cond_c
    invoke-virtual {p0, p2}, Landroid/service/voice/VoiceInteractionSessionService;->onNewSession(Landroid/os/Bundle;)Landroid/service/voice/VoiceInteractionSession;

    move-result-object p2

    iput-object p2, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    .line 128
    invoke-direct {p0, p1}, Landroid/service/voice/VoiceInteractionSessionService;->deliverSession(Landroid/os/IBinder;)Z

    move-result p2

    if-eqz p2, :cond_20

    .line 129
    iget-object p2, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    iget-object p3, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-virtual {p2, p3, p1}, Landroid/service/voice/VoiceInteractionSession;->doCreate(Lcom/android/internal/app/IVoiceInteractionManagerService;Landroid/os/IBinder;)V

    goto :goto_27

    .line 132
    :cond_20
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionSession;->doDestroy()V

    .line 133
    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    .line 135
    :goto_27
    return-void
.end method

.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 114
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    if-nez v0, :cond_a

    .line 115
    const-string p1, "(no active session)"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_16

    .line 117
    :cond_a
    const-string v0, "VoiceInteractionSession:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    const-string v1, "  "

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/service/voice/VoiceInteractionSession;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 120
    :goto_16
    return-void
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 85
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSessionService;->mInterface:Landroid/service/voice/IVoiceInteractionSessionService;

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSessionService;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 90
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 91
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    if-eqz v0, :cond_c

    .line 92
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v0, p1}, Landroid/service/voice/VoiceInteractionSession;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 94
    :cond_c
    return-void
.end method

.method public whitelist onCreate()V
    .registers 5

    .line 74
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 75
    nop

    .line 76
    const-string/jumbo v0, "voiceinteraction"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionManagerService;

    move-result-object v0

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 77
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSessionService;->mHandlerCallerCallback:Lcom/android/internal/os/HandlerCaller$Callback;

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    .line 79
    return-void
.end method

.method public whitelist onLowMemory()V
    .registers 2

    .line 98
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 99
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    if-eqz v0, :cond_c

    .line 100
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionSession;->onLowMemory()V

    .line 102
    :cond_c
    return-void
.end method

.method public abstract whitelist onNewSession(Landroid/os/Bundle;)Landroid/service/voice/VoiceInteractionSession;
.end method

.method public whitelist onTrimMemory(I)V
    .registers 3

    .line 106
    invoke-super {p0, p1}, Landroid/app/Service;->onTrimMemory(I)V

    .line 107
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    if-eqz v0, :cond_c

    .line 108
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v0, p1}, Landroid/service/voice/VoiceInteractionSession;->onTrimMemory(I)V

    .line 110
    :cond_c
    return-void
.end method
