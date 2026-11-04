.class Landroid/os/PowerManager$5;
.super Landroid/os/IThermalHeadroomListener$Stub;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/PowerManager;->addThermalHeadroomListener(Ljava/util/concurrent/Executor;Landroid/os/PowerManager$OnThermalHeadroomChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/PowerManager;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Landroid/os/PowerManager$OnThermalHeadroomChangedListener;


# direct methods
.method constructor blacklist <init>(Landroid/os/PowerManager;Ljava/util/concurrent/Executor;Landroid/os/PowerManager$OnThermalHeadroomChangedListener;)V
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

    .line 3272
    iput-object p1, p0, Landroid/os/PowerManager$5;->this$0:Landroid/os/PowerManager;

    iput-object p2, p0, Landroid/os/PowerManager$5;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/os/PowerManager$5;->val$listener:Landroid/os/PowerManager$OnThermalHeadroomChangedListener;

    invoke-direct {p0}, Landroid/os/IThermalHeadroomListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onHeadroomChange$0(Landroid/os/PowerManager$OnThermalHeadroomChangedListener;FFILjava/util/Map;)V
    .registers 5

    .line 3280
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/PowerManager$OnThermalHeadroomChangedListener;->onThermalHeadroomChanged(FFILjava/util/Map;)V

    return-void
.end method


# virtual methods
.method public blacklist onHeadroomChange(FFI[F)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3277
    iget-object v0, p0, Landroid/os/PowerManager$5;->this$0:Landroid/os/PowerManager;

    invoke-static {v0, p4}, Landroid/os/PowerManager;->-$$Nest$mconvertThresholdsToMap(Landroid/os/PowerManager;[F)Ljava/util/Map;

    move-result-object v6

    .line 3278
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 3280
    :try_start_a
    iget-object p4, p0, Landroid/os/PowerManager$5;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/os/PowerManager$5;->val$listener:Landroid/os/PowerManager$OnThermalHeadroomChangedListener;

    new-instance v1, Landroid/os/PowerManager$5$$ExternalSyntheticLambda0;

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/os/PowerManager$5$$ExternalSyntheticLambda0;-><init>(Landroid/os/PowerManager$OnThermalHeadroomChangedListener;FFILjava/util/Map;)V

    invoke-interface {p4, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_1e

    .line 3283
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3284
    nop

    .line 3285
    return-void

    .line 3283
    :catchall_1e
    move-exception v0

    move-object p1, v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3284
    throw p1
.end method
