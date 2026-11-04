.class public abstract Landroid/telecom/LocalVoicemailService;
.super Landroid/app/Service;
.source "LocalVoicemailService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/LocalVoicemailService$LocalVoicemailServiceBinder;
    }
.end annotation


# static fields
.field public static final blacklist SERVICE_INTERFACE:Ljava/lang/String; = "android.telecom.LocalVoicemailService"


# instance fields
.field private blacklist mAdapter:Lcom/android/internal/telecom/ILocalVoicemailServiceAdapter;

.field private blacklist mCallId:Ljava/lang/String;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmAdapter(Landroid/telecom/LocalVoicemailService;Lcom/android/internal/telecom/ILocalVoicemailServiceAdapter;)V
    .registers 2

    iput-object p1, p0, Landroid/telecom/LocalVoicemailService;->mAdapter:Lcom/android/internal/telecom/ILocalVoicemailServiceAdapter;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleLocalVoicemailRequest(Landroid/telecom/LocalVoicemailService;Landroid/telecom/ParcelableCall;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/LocalVoicemailService;->handleLocalVoicemailRequest(Landroid/telecom/ParcelableCall;)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 98
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 99
    return-void
.end method

.method private blacklist handleLocalVoicemailRequest(Landroid/telecom/ParcelableCall;)V
    .registers 6

    .line 184
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/LocalVoicemailService;->mCallId:Ljava/lang/String;

    .line 186
    const/4 v0, 0x0

    :try_start_7
    invoke-virtual {p0}, Landroid/telecom/LocalVoicemailService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPstnCallAudioInterceptable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 189
    invoke-virtual {v1}, Landroid/media/AudioManager;->isPstnCallAudioInterceptable()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 188
    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    invoke-static {p1}, Landroid/telecom/Call$Details;->createFromParcelableCall(Landroid/telecom/ParcelableCall;)Landroid/telecom/Call$Details;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/telecom/LocalVoicemailService;->onVoicemailRequested(Landroid/telecom/Call$Details;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_36} :catch_37

    .line 194
    goto :goto_54

    .line 192
    :catch_37
    move-exception v1

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleLocalVoicemailRequest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, p1, v0}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    :goto_54
    return-void
.end method


# virtual methods
.method public final blacklist disconnectCall()V
    .registers 3

    .line 127
    :try_start_0
    iget-object v0, p0, Landroid/telecom/LocalVoicemailService;->mAdapter:Lcom/android/internal/telecom/ILocalVoicemailServiceAdapter;

    iget-object v1, p0, Landroid/telecom/LocalVoicemailService;->mCallId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ILocalVoicemailServiceAdapter;->disconnectCall(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 129
    goto :goto_9

    .line 128
    :catch_8
    move-exception v0

    .line 130
    :goto_9
    return-void
.end method

.method public blacklist getExecutor()Ljava/util/concurrent/Executor;
    .registers 3

    .line 114
    iget-object v0, p0, Landroid/telecom/LocalVoicemailService;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_13

    .line 115
    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-virtual {p0}, Landroid/telecom/LocalVoicemailService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/telecom/LocalVoicemailService;->mExecutor:Ljava/util/concurrent/Executor;

    .line 117
    :cond_13
    iget-object v0, p0, Landroid/telecom/LocalVoicemailService;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .line 103
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v0, "onBind"

    invoke-static {p0, v0, p1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    new-instance p1, Landroid/telecom/LocalVoicemailService$LocalVoicemailServiceBinder;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/telecom/LocalVoicemailService$LocalVoicemailServiceBinder;-><init>(Landroid/telecom/LocalVoicemailService;Landroid/telecom/LocalVoicemailService-IA;)V

    return-object p1
.end method

.method public abstract blacklist onVoicemailRequested(Landroid/telecom/Call$Details;)V
.end method
