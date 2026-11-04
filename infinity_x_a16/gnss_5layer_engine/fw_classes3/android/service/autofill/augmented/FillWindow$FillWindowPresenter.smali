.class final Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter;
.super Landroid/view/autofill/IAutofillWindowPresenter$Stub;
.source "FillWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/augmented/FillWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FillWindowPresenter"
.end annotation


# instance fields
.field private final blacklist mFillWindowReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/service/autofill/augmented/FillWindow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$2ieZLQw_gMWXT1Fl2PT-ExsSnyM(Landroid/service/autofill/augmented/FillWindow;Landroid/view/WindowManager$LayoutParams;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/service/autofill/augmented/FillWindow;->-$$Nest$mhandleShow(Landroid/service/autofill/augmented/FillWindow;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$EP0TJB12UyFcxqoPIhEwKs2T_eA(Landroid/service/autofill/augmented/FillWindow;)V
    .registers 1

    invoke-static {p0}, Landroid/service/autofill/augmented/FillWindow;->-$$Nest$mhandleHide(Landroid/service/autofill/augmented/FillWindow;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/service/autofill/augmented/FillWindow;)V
    .registers 3

    .line 314
    invoke-direct {p0}, Landroid/view/autofill/IAutofillWindowPresenter$Stub;-><init>()V

    .line 315
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter;->mFillWindowReference:Ljava/lang/ref/WeakReference;

    .line 316
    return-void
.end method


# virtual methods
.method public blacklist hide(Landroid/graphics/Rect;)V
    .registers 4

    .line 331
    sget-boolean p1, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz p1, :cond_d

    invoke-static {}, Landroid/service/autofill/augmented/FillWindow;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FillWindowPresenter.hide()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_d
    iget-object p1, p0, Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter;->mFillWindowReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/autofill/augmented/FillWindow;

    .line 333
    if-eqz p1, :cond_27

    .line 334
    invoke-static {p1}, Landroid/service/autofill/augmented/FillWindow;->-$$Nest$fgetmUiThreadHandler(Landroid/service/autofill/augmented/FillWindow;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter$$ExternalSyntheticLambda1;-><init>()V

    .line 335
    invoke-static {v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 334
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 337
    :cond_27
    return-void
.end method

.method public blacklist show(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)V
    .registers 5

    .line 321
    sget-boolean p2, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz p2, :cond_d

    invoke-static {}, Landroid/service/autofill/augmented/FillWindow;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    const-string p3, "FillWindowPresenter.show()"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_d
    iget-object p2, p0, Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter;->mFillWindowReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/service/autofill/augmented/FillWindow;

    .line 323
    if-eqz p2, :cond_27

    .line 324
    invoke-static {p2}, Landroid/service/autofill/augmented/FillWindow;->-$$Nest$fgetmUiThreadHandler(Landroid/service/autofill/augmented/FillWindow;)Landroid/os/Handler;

    move-result-object p3

    new-instance p4, Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter$$ExternalSyntheticLambda0;

    invoke-direct {p4}, Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter$$ExternalSyntheticLambda0;-><init>()V

    .line 325
    invoke-static {p4, p2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 324
    invoke-virtual {p3, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 327
    :cond_27
    return-void
.end method
