.class Lcom/android/internal/util/infinity/Utils$SleepModeController$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/util/infinity/Utils$SleepModeController;->disable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/util/infinity/Utils$SleepModeController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/util/infinity/Utils$SleepModeController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 421
    iput-object p1, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController$1;->this$0:Lcom/android/internal/util/infinity/Utils$SleepModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 424
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController$1;->this$0:Lcom/android/internal/util/infinity/Utils$SleepModeController;

    invoke-static {v0}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->-$$Nest$misSensorEnabled(Lcom/android/internal/util/infinity/Utils$SleepModeController;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 425
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController$1;->this$0:Lcom/android/internal/util/infinity/Utils$SleepModeController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->-$$Nest$msetSensorEnabled(Lcom/android/internal/util/infinity/Utils$SleepModeController;Z)V

    .line 427
    :cond_e
    return-void
.end method
