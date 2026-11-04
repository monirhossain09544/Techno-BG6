.class public Landroid/service/voice/VoiceInteractionSession$Request;
.super Ljava/lang/Object;
.source "VoiceInteractionSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# instance fields
.field final greylist-max-o mCallback:Lcom/android/internal/app/IVoiceInteractorCallback;

.field final greylist-max-o mCallingPackage:Ljava/lang/String;

.field final greylist-max-o mCallingUid:I

.field final greylist-max-o mExtras:Landroid/os/Bundle;

.field final greylist-max-o mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

.field final greylist-max-o mSession:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/service/voice/VoiceInteractionSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Landroid/os/Bundle;)V
    .registers 7

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$Request$1;

    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionSession$Request$1;-><init>(Landroid/service/voice/VoiceInteractionSession$Request;)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    .line 447
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mCallingPackage:Ljava/lang/String;

    .line 448
    iput p2, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mCallingUid:I

    .line 449
    iput-object p3, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mCallback:Lcom/android/internal/app/IVoiceInteractorCallback;

    .line 450
    iget-object p1, p4, Landroid/service/voice/VoiceInteractionSession;->mWeakRef:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mSession:Ljava/lang/ref/WeakReference;

    .line 451
    iput-object p5, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mExtras:Landroid/os/Bundle;

    .line 452
    return-void
.end method


# virtual methods
.method public whitelist cancel()V
    .registers 3

    .line 512
    :try_start_0
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession$Request;->finishRequest()V

    .line 513
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mCallback:Lcom/android/internal/app/IVoiceInteractorCallback;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IVoiceInteractorCallback;->deliverCancel(Lcom/android/internal/app/IVoiceInteractorRequest;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 515
    goto :goto_c

    .line 514
    :catch_b
    move-exception v0

    .line 516
    :goto_c
    return-void
.end method

.method greylist-max-o dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 533
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mInterface="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 534
    iget-object p2, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-interface {p2}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 535
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mCallingPackage="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 536
    const-string p2, " mCallingUid="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mCallingUid:I

    invoke-static {p3, p2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 537
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 538
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mCallback="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 539
    iget-object p2, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mCallback:Lcom/android/internal/app/IVoiceInteractorCallback;

    invoke-interface {p2}, Lcom/android/internal/app/IVoiceInteractorCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 540
    iget-object p2, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mExtras:Landroid/os/Bundle;

    if-eqz p2, :cond_4d

    .line 541
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mExtras="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 542
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 544
    :cond_4d
    return-void
.end method

.method greylist-max-o finishRequest()V
    .registers 5

    .line 492
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/voice/VoiceInteractionSession;

    .line 493
    if-eqz v0, :cond_55

    .line 496
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/voice/VoiceInteractionSession;->removeRequest(Landroid/os/IBinder;)Landroid/service/voice/VoiceInteractionSession$Request;

    move-result-object v0

    .line 497
    if-eqz v0, :cond_3c

    .line 499
    if-ne v0, p0, :cond_19

    .line 503
    return-void

    .line 500
    :cond_19
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current active request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " not same as calling request "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 498
    :cond_3c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request not active: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_55
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VoiceInteractionSession has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getCallingPackage()Ljava/lang/String;
    .registers 2

    .line 465
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mCallingPackage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCallingUid()I
    .registers 2

    .line 458
    iget v0, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mCallingUid:I

    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 472
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist isActive()Z
    .registers 3

    .line 484
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/voice/VoiceInteractionSession;

    .line 485
    if-nez v0, :cond_c

    .line 486
    const/4 v0, 0x0

    return v0

    .line 488
    :cond_c
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/voice/VoiceInteractionSession;->isRequestActive(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 521
    invoke-static {p0, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 522
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 524
    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    iget v1, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mCallingUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 528
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
