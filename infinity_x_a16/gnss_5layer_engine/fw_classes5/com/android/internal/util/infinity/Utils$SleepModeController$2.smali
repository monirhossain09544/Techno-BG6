.class Lcom/android/internal/util/infinity/Utils$SleepModeController$2;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/util/infinity/Utils$SleepModeController;->showToast(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/util/infinity/Utils$SleepModeController;

.field final synthetic blacklist val$duration:I

.field final synthetic blacklist val$msg:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/util/infinity/Utils$SleepModeController;Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 465
    iput-object p1, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController$2;->this$0:Lcom/android/internal/util/infinity/Utils$SleepModeController;

    iput-object p2, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController$2;->val$msg:Ljava/lang/String;

    iput p3, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController$2;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 469
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController$2;->this$0:Lcom/android/internal/util/infinity/Utils$SleepModeController;

    invoke-static {v0}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->-$$Nest$fgetmToast(Lcom/android/internal/util/infinity/Utils$SleepModeController;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController$2;->this$0:Lcom/android/internal/util/infinity/Utils$SleepModeController;

    invoke-static {v0}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->-$$Nest$fgetmToast(Lcom/android/internal/util/infinity/Utils$SleepModeController;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 470
    :cond_11
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController$2;->this$0:Lcom/android/internal/util/infinity/Utils$SleepModeController;

    iget-object v1, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController$2;->this$0:Lcom/android/internal/util/infinity/Utils$SleepModeController;

    invoke-static {v1}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->-$$Nest$fgetmUiContext(Lcom/android/internal/util/infinity/Utils$SleepModeController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController$2;->val$msg:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController$2;->val$duration:I

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->-$$Nest$fputmToast(Lcom/android/internal/util/infinity/Utils$SleepModeController;Landroid/widget/Toast;)V

    .line 471
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController$2;->this$0:Lcom/android/internal/util/infinity/Utils$SleepModeController;

    invoke-static {v0}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->-$$Nest$fgetmToast(Lcom/android/internal/util/infinity/Utils$SleepModeController;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    .line 473
    goto :goto_2f

    .line 472
    :catch_2e
    move-exception v0

    .line 474
    :goto_2f
    return-void
.end method
