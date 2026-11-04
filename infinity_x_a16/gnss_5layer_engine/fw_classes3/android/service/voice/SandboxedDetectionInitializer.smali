.class public interface abstract Landroid/service/voice/SandboxedDetectionInitializer;
.super Ljava/lang/Object;
.source "SandboxedDetectionInitializer.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist INITIALIZATION_STATUS_SUCCESS:I = 0x0

.field public static final whitelist INITIALIZATION_STATUS_UNKNOWN:I = 0x64

.field public static final blacklist KEY_INITIALIZATION_STATUS:Ljava/lang/String; = "initialization_status"

.field public static final blacklist MAXIMUM_NUMBER_OF_INITIALIZATION_STATUS_CUSTOM_ERROR:I = 0x2


# direct methods
.method public static blacklist createInitializationStatusConsumer(Landroid/os/IRemoteCallback;)Ljava/util/function/IntConsumer;
    .registers 2

    .line 76
    nop

    .line 77
    if-eqz p0, :cond_9

    .line 78
    new-instance v0, Landroid/service/voice/SandboxedDetectionInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/service/voice/SandboxedDetectionInitializer$$ExternalSyntheticLambda0;-><init>(Landroid/os/IRemoteCallback;)V

    goto :goto_a

    .line 77
    :cond_9
    const/4 v0, 0x0

    .line 94
    :goto_a
    return-object v0
.end method

.method public static whitelist getMaxCustomInitializationStatus()I
    .registers 1

    .line 66
    const/4 v0, 0x2

    return v0
.end method

.method public static synthetic blacklist lambda$createInitializationStatusConsumer$0(Landroid/os/IRemoteCallback;I)V
    .registers 4

    .line 80
    nop

    .line 81
    invoke-static {}, Landroid/service/voice/SandboxedDetectionInitializer;->getMaxCustomInitializationStatus()I

    move-result v0

    if-gt p1, v0, :cond_1c

    .line 86
    :try_start_7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 87
    const-string v1, "initialization_status"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    invoke-interface {p0, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_14} :catch_16

    .line 91
    nop

    .line 92
    return-void

    .line 89
    :catch_16
    move-exception p0

    .line 90
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 82
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The initialization status is invalid for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract whitelist onUpdateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;JLjava/util/function/IntConsumer;)V
.end method
