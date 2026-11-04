.class Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;
.super Landroid/service/chooser/IChooserTargetService$Stub;
.source "ChooserTargetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/chooser/ChooserTargetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IChooserTargetServiceWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/chooser/ChooserTargetService;


# direct methods
.method private constructor blacklist <init>(Landroid/service/chooser/ChooserTargetService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 143
    iput-object p1, p0, Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;->this$0:Landroid/service/chooser/ChooserTargetService;

    invoke-direct {p0}, Landroid/service/chooser/IChooserTargetService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/chooser/ChooserTargetService;Landroid/service/chooser/ChooserTargetService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;-><init>(Landroid/service/chooser/ChooserTargetService;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o getChooserTargets(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/service/chooser/IChooserTargetResult;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    nop

    .line 148
    invoke-static {}, Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;->clearCallingIdentity()J

    move-result-wide v0

    .line 154
    :try_start_5
    iget-object v2, p0, Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;->this$0:Landroid/service/chooser/ChooserTargetService;

    invoke-virtual {v2, p1, p2}, Landroid/service/chooser/ChooserTargetService;->onGetChooserTargets(Landroid/content/ComponentName;Landroid/content/IntentFilter;)Ljava/util/List;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_13

    .line 156
    invoke-static {v0, v1}, Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;->restoreCallingIdentity(J)V

    .line 157
    invoke-interface {p3, p1}, Landroid/service/chooser/IChooserTargetResult;->sendResult(Ljava/util/List;)V

    .line 159
    nop

    .line 160
    return-void

    .line 156
    :catchall_13
    move-exception p1

    invoke-static {v0, v1}, Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;->restoreCallingIdentity(J)V

    .line 157
    const/4 p2, 0x0

    invoke-interface {p3, p2}, Landroid/service/chooser/IChooserTargetResult;->sendResult(Ljava/util/List;)V

    .line 159
    throw p1
.end method
