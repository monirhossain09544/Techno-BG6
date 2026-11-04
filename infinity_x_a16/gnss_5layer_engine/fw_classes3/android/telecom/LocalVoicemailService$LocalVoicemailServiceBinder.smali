.class final Landroid/telecom/LocalVoicemailService$LocalVoicemailServiceBinder;
.super Lcom/android/internal/telecom/ILocalVoicemailService$Stub;
.source "LocalVoicemailService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/LocalVoicemailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalVoicemailServiceBinder"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/LocalVoicemailService;


# direct methods
.method public static synthetic blacklist $r8$lambda$5ZK2A9BEiQLNXe_UN1dt1i3M2gA(Landroid/telecom/LocalVoicemailService$LocalVoicemailServiceBinder;Landroid/telecom/ParcelableCall;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/LocalVoicemailService$LocalVoicemailServiceBinder;->lambda$startLocalVoicemail$1(Landroid/telecom/ParcelableCall;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$tfPElvDBrd2l6YhECQI19IGDoxQ(Landroid/telecom/LocalVoicemailService$LocalVoicemailServiceBinder;Lcom/android/internal/telecom/ILocalVoicemailServiceAdapter;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/LocalVoicemailService$LocalVoicemailServiceBinder;->lambda$setAdapter$0(Lcom/android/internal/telecom/ILocalVoicemailServiceAdapter;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telecom/LocalVoicemailService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 80
    iput-object p1, p0, Landroid/telecom/LocalVoicemailService$LocalVoicemailServiceBinder;->this$0:Landroid/telecom/LocalVoicemailService;

    invoke-direct {p0}, Lcom/android/internal/telecom/ILocalVoicemailService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telecom/LocalVoicemailService;Landroid/telecom/LocalVoicemailService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telecom/LocalVoicemailService$LocalVoicemailServiceBinder;-><init>(Landroid/telecom/LocalVoicemailService;)V

    return-void
.end method

.method private synthetic blacklist lambda$setAdapter$0(Lcom/android/internal/telecom/ILocalVoicemailServiceAdapter;)V
    .registers 3

    .line 85
    iget-object v0, p0, Landroid/telecom/LocalVoicemailService$LocalVoicemailServiceBinder;->this$0:Landroid/telecom/LocalVoicemailService;

    invoke-static {v0, p1}, Landroid/telecom/LocalVoicemailService;->-$$Nest$fputmAdapter(Landroid/telecom/LocalVoicemailService;Lcom/android/internal/telecom/ILocalVoicemailServiceAdapter;)V

    .line 86
    return-void
.end method

.method private synthetic blacklist lambda$startLocalVoicemail$1(Landroid/telecom/ParcelableCall;)V
    .registers 3

    .line 93
    iget-object v0, p0, Landroid/telecom/LocalVoicemailService$LocalVoicemailServiceBinder;->this$0:Landroid/telecom/LocalVoicemailService;

    invoke-static {v0, p1}, Landroid/telecom/LocalVoicemailService;->-$$Nest$mhandleLocalVoicemailRequest(Landroid/telecom/LocalVoicemailService;Landroid/telecom/ParcelableCall;)V

    .line 94
    return-void
.end method


# virtual methods
.method public blacklist setAdapter(Lcom/android/internal/telecom/ILocalVoicemailServiceAdapter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Landroid/telecom/LocalVoicemailService$LocalVoicemailServiceBinder;->this$0:Landroid/telecom/LocalVoicemailService;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "setAdapter"

    invoke-static {v0, v2, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Landroid/telecom/LocalVoicemailService$LocalVoicemailServiceBinder;->this$0:Landroid/telecom/LocalVoicemailService;

    invoke-virtual {v0}, Landroid/telecom/LocalVoicemailService;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/telecom/LocalVoicemailService$LocalVoicemailServiceBinder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/telecom/LocalVoicemailService$LocalVoicemailServiceBinder$$ExternalSyntheticLambda1;-><init>(Landroid/telecom/LocalVoicemailService$LocalVoicemailServiceBinder;Lcom/android/internal/telecom/ILocalVoicemailServiceAdapter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 87
    return-void
.end method

.method public blacklist startLocalVoicemail(Landroid/telecom/ParcelableCall;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Landroid/telecom/LocalVoicemailService$LocalVoicemailServiceBinder;->this$0:Landroid/telecom/LocalVoicemailService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startLocalVoicemail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Landroid/telecom/LocalVoicemailService$LocalVoicemailServiceBinder;->this$0:Landroid/telecom/LocalVoicemailService;

    invoke-virtual {v0}, Landroid/telecom/LocalVoicemailService;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/telecom/LocalVoicemailService$LocalVoicemailServiceBinder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/telecom/LocalVoicemailService$LocalVoicemailServiceBinder$$ExternalSyntheticLambda0;-><init>(Landroid/telecom/LocalVoicemailService$LocalVoicemailServiceBinder;Landroid/telecom/ParcelableCall;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 95
    return-void
.end method
