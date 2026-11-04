.class public final Landroid/service/chooser/ChooserSession;
.super Ljava/lang/Object;
.source "ChooserSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/chooser/ChooserSession$ChooserSessionImpl;,
        Landroid/service/chooser/ChooserSession$StateListener;,
        Landroid/service/chooser/ChooserSession$UpdateListenerWrapper;,
        Landroid/service/chooser/ChooserSession$State;
    }
.end annotation


# static fields
.field public static final blacklist EXTRA_CHOOSER_SESSION:Ljava/lang/String; = "com.android.extra.EXTRA_CHOOSER_INTERACTIVE_CALLBACK"

.field public static final whitelist STATE_CLOSED:I = 0x2

.field public static final whitelist STATE_INITIALIZED:I = 0x0

.field public static final whitelist STATE_STARTED:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "ChooserSession"


# instance fields
.field private final blacklist mChooserSession:Landroid/service/chooser/ChooserSession$ChooserSessionImpl;

.field private final blacklist mToken:Landroid/service/chooser/ChooserSessionToken;


# direct methods
.method constructor blacklist <init>()V
    .registers 3

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;-><init>(Landroid/service/chooser/ChooserSession-IA;)V

    iput-object v0, p0, Landroid/service/chooser/ChooserSession;->mChooserSession:Landroid/service/chooser/ChooserSession$ChooserSessionImpl;

    .line 101
    new-instance v0, Landroid/service/chooser/ChooserSessionToken;

    iget-object v1, p0, Landroid/service/chooser/ChooserSession;->mChooserSession:Landroid/service/chooser/ChooserSession$ChooserSessionImpl;

    invoke-direct {v0, v1}, Landroid/service/chooser/ChooserSessionToken;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Landroid/service/chooser/ChooserSession;->mToken:Landroid/service/chooser/ChooserSessionToken;

    .line 103
    return-void
.end method

.method static blacklist isSessionBinder(Landroid/os/IBinder;)Z
    .registers 1

    .line 228
    instance-of p0, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;

    return p0
.end method


# virtual methods
.method public whitelist addStateListener(Ljava/util/concurrent/Executor;Landroid/service/chooser/ChooserSession$StateListener;)V
    .registers 4

    .line 214
    const-string v0, "executor should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 215
    const-string v0, "listener should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Landroid/service/chooser/ChooserSession;->mChooserSession:Landroid/service/chooser/ChooserSession$ChooserSessionImpl;

    invoke-virtual {v0, p1, p2}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->addStateListener(Ljava/util/concurrent/Executor;Landroid/service/chooser/ChooserSession$StateListener;)V

    .line 217
    return-void
.end method

.method public whitelist endSession()V
    .registers 2

    .line 135
    iget-object v0, p0, Landroid/service/chooser/ChooserSession;->mChooserSession:Landroid/service/chooser/ChooserSession$ChooserSessionImpl;

    invoke-virtual {v0}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->close()V

    .line 136
    return-void
.end method

.method blacklist getBinder()Landroid/os/IBinder;
    .registers 2

    .line 107
    iget-object v0, p0, Landroid/service/chooser/ChooserSession;->mChooserSession:Landroid/service/chooser/ChooserSession$ChooserSessionImpl;

    return-object v0
.end method

.method public whitelist getBounds()Landroid/graphics/Rect;
    .registers 2

    .line 205
    iget-object v0, p0, Landroid/service/chooser/ChooserSession;->mChooserSession:Landroid/service/chooser/ChooserSession$ChooserSessionImpl;

    invoke-static {v0}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->-$$Nest$fgetmBounds(Landroid/service/chooser/ChooserSession$ChooserSessionImpl;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist getState()I
    .registers 2

    .line 128
    iget-object v0, p0, Landroid/service/chooser/ChooserSession;->mChooserSession:Landroid/service/chooser/ChooserSession$ChooserSessionImpl;

    invoke-virtual {v0}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->getState()I

    move-result v0

    return v0
.end method

.method public whitelist getToken()Landroid/service/chooser/ChooserSessionToken;
    .registers 2

    .line 116
    iget-object v0, p0, Landroid/service/chooser/ChooserSession;->mToken:Landroid/service/chooser/ChooserSessionToken;

    return-object v0
.end method

.method public whitelist removeStateListener(Landroid/service/chooser/ChooserSession$StateListener;)V
    .registers 3

    .line 223
    const-string v0, "listener should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 224
    iget-object v0, p0, Landroid/service/chooser/ChooserSession;->mChooserSession:Landroid/service/chooser/ChooserSession$ChooserSessionImpl;

    invoke-virtual {v0, p1}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->removeStateListener(Landroid/service/chooser/ChooserSession$StateListener;)V

    .line 225
    return-void
.end method

.method public blacklist setMinimized(Z)V
    .registers 3

    .line 182
    iget-object v0, p0, Landroid/service/chooser/ChooserSession;->mChooserSession:Landroid/service/chooser/ChooserSession$ChooserSessionImpl;

    invoke-virtual {v0, p1}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->setMinimized(Z)V

    .line 183
    return-void
.end method

.method public whitelist setTargetsEnabled(Z)V
    .registers 3

    .line 194
    iget-object v0, p0, Landroid/service/chooser/ChooserSession;->mChooserSession:Landroid/service/chooser/ChooserSession$ChooserSessionImpl;

    invoke-virtual {v0, p1}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->setTargetsEnabled(Z)V

    .line 195
    return-void
.end method

.method public whitelist updateIntent(Landroid/content/Intent;)V
    .registers 3

    .line 158
    const-string v0, "intent should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Landroid/service/chooser/ChooserSession;->mChooserSession:Landroid/service/chooser/ChooserSession$ChooserSessionImpl;

    invoke-virtual {v0}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->getChooserController()Landroid/service/chooser/IChooserController;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_18

    .line 162
    :try_start_d
    invoke-interface {v0, p1}, Landroid/service/chooser/IChooserController;->updateIntent(Landroid/content/Intent;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11

    .line 165
    goto :goto_18

    .line 163
    :catch_11
    move-exception p1

    .line 164
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 167
    :cond_18
    :goto_18
    return-void
.end method
