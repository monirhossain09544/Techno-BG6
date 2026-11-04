.class Landroid/service/voice/VoiceInteractionSession$SafeResultListener;
.super Ljava/lang/Object;
.source "VoiceInteractionSession.java"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SafeResultListener"
.end annotation


# instance fields
.field private final blacklist mWeakSession:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/service/voice/VoiceInteractionSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/function/Consumer;Landroid/service/voice/VoiceInteractionSession;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/service/voice/VoiceInteractionSession;",
            ")V"
        }
    .end annotation

    .line 2440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2441
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$SafeResultListener;->mWeakSession:Ljava/lang/ref/WeakReference;

    .line 2442
    return-void
.end method


# virtual methods
.method public whitelist onResult(Landroid/os/Bundle;)V
    .registers 3

    .line 2446
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$SafeResultListener;->mWeakSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/voice/VoiceInteractionSession;

    .line 2447
    if-eqz v0, :cond_13

    .line 2448
    invoke-static {v0, p0}, Landroid/service/voice/VoiceInteractionSession;->-$$Nest$mremoveSafeResultListener(Landroid/service/voice/VoiceInteractionSession;Landroid/service/voice/VoiceInteractionSession$SafeResultListener;)Ljava/util/function/Consumer;

    move-result-object v0

    .line 2449
    if-eqz v0, :cond_13

    .line 2450
    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2453
    :cond_13
    return-void
.end method
