.class Landroid/service/dreams/DreamService$2;
.super Landroid/service/dreams/IDreamOverlayCallback$Stub;
.source "DreamService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/dreams/DreamService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/dreams/DreamService;


# direct methods
.method public static synthetic blacklist $r8$lambda$nzQBFl9MaG0AFcrDeJVEwGouvWE(Landroid/service/dreams/DreamService$2;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/dreams/DreamService$2;->lambda$onExitRequested$0()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/service/dreams/DreamService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1186
    iput-object p1, p0, Landroid/service/dreams/DreamService$2;->this$0:Landroid/service/dreams/DreamService;

    invoke-direct {p0}, Landroid/service/dreams/IDreamOverlayCallback$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onExitRequested$0()V
    .registers 2

    .line 1192
    iget-object v0, p0, Landroid/service/dreams/DreamService$2;->this$0:Landroid/service/dreams/DreamService;

    invoke-virtual {v0}, Landroid/service/dreams/DreamService;->finish()V

    return-void
.end method


# virtual methods
.method public blacklist onExitRequested()V
    .registers 5

    .line 1189
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1192
    :try_start_4
    iget-object v2, p0, Landroid/service/dreams/DreamService$2;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v2}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmHandler(Landroid/service/dreams/DreamService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Landroid/service/dreams/DreamService$2$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroid/service/dreams/DreamService$2$$ExternalSyntheticLambda0;-><init>(Landroid/service/dreams/DreamService$2;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_17

    .line 1194
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1195
    nop

    .line 1196
    return-void

    .line 1194
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1195
    throw v2
.end method

.method public blacklist onRedirectWake(Z)V
    .registers 5

    .line 1200
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1202
    :try_start_4
    iget-object v2, p0, Landroid/service/dreams/DreamService$2;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v2, p1}, Landroid/service/dreams/DreamService;->-$$Nest$fputmRedirectWake(Landroid/service/dreams/DreamService;Z)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 1204
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1205
    nop

    .line 1206
    return-void

    .line 1204
    :catchall_e
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1205
    throw p1
.end method
