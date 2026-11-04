.class Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;
.super Lcom/android/internal/textservice/ISpellCheckerService$Stub;
.source "SpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/textservice/SpellCheckerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpellCheckerServiceBinder"
.end annotation


# instance fields
.field private final greylist-max-o mInternalServiceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/service/textservice/SpellCheckerService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Landroid/service/textservice/SpellCheckerService;)V
    .registers 3

    .line 330
    invoke-direct {p0}, Lcom/android/internal/textservice/ISpellCheckerService$Stub;-><init>()V

    .line 331
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;->mInternalServiceRef:Ljava/lang/ref/WeakReference;

    .line 332
    return-void
.end method


# virtual methods
.method public blacklist getISpellCheckerSession(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;ILcom/android/internal/textservice/ISpellCheckerServiceCallback;)V
    .registers 12

    .line 354
    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;->mInternalServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/textservice/SpellCheckerService;

    .line 356
    if-nez v0, :cond_c

    .line 359
    const/4 p1, 0x0

    goto :goto_1d

    .line 361
    :cond_c
    invoke-virtual {v0}, Landroid/service/textservice/SpellCheckerService;->createSession()Landroid/service/textservice/SpellCheckerService$Session;

    move-result-object v4

    .line 362
    new-instance v0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;-><init>(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;Landroid/service/textservice/SpellCheckerService$Session;I)V

    .line 364
    invoke-virtual {v4}, Landroid/service/textservice/SpellCheckerService$Session;->onCreate()V

    move-object p1, v0

    .line 367
    :goto_1d
    :try_start_1d
    invoke-interface {p5, p1}, Lcom/android/internal/textservice/ISpellCheckerServiceCallback;->onSessionCreated(Lcom/android/internal/textservice/ISpellCheckerSession;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_20} :catch_21

    .line 369
    goto :goto_22

    .line 368
    :catch_21
    move-exception v0

    .line 370
    :goto_22
    return-void
.end method
