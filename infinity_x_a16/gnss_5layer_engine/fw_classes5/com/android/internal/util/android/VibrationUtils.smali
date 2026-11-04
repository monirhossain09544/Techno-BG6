.class public Lcom/android/internal/util/android/VibrationUtils;
.super Ljava/lang/Object;
.source "VibrationUtils.java"


# static fields
.field private static blacklist executor:Ljava/util/concurrent/Executor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreateVibrationEffect(I)Landroid/os/VibrationEffect;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/util/android/VibrationUtils;->createVibrationEffect(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 29
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/android/VibrationUtils;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist createVibrationEffect(I)Landroid/os/VibrationEffect;
    .registers 1

    .line 50
    packed-switch p0, :pswitch_data_24

    .line 62
    const/4 p0, 0x0

    return-object p0

    .line 60
    :pswitch_5
    const/4 p0, 0x5

    invoke-static {p0}, Landroid/os/VibrationEffect;->createPredefined(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 58
    :pswitch_b
    const/4 p0, 0x1

    invoke-static {p0}, Landroid/os/VibrationEffect;->createPredefined(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 56
    :pswitch_11
    const/4 p0, 0x0

    invoke-static {p0}, Landroid/os/VibrationEffect;->createPredefined(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 54
    :pswitch_17
    const/4 p0, 0x2

    invoke-static {p0}, Landroid/os/VibrationEffect;->createPredefined(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 52
    :pswitch_1d
    const/16 p0, 0x15

    invoke-static {p0}, Landroid/os/VibrationEffect;->createPredefined(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_17
        :pswitch_11
        :pswitch_b
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist triggerVibration(Landroid/content/Context;I)V
    .registers 4

    .line 32
    sget-object v0, Lcom/android/internal/util/android/VibrationUtils;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/internal/util/android/VibrationUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/util/android/VibrationUtils$1;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 47
    return-void
.end method
