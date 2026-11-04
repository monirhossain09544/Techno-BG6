.class public final Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;
.super Ljava/lang/Object;
.source "InputMethodPrivilegedOperations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "InputMethodPrivilegedOperations"


# instance fields
.field private final blacklist mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;-><init>(Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations-IA;)V

    iput-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    return-void
.end method


# virtual methods
.method public blacklist createInputContentUriToken(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;
    .registers 6

    .line 192
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    .line 193
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 194
    return-object v1

    .line 197
    :cond_a
    :try_start_a
    new-instance v2, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v2}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 198
    invoke-interface {v0, p1, p2, v2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->createInputContentUriToken(Landroid/net/Uri;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 199
    invoke-static {v2}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResult(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    invoke-static {p1}, Lcom/android/internal/inputmethod/IInputContentUriToken$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputContentUriToken;

    move-result-object p1
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1c} :catch_1d

    return-object p1

    .line 200
    :catch_1d
    move-exception p1

    .line 204
    return-object v1
.end method

.method public blacklist hideMySoftInput(Landroid/view/inputmethod/ImeTracker$Token;II)V
    .registers 5

    .line 295
    iget-object p2, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {p2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object p2

    .line 296
    const/16 p3, 0x2e

    if-nez p2, :cond_12

    .line 297
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 299
    return-void

    .line 301
    :cond_12
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 303
    :try_start_19
    new-instance p3, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {p3}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 304
    invoke-interface {p2, p1, p3}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->hideMySoftInput(Landroid/view/inputmethod/ImeTracker$Token;Lcom/android/internal/infra/AndroidFuture;)V

    .line 305
    invoke-static {p3}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResult(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_24} :catch_26

    .line 308
    nop

    .line 309
    return-void

    .line 306
    :catch_26
    move-exception p1

    .line 307
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist notifyUserActionAsync()V
    .registers 2

    .line 418
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    .line 419
    if-nez v0, :cond_9

    .line 420
    return-void

    .line 423
    :cond_9
    :try_start_9
    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->notifyUserActionAsync()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    .line 426
    nop

    .line 427
    return-void

    .line 424
    :catch_e
    move-exception v0

    .line 425
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist onImeSwitchButtonClickFromClient(I)V
    .registers 3

    .line 402
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    .line 403
    if-nez v0, :cond_9

    .line 404
    return-void

    .line 407
    :cond_9
    :try_start_9
    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->onImeSwitchButtonClickFromClient(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    .line 410
    nop

    .line 411
    return-void

    .line 408
    :catch_e
    move-exception p1

    .line 409
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist onStylusHandwritingReady(II)V
    .registers 4

    .line 434
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    .line 435
    if-nez v0, :cond_9

    .line 436
    return-void

    .line 439
    :cond_9
    :try_start_9
    invoke-interface {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->onStylusHandwritingReady(II)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    .line 442
    nop

    .line 443
    return-void

    .line 440
    :catch_e
    move-exception p1

    .line 441
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist reportFullscreenModeAsync(Z)V
    .registers 3

    .line 215
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    .line 216
    if-nez v0, :cond_9

    .line 217
    return-void

    .line 220
    :cond_9
    :try_start_9
    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->reportFullscreenModeAsync(Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    .line 223
    nop

    .line 224
    return-void

    .line 221
    :catch_e
    move-exception p1

    .line 222
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist reportStartInputAsync(Landroid/os/IBinder;)V
    .registers 3

    .line 133
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    .line 134
    if-nez v0, :cond_9

    .line 135
    return-void

    .line 138
    :cond_9
    :try_start_9
    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->reportStartInputAsync(Landroid/os/IBinder;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    .line 141
    nop

    .line 142
    return-void

    .line 139
    :catch_e
    move-exception p1

    .line 140
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist resetStylusHandwriting(I)V
    .registers 3

    .line 451
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    .line 452
    if-nez v0, :cond_9

    .line 453
    return-void

    .line 456
    :cond_9
    :try_start_9
    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->resetStylusHandwriting(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    .line 459
    nop

    .line 460
    return-void

    .line 457
    :catch_e
    move-exception p1

    .line 458
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist set(Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;)V
    .registers 3

    .line 102
    const-string v0, "privOps must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->set(Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;)V

    .line 104
    return-void
.end method

.method public blacklist setHandwritingSurfaceNotTouchable(Z)V
    .registers 3

    .line 151
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    .line 152
    if-nez v0, :cond_9

    .line 153
    return-void

    .line 156
    :cond_9
    :try_start_9
    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->setHandwritingSurfaceNotTouchable(Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    .line 159
    nop

    .line 160
    return-void

    .line 157
    :catch_e
    move-exception p1

    .line 158
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setHandwritingTouchableRegion(Landroid/graphics/Region;)V
    .registers 3

    .line 170
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    .line 171
    if-nez v0, :cond_9

    .line 172
    return-void

    .line 175
    :cond_9
    :try_start_9
    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->setHandwritingTouchableRegion(Landroid/graphics/Region;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    .line 178
    nop

    .line 179
    return-void

    .line 176
    :catch_e
    move-exception p1

    .line 177
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setImeWindowStatusAsync(II)V
    .registers 4

    .line 115
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    .line 116
    if-nez v0, :cond_9

    .line 117
    return-void

    .line 120
    :cond_9
    :try_start_9
    invoke-interface {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->setImeWindowStatusAsync(II)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    .line 123
    nop

    .line 124
    return-void

    .line 121
    :catch_e
    move-exception p1

    .line 122
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setInputMethod(Ljava/lang/String;)V
    .registers 4

    .line 253
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    .line 254
    if-nez v0, :cond_9

    .line 255
    return-void

    .line 258
    :cond_9
    :try_start_9
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 259
    invoke-interface {v0, p1, v1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->setInputMethod(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 260
    invoke-static {v1}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResult(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_16

    .line 263
    nop

    .line 264
    return-void

    .line 261
    :catch_16
    move-exception p1

    .line 262
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setInputMethodAndSubtype(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 5

    .line 276
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    .line 277
    if-nez v0, :cond_9

    .line 278
    return-void

    .line 281
    :cond_9
    :try_start_9
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 282
    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->setInputMethodAndSubtype(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;Lcom/android/internal/infra/AndroidFuture;)V

    .line 283
    invoke-static {v1}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResult(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_16

    .line 286
    nop

    .line 287
    return-void

    .line 284
    :catch_16
    move-exception p1

    .line 285
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist shouldOfferSwitchingToNextInputMethod()Z
    .registers 3

    .line 384
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    .line 385
    if-nez v0, :cond_a

    .line 386
    const/4 v0, 0x0

    return v0

    .line 389
    :cond_a
    :try_start_a
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 390
    invoke-interface {v0, v1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->shouldOfferSwitchingToNextInputMethod(Lcom/android/internal/infra/AndroidFuture;)V

    .line 391
    invoke-static {v1}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResult(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1c} :catch_1d

    return v0

    .line 392
    :catch_1d
    move-exception v0

    .line 393
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist showMySoftInput(Landroid/view/inputmethod/ImeTracker$Token;II)V
    .registers 5

    .line 317
    iget-object p2, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {p2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object p2

    .line 318
    const/16 p3, 0x2e

    if-nez p2, :cond_12

    .line 319
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 321
    return-void

    .line 323
    :cond_12
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 325
    :try_start_19
    new-instance p3, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {p3}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 326
    invoke-interface {p2, p1, p3}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->showMySoftInput(Landroid/view/inputmethod/ImeTracker$Token;Lcom/android/internal/infra/AndroidFuture;)V

    .line 327
    invoke-static {p3}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResult(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_24} :catch_26

    .line 330
    nop

    .line 331
    return-void

    .line 328
    :catch_26
    move-exception p1

    .line 329
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist switchKeyboardLayoutAsync(I)V
    .registers 3

    .line 467
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    .line 468
    if-nez v0, :cond_9

    .line 469
    return-void

    .line 472
    :cond_9
    :try_start_9
    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->switchKeyboardLayoutAsync(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    .line 475
    nop

    .line 476
    return-void

    .line 473
    :catch_e
    move-exception p1

    .line 474
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist switchToNextInputMethod(Z)Z
    .registers 4

    .line 363
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    .line 364
    if-nez v0, :cond_a

    .line 365
    const/4 p1, 0x0

    return p1

    .line 368
    :cond_a
    :try_start_a
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 369
    invoke-interface {v0, p1, v1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->switchToNextInputMethod(ZLcom/android/internal/infra/AndroidFuture;)V

    .line 370
    invoke-static {v1}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResult(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1c} :catch_1d

    return p1

    .line 371
    :catch_1d
    move-exception p1

    .line 372
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist switchToPreviousInputMethod()Z
    .registers 3

    .line 340
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    .line 341
    if-nez v0, :cond_a

    .line 342
    const/4 v0, 0x0

    return v0

    .line 345
    :cond_a
    :try_start_a
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 346
    invoke-interface {v0, v1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->switchToPreviousInputMethod(Lcom/android/internal/infra/AndroidFuture;)V

    .line 347
    invoke-static {v1}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResult(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1c} :catch_1d

    return v0

    .line 348
    :catch_1d
    move-exception v0

    .line 349
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist updateStatusIconAsync(Ljava/lang/String;I)V
    .registers 4

    .line 234
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    .line 235
    if-nez v0, :cond_9

    .line 236
    return-void

    .line 239
    :cond_9
    :try_start_9
    invoke-interface {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->updateStatusIconAsync(Ljava/lang/String;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    .line 242
    nop

    .line 243
    return-void

    .line 240
    :catch_e
    move-exception p1

    .line 241
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
