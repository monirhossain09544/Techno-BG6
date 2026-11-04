.class Landroid/telecom/ConnectionService$5$1;
.super Landroid/telecom/Logging/Runnable;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/ConnectionService$5;->onResult(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/telecom/ConnectionService$5;

.field final synthetic blacklist val$componentNames:Ljava/util/List;

.field final synthetic blacklist val$services:Ljava/util/List;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/ConnectionService$5;Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 2950
    iput-object p1, p0, Landroid/telecom/ConnectionService$5$1;->this$1:Landroid/telecom/ConnectionService$5;

    iput-object p4, p0, Landroid/telecom/ConnectionService$5$1;->val$componentNames:Ljava/util/List;

    iput-object p5, p0, Landroid/telecom/ConnectionService$5$1;->val$services:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Landroid/telecom/Logging/Runnable;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist loggedRun()V
    .registers 6

    .line 2953
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Landroid/telecom/ConnectionService$5$1;->val$componentNames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_34

    iget-object v2, p0, Landroid/telecom/ConnectionService$5$1;->val$services:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_34

    .line 2954
    iget-object v2, p0, Landroid/telecom/ConnectionService$5$1;->this$1:Landroid/telecom/ConnectionService$5;

    iget-object v2, v2, Landroid/telecom/ConnectionService$5;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmRemoteConnectionManager(Landroid/telecom/ConnectionService;)Landroid/telecom/RemoteConnectionManager;

    move-result-object v2

    iget-object v3, p0, Landroid/telecom/ConnectionService$5$1;->val$componentNames:Ljava/util/List;

    .line 2955
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    iget-object v4, p0, Landroid/telecom/ConnectionService$5$1;->val$services:Ljava/util/List;

    .line 2956
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v4}, Lcom/android/internal/telecom/IConnectionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionService;

    move-result-object v4

    .line 2954
    invoke-virtual {v2, v3, v4}, Landroid/telecom/RemoteConnectionManager;->addConnectionService(Landroid/content/ComponentName;Lcom/android/internal/telecom/IConnectionService;)V

    .line 2953
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2958
    :cond_34
    iget-object v1, p0, Landroid/telecom/ConnectionService$5$1;->this$1:Landroid/telecom/ConnectionService$5;

    iget-object v1, v1, Landroid/telecom/ConnectionService$5;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-$$Nest$monAccountsInitialized(Landroid/telecom/ConnectionService;)V

    .line 2959
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remote connection services found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/ConnectionService$5$1;->val$services:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2960
    return-void
.end method
