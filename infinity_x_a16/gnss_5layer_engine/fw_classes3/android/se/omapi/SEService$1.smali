.class Landroid/se/omapi/SEService$1;
.super Ljava/lang/Object;
.source "SEService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/se/omapi/SEService;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/se/omapi/SEService$OnConnectedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/se/omapi/SEService;


# direct methods
.method constructor blacklist <init>(Landroid/se/omapi/SEService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 196
    iput-object p1, p0, Landroid/se/omapi/SEService$1;->this$0:Landroid/se/omapi/SEService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    monitor-enter p0

    .line 201
    :try_start_1
    iget-object p1, p0, Landroid/se/omapi/SEService$1;->this$0:Landroid/se/omapi/SEService;

    invoke-static {p2}, Landroid/se/omapi/ISecureElementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/se/omapi/ISecureElementService;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/se/omapi/SEService;->-$$Nest$fputmSecureElementService(Landroid/se/omapi/SEService;Landroid/se/omapi/ISecureElementService;)V

    .line 202
    iget-object p1, p0, Landroid/se/omapi/SEService$1;->this$0:Landroid/se/omapi/SEService;

    invoke-static {p1}, Landroid/se/omapi/SEService;->-$$Nest$fgetmSEListener(Landroid/se/omapi/SEService;)Landroid/se/omapi/SEService$SEListener;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 203
    iget-object p1, p0, Landroid/se/omapi/SEService$1;->this$0:Landroid/se/omapi/SEService;

    invoke-static {p1}, Landroid/se/omapi/SEService;->-$$Nest$fgetmSEListener(Landroid/se/omapi/SEService;)Landroid/se/omapi/SEService$SEListener;

    move-result-object p1

    invoke-virtual {p1}, Landroid/se/omapi/SEService$SEListener;->onConnected()V

    .line 205
    :cond_1b
    const-string p1, "OMAPI.SEService"

    const-string p2, "Service onServiceConnected"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 206
    monitor-exit p0

    return-void

    .line 200
    :catchall_24
    move-exception p1

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p1
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 209
    iget-object p1, p0, Landroid/se/omapi/SEService$1;->this$0:Landroid/se/omapi/SEService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/se/omapi/SEService;->-$$Nest$fputmSecureElementService(Landroid/se/omapi/SEService;Landroid/se/omapi/ISecureElementService;)V

    .line 210
    const-string p1, "OMAPI.SEService"

    const-string v0, "Service onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void
.end method
