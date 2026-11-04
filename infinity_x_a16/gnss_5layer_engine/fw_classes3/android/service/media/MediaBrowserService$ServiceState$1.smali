.class Landroid/service/media/MediaBrowserService$ServiceState$1;
.super Landroid/service/media/MediaBrowserService$Result;
.source "MediaBrowserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/media/MediaBrowserService$ServiceState;->performLoadChildrenOnHandler(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/service/media/MediaBrowserService$Result<",
        "Ljava/util/List<",
        "Landroid/media/browse/MediaBrowser$MediaItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/service/media/MediaBrowserService$ServiceState;

.field final synthetic blacklist val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

.field final synthetic blacklist val$options:Landroid/os/Bundle;

.field final synthetic blacklist val$parentId:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/Object;Landroid/service/media/MediaBrowserService$ConnectionRecord;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010,
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

    .line 857
    iput-object p1, p0, Landroid/service/media/MediaBrowserService$ServiceState$1;->this$1:Landroid/service/media/MediaBrowserService$ServiceState;

    iput-object p3, p0, Landroid/service/media/MediaBrowserService$ServiceState$1;->val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    iput-object p4, p0, Landroid/service/media/MediaBrowserService$ServiceState$1;->val$parentId:Ljava/lang/String;

    iput-object p5, p0, Landroid/service/media/MediaBrowserService$ServiceState$1;->val$options:Landroid/os/Bundle;

    iget-object p1, p1, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-direct {p0, p1, p2}, Landroid/service/media/MediaBrowserService$Result;-><init>(Landroid/service/media/MediaBrowserService;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method bridge synthetic blacklist onResultSent(Ljava/lang/Object;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 857
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Landroid/service/media/MediaBrowserService$ServiceState$1;->onResultSent(Ljava/util/List;I)V

    return-void
.end method

.method blacklist onResultSent(Ljava/util/List;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;I)V"
        }
    .end annotation

    .line 861
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceState$1;->this$1:Landroid/service/media/MediaBrowserService$ServiceState;

    invoke-static {v0}, Landroid/service/media/MediaBrowserService$ServiceState;->-$$Nest$fgetmConnections(Landroid/service/media/MediaBrowserService$ServiceState;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ServiceState$1;->val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    iget-object v1, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v1}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ServiceState$1;->val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    if-eq v0, v1, :cond_17

    .line 871
    return-void

    .line 875
    :cond_17
    const/4 v0, 0x1

    and-int/2addr p2, v0

    if-eqz p2, :cond_22

    .line 876
    iget-object p2, p0, Landroid/service/media/MediaBrowserService$ServiceState$1;->val$options:Landroid/os/Bundle;

    invoke-static {p1, p2}, Landroid/media/browse/MediaBrowserUtils;->applyPagingOptions(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p1

    goto :goto_23

    .line 877
    :cond_22
    nop

    .line 878
    :goto_23
    nop

    .line 879
    if-eqz p1, :cond_2f

    .line 880
    new-instance p2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p2, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 883
    invoke-virtual {p2, v0}, Landroid/content/pm/ParceledListSlice;->setInlineCountLimit(I)V

    goto :goto_30

    .line 879
    :cond_2f
    const/4 p2, 0x0

    .line 886
    :goto_30
    :try_start_30
    iget-object p1, p0, Landroid/service/media/MediaBrowserService$ServiceState$1;->val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    iget-object p1, p1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceState$1;->val$parentId:Ljava/lang/String;

    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ServiceState$1;->val$options:Landroid/os/Bundle;

    invoke-interface {p1, v0, p2, v1}, Landroid/service/media/IMediaBrowserServiceCallbacks;->onLoadChildren(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/os/Bundle;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_3b} :catch_3c

    .line 895
    goto :goto_65

    .line 887
    :catch_3c
    move-exception p1

    .line 889
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Calling onLoadChildren() failed for id="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Landroid/service/media/MediaBrowserService$ServiceState$1;->val$parentId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " package="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Landroid/service/media/MediaBrowserService$ServiceState$1;->val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    iget-object p2, p2, Landroid/service/media/MediaBrowserService$ConnectionRecord;->pkg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaBrowserService"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :goto_65
    return-void
.end method
