.class Lcom/android/internal/util/android/VibrationUtils$1;
.super Ljava/lang/Object;
.source "VibrationUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/util/android/VibrationUtils;->triggerVibration(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$context:Landroid/content/Context;

.field final synthetic blacklist val$intensity:I


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/android/internal/util/android/VibrationUtils$1;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/android/internal/util/android/VibrationUtils$1;->val$intensity:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 35
    iget-object v0, p0, Lcom/android/internal/util/android/VibrationUtils$1;->val$context:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 36
    if-eqz v0, :cond_21

    iget v1, p0, Lcom/android/internal/util/android/VibrationUtils$1;->val$intensity:I

    if-nez v1, :cond_11

    goto :goto_21

    .line 39
    :cond_11
    iget v1, p0, Lcom/android/internal/util/android/VibrationUtils$1;->val$intensity:I

    invoke-static {v1}, Lcom/android/internal/util/android/VibrationUtils;->-$$Nest$smcreateVibrationEffect(I)Landroid/os/VibrationEffect;

    move-result-object v1

    .line 40
    if-nez v1, :cond_1a

    .line 41
    return-void

    .line 43
    :cond_1a
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 44
    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 45
    return-void

    .line 37
    :cond_21
    :goto_21
    return-void
.end method
