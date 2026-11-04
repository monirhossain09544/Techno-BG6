.class final Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;
.super Ljava/lang/Object;
.source "SavedDatasetsInfoCallbackImpl.java"

# interfaces
.implements Landroid/service/autofill/SavedDatasetsInfoCallback;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AutofillService"


# instance fields
.field private final blacklist mReceiver:Lcom/android/internal/os/IResultReceiver;

.field private final blacklist mType:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/os/IResultReceiver;Ljava/lang/String;)V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/os/IResultReceiver;

    iput-object p1, p0, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;->mReceiver:Lcom/android/internal/os/IResultReceiver;

    .line 51
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;->mType:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private blacklist send(ILandroid/os/Bundle;)V
    .registers 4

    .line 86
    :try_start_0
    iget-object v0, p0, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;->mReceiver:Lcom/android/internal/os/IResultReceiver;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_5} :catch_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_25

    .line 89
    :catch_6
    move-exception p1

    .line 90
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 87
    :catch_c
    move-exception p1

    .line 88
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to send onSavedPasswordCountRequest result: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AutofillService"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_25
    nop

    .line 92
    return-void
.end method


# virtual methods
.method public whitelist onError(I)V
    .registers 5

    .line 78
    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "error"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 79
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 80
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 81
    invoke-direct {p0, v1, v0}, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;->send(ILandroid/os/Bundle;)V

    .line 82
    return-void
.end method

.method public whitelist onSuccess(Ljava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/service/autofill/SavedDatasetsInfo;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    .line 58
    invoke-direct {p0, v2, v1}, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;->send(ILandroid/os/Bundle;)V

    .line 59
    return-void

    .line 61
    :cond_f
    nop

    .line 62
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, -0x1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/SavedDatasetsInfo;

    .line 63
    iget-object v4, p0, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;->mType:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/service/autofill/SavedDatasetsInfo;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 64
    invoke-virtual {v3}, Landroid/service/autofill/SavedDatasetsInfo;->getCount()I

    move-result v0

    .line 66
    :cond_31
    goto :goto_15

    .line 67
    :cond_32
    if-gez v0, :cond_38

    .line 68
    invoke-direct {p0, v2, v1}, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;->send(ILandroid/os/Bundle;)V

    .line 69
    return-void

    .line 71
    :cond_38
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 72
    const-string/jumbo v1, "result"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;->send(ILandroid/os/Bundle;)V

    .line 74
    return-void
.end method
