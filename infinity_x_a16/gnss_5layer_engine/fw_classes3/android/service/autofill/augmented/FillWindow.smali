.class public final Landroid/service/autofill/augmented/FillWindow;
.super Ljava/lang/Object;
.source "FillWindow.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mBounds:Landroid/graphics/Rect;

.field private final blacklist mCloseGuard:Ldalvik/system/CloseGuard;

.field private blacklist mDestroyed:Z

.field private blacklist mFillView:Landroid/view/View;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

.field private blacklist mShowing:Z

.field private final blacklist mUiThreadHandler:Landroid/os/Handler;

.field private blacklist mUpdateCalled:Z

.field private blacklist mWm:Landroid/view/WindowManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$f-UR09CUQw8w5qLsf8GZ9Mr4C8k(Landroid/service/autofill/augmented/FillWindow;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/autofill/augmented/FillWindow;->lambda$update$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUiThreadHandler(Landroid/service/autofill/augmented/FillWindow;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/augmented/FillWindow;->mUiThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleHide(Landroid/service/autofill/augmented/FillWindow;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/autofill/augmented/FillWindow;->handleHide()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleShow(Landroid/service/autofill/augmented/FillWindow;Landroid/view/WindowManager$LayoutParams;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/autofill/augmented/FillWindow;->handleShow(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 69
    const-class v0, Landroid/service/autofill/augmented/FillWindow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/augmented/FillWindow;->mLock:Ljava/lang/Object;

    .line 72
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/augmented/FillWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/autofill/augmented/FillWindow;->mUiThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method private blacklist checkNotDestroyedLocked()V
    .registers 3

    .line 282
    iget-boolean v0, p0, Landroid/service/autofill/augmented/FillWindow;->mDestroyed:Z

    if-nez v0, :cond_5

    .line 285
    return-void

    .line 283
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already destroyed()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist handleHide()V
    .registers 4

    .line 235
    sget-boolean v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v0, :cond_b

    sget-object v0, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    const-string v1, "handleHide()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_b
    iget-object v0, p0, Landroid/service/autofill/augmented/FillWindow;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_e
    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mWm:Landroid/view/WindowManager;

    if-eqz v1, :cond_31

    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mFillView:Landroid/view/View;

    if-eqz v1, :cond_31

    iget-boolean v1, p0, Landroid/service/autofill/augmented/FillWindow;->mShowing:Z
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_33

    if-eqz v1, :cond_31

    .line 239
    :try_start_1a
    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Landroid/service/autofill/augmented/FillWindow;->mFillView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 240
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/service/autofill/augmented/FillWindow;->mShowing:Z
    :try_end_24
    .catch Ljava/lang/IllegalStateException; {:try_start_1a .. :try_end_24} :catch_25
    .catchall {:try_start_1a .. :try_end_24} :catchall_33

    .line 243
    goto :goto_31

    .line 241
    :catch_25
    move-exception v1

    .line 242
    :try_start_26
    sget-boolean v1, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v1, :cond_31

    sget-object v1, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    const-string v2, "Exception hiding window."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_31
    :goto_31
    monitor-exit v0

    .line 246
    return-void

    .line 245
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_26 .. :try_end_35} :catchall_33

    throw v1
.end method

.method private blacklist handleShow(Landroid/view/WindowManager$LayoutParams;)V
    .registers 6

    .line 208
    sget-boolean v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v0, :cond_b

    sget-object v0, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    const-string v1, "handleShow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_b
    iget-object v0, p0, Landroid/service/autofill/augmented/FillWindow;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_e
    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mWm:Landroid/view/WindowManager;

    if-eqz v1, :cond_7c

    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mFillView:Landroid/view/View;
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_7e

    if-eqz v1, :cond_7c

    .line 212
    :try_start_16
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 213
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/Flags;->addAccessibilityTitleForAugmentedAutofillDropdown()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 214
    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mFillView:Landroid/view/View;

    .line 216
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 217
    const v2, 0x1040184

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 219
    :cond_32
    iget-boolean v1, p0, Landroid/service/autofill/augmented/FillWindow;->mShowing:Z

    if-nez v1, :cond_41

    .line 220
    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Landroid/service/autofill/augmented/FillWindow;->mFillView:Landroid/view/View;

    invoke-interface {v1, v2, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/service/autofill/augmented/FillWindow;->mShowing:Z

    goto :goto_7b

    .line 223
    :cond_41
    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Landroid/service/autofill/augmented/FillWindow;->mFillView:Landroid/view/View;

    invoke-interface {v1, v2, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_48
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_16 .. :try_end_48} :catch_56
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_48} :catch_49
    .catchall {:try_start_16 .. :try_end_48} :catchall_7e

    goto :goto_7b

    .line 227
    :catch_49
    move-exception p1

    .line 228
    :try_start_4a
    sget-boolean p1, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz p1, :cond_7c

    sget-object p1, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    const-string v1, "Exception showing window."

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    .line 225
    :catch_56
    move-exception v1

    .line 226
    sget-boolean v1, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v1, :cond_7b

    sget-object v1, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filed with token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p1, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " gone."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_7b
    :goto_7b
    nop

    .line 231
    :cond_7c
    :goto_7c
    monitor-exit v0

    .line 232
    return-void

    .line 231
    :catchall_7e
    move-exception p1

    monitor-exit v0
    :try_end_80
    .catchall {:try_start_4a .. :try_end_80} :catchall_7e

    throw p1
.end method

.method private blacklist hide()V
    .registers 5

    .line 191
    sget-boolean v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v0, :cond_b

    sget-object v0, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    const-string v1, "hide()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_b
    iget-object v0, p0, Landroid/service/autofill/augmented/FillWindow;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_e
    invoke-direct {p0}, Landroid/service/autofill/augmented/FillWindow;->checkNotDestroyedLocked()V

    .line 194
    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mWm:Landroid/view/WindowManager;

    if-eqz v1, :cond_31

    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mFillView:Landroid/view/View;

    if-eqz v1, :cond_31

    .line 197
    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    if-eqz v1, :cond_2f

    iget-boolean v1, p0, Landroid/service/autofill/augmented/FillWindow;->mShowing:Z
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_3a

    if-eqz v1, :cond_2f

    .line 199
    :try_start_21
    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    invoke-virtual {v1}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->requestHideFillUi()V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_27
    .catchall {:try_start_21 .. :try_end_26} :catchall_3a

    .line 202
    goto :goto_2f

    .line 200
    :catch_27
    move-exception v1

    .line 201
    :try_start_28
    sget-object v2, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    const-string v3, "Error requesting to hide fill window"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    :cond_2f
    :goto_2f
    monitor-exit v0

    .line 205
    return-void

    .line 195
    :cond_31
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "update() not called yet, or already destroyed()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_28 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method private synthetic blacklist lambda$update$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 144
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_15

    .line 145
    sget-boolean p1, Landroid/service/autofill/augmented/AugmentedAutofillService;->sVerbose:Z

    if-eqz p1, :cond_12

    sget-object p1, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    const-string p2, "Outside touch detected, hiding the window"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_12
    invoke-direct {p0}, Landroid/service/autofill/augmented/FillWindow;->hide()V

    .line 148
    :cond_15
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 1

    .line 308
    invoke-virtual {p0}, Landroid/service/autofill/augmented/FillWindow;->destroy()V

    .line 309
    return-void
.end method

.method public whitelist destroy()V
    .registers 4

    .line 254
    sget-boolean v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v0, :cond_36

    .line 255
    sget-object v0, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy(): mDestroyed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/autofill/augmented/FillWindow;->mDestroyed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mShowing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/autofill/augmented/FillWindow;->mShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFillView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/augmented/FillWindow;->mFillView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_36
    iget-object v0, p0, Landroid/service/autofill/augmented/FillWindow;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 260
    :try_start_39
    iget-boolean v1, p0, Landroid/service/autofill/augmented/FillWindow;->mDestroyed:Z

    if-eqz v1, :cond_3f

    monitor-exit v0

    return-void

    .line 261
    :cond_3f
    iget-boolean v1, p0, Landroid/service/autofill/augmented/FillWindow;->mUpdateCalled:Z

    if-eqz v1, :cond_52

    .line 262
    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mFillView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    invoke-direct {p0}, Landroid/service/autofill/augmented/FillWindow;->hide()V

    .line 264
    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->logEvent(I)V

    .line 266
    :cond_52
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/service/autofill/augmented/FillWindow;->mDestroyed:Z

    .line 267
    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 268
    monitor-exit v0

    .line 269
    return-void

    .line 268
    :catchall_5c
    move-exception v1

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_39 .. :try_end_5e} :catchall_5c

    throw v1
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    .line 289
    monitor-enter p0

    .line 290
    :try_start_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "destroyed: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/autofill/augmented/FillWindow;->mDestroyed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 291
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "updateCalled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/autofill/augmented/FillWindow;->mUpdateCalled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 292
    iget-object v0, p0, Landroid/service/autofill/augmented/FillWindow;->mFillView:Landroid/view/View;

    if-eqz v0, :cond_5c

    .line 293
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "fill window: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 294
    iget-boolean v0, p0, Landroid/service/autofill/augmented/FillWindow;->mShowing:Z

    if-eqz v0, :cond_30

    const-string/jumbo v0, "shown"

    goto :goto_32

    :cond_30
    const-string v0, "hidden"

    :goto_32
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "fill view: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Landroid/service/autofill/augmented/FillWindow;->mFillView:Landroid/view/View;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 297
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBounds: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Landroid/service/autofill/augmented/FillWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 299
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mWm: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 300
    iget-object p1, p0, Landroid/service/autofill/augmented/FillWindow;->mWm:Landroid/view/WindowManager;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 302
    :cond_5c
    monitor-exit p0

    .line 303
    return-void

    .line 302
    :catchall_5e
    move-exception p1

    monitor-exit p0
    :try_end_60
    .catchall {:try_start_1 .. :try_end_60} :catchall_5e

    throw p1
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 274
    :try_start_0
    iget-object v0, p0, Landroid/service/autofill/augmented/FillWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 275
    invoke-virtual {p0}, Landroid/service/autofill/augmented/FillWindow;->destroy()V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_d

    .line 277
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 278
    nop

    .line 279
    return-void

    .line 277
    :catchall_d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 278
    throw v0
.end method

.method blacklist show()V
    .registers 7

    .line 166
    sget-boolean v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v0, :cond_c

    sget-object v0, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_c
    iget-object v0, p0, Landroid/service/autofill/augmented/FillWindow;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_f
    invoke-direct {p0}, Landroid/service/autofill/augmented/FillWindow;->checkNotDestroyedLocked()V

    .line 169
    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mWm:Landroid/view/WindowManager;

    if-eqz v1, :cond_4c

    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mFillView:Landroid/view/View;

    if-eqz v1, :cond_4c

    .line 172
    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_55

    if-eqz v1, :cond_4a

    .line 174
    :try_start_1e
    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    iget-object v2, p0, Landroid/service/autofill/augmented/FillWindow;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/service/autofill/augmented/FillWindow;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/service/autofill/augmented/FillWindow;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/service/autofill/augmented/FillWindow;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    new-instance v4, Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter;

    invoke-direct {v4, p0}, Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter;-><init>(Landroid/service/autofill/augmented/FillWindow;)V

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->requestShowFillUi(IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_3b} :catch_3c
    .catchall {:try_start_1e .. :try_end_3b} :catchall_55

    .line 179
    goto :goto_44

    .line 177
    :catch_3c
    move-exception v1

    .line 178
    :try_start_3d
    sget-object v2, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    const-string v3, "Error requesting to show fill window"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    :goto_44
    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->logEvent(I)V

    .line 182
    :cond_4a
    monitor-exit v0

    .line 183
    return-void

    .line 170
    :cond_4c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "update() not called yet, or already destroyed()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :catchall_55
    move-exception v1

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_3d .. :try_end_57} :catchall_55

    throw v1
.end method

.method public whitelist update(Landroid/service/autofill/augmented/PresentationParams$Area;Landroid/view/View;J)Z
    .registers 8

    .line 104
    sget-boolean p3, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz p3, :cond_26

    .line 105
    sget-object p3, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Updating "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, " + with "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_26
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object p3, p1, Landroid/service/autofill/augmented/PresentationParams$Area;->proxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object p3, p1, Landroid/service/autofill/augmented/PresentationParams$Area;->proxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    invoke-virtual {p3}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->getSmartSuggestionParams()Landroid/service/autofill/augmented/PresentationParams$SystemPopupPresentationParams;

    move-result-object p3

    .line 115
    const/4 p4, 0x0

    if-nez p3, :cond_42

    .line 116
    sget-object p1, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    const-string p2, "No SmartSuggestionParams"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return p4

    .line 120
    :cond_42
    invoke-virtual {p1}, Landroid/service/autofill/augmented/PresentationParams$Area;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 121
    if-nez v0, :cond_50

    .line 122
    sget-object p1, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    const-string p2, "No Rect on SmartSuggestionParams"

    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return p4

    .line 126
    :cond_50
    iget-object v0, p0, Landroid/service/autofill/augmented/FillWindow;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_53
    invoke-direct {p0}, Landroid/service/autofill/augmented/FillWindow;->checkNotDestroyedLocked()V

    .line 129
    iget-object v1, p1, Landroid/service/autofill/augmented/PresentationParams$Area;->proxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    iput-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    .line 139
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mWm:Landroid/view/WindowManager;

    .line 140
    iput-object p2, p0, Landroid/service/autofill/augmented/FillWindow;->mFillView:Landroid/view/View;

    .line 142
    iget-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mFillView:Landroid/view/View;

    new-instance v2, Landroid/service/autofill/augmented/FillWindow$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/service/autofill/augmented/FillWindow$$ExternalSyntheticLambda0;-><init>(Landroid/service/autofill/augmented/FillWindow;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 151
    iput-boolean p4, p0, Landroid/service/autofill/augmented/FillWindow;->mShowing:Z

    .line 152
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/service/autofill/augmented/PresentationParams$Area;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Landroid/service/autofill/augmented/FillWindow;->mBounds:Landroid/graphics/Rect;

    .line 153
    sget-boolean p1, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz p1, :cond_a7

    .line 154
    sget-object p1, Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created FillWindow: params= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, " view="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_a7
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/service/autofill/augmented/FillWindow;->mUpdateCalled:Z

    .line 157
    iput-boolean p4, p0, Landroid/service/autofill/augmented/FillWindow;->mDestroyed:Z

    .line 158
    iget-object p2, p0, Landroid/service/autofill/augmented/FillWindow;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    invoke-virtual {p2, p0}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->setFillWindow(Landroid/service/autofill/augmented/FillWindow;)V

    .line 159
    monitor-exit v0

    return p1

    .line 160
    :catchall_b3
    move-exception p1

    monitor-exit v0
    :try_end_b5
    .catchall {:try_start_53 .. :try_end_b5} :catchall_b3

    throw p1
.end method
