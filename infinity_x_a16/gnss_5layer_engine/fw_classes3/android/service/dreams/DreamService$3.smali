.class Landroid/service/dreams/DreamService$3;
.super Ljava/lang/Object;
.source "DreamService.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/dreams/DreamService;->onWindowCreated(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist mDreamStartOverlayConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/service/dreams/IDreamOverlayClient;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/service/dreams/DreamService;


# direct methods
.method public static synthetic blacklist $r8$lambda$aWnQRS1r6epxQL-DFuLKoOxx_tg(Landroid/service/dreams/DreamService$3;Landroid/service/dreams/IDreamOverlayClient;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamService$3;->lambda$onViewAttachedToWindow$0(Landroid/service/dreams/IDreamOverlayClient;)V

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

    .line 1696
    iput-object p1, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onViewAttachedToWindow$0(Landroid/service/dreams/IDreamOverlayClient;)V
    .registers 9

    .line 1707
    iget-object v0, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmWindow(Landroid/service/dreams/DreamService;)Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_12

    .line 1708
    invoke-static {}, Landroid/service/dreams/DreamService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mWindow is null"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    return-void

    .line 1712
    :cond_12
    :try_start_12
    iget-object v0, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmWindow(Landroid/service/dreams/DreamService;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v0, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmOverlayCallback(Landroid/service/dreams/DreamService;)Landroid/service/dreams/IDreamOverlayCallback;

    move-result-object v3

    iget-object v0, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmDreamComponent(Landroid/service/dreams/DreamService;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1713
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmPreviewMode(Landroid/service/dreams/DreamService;)Z

    move-result v5

    iget-object v0, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmShouldShowComplications(Landroid/service/dreams/DreamService;)Z

    move-result v6

    .line 1712
    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Landroid/service/dreams/IDreamOverlayClient;->startDream(Landroid/view/WindowManager$LayoutParams;Landroid/service/dreams/IDreamOverlayCallback;Ljava/lang/String;ZZ)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_3c} :catch_3d

    .line 1718
    goto :goto_5b

    .line 1716
    :catch_3d
    move-exception v0

    move-object p1, v0

    .line 1717
    iget-object v0, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmTag(Landroid/service/dreams/DreamService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not send window attributes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    :goto_5b
    return-void
.end method


# virtual methods
.method public whitelist onViewAttachedToWindow(Landroid/view/View;)V
    .registers 3

    .line 1701
    iget-object p1, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {p1}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmDispatchAfterOnAttachedToWindow(Landroid/service/dreams/DreamService;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1703
    iget-object p1, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {p1}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmOverlayConnection(Landroid/service/dreams/DreamService;)Landroid/service/dreams/DreamOverlayConnectionHandler;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 1706
    new-instance p1, Landroid/service/dreams/DreamService$3$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroid/service/dreams/DreamService$3$$ExternalSyntheticLambda0;-><init>(Landroid/service/dreams/DreamService$3;)V

    iput-object p1, p0, Landroid/service/dreams/DreamService$3;->mDreamStartOverlayConsumer:Ljava/util/function/Consumer;

    .line 1720
    iget-object p1, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {p1}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmOverlayConnection(Landroid/service/dreams/DreamService;)Landroid/service/dreams/DreamOverlayConnectionHandler;

    move-result-object p1

    iget-object v0, p0, Landroid/service/dreams/DreamService$3;->mDreamStartOverlayConsumer:Ljava/util/function/Consumer;

    invoke-virtual {p1, v0}, Landroid/service/dreams/DreamOverlayConnectionHandler;->addConsumer(Ljava/util/function/Consumer;)V

    .line 1722
    :cond_23
    return-void
.end method

.method public whitelist onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    .line 1726
    iget-object p1, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {p1}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmActivity(Landroid/service/dreams/DreamService;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {p1}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmActivity(Landroid/service/dreams/DreamService;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p1

    if-nez p1, :cond_24

    .line 1730
    :cond_14
    iget-object p1, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/service/dreams/DreamService;->-$$Nest$fputmWindow(Landroid/service/dreams/DreamService;Landroid/view/Window;)V

    .line 1731
    iget-object p1, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {p1, v0}, Landroid/service/dreams/DreamService;->-$$Nest$fputmActivity(Landroid/service/dreams/DreamService;Landroid/app/Activity;)V

    .line 1732
    iget-object p1, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-virtual {p1}, Landroid/service/dreams/DreamService;->finish()V

    .line 1735
    :cond_24
    iget-object p1, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {p1}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmOverlayConnection(Landroid/service/dreams/DreamService;)Landroid/service/dreams/DreamOverlayConnectionHandler;

    move-result-object p1

    if-eqz p1, :cond_3b

    iget-object p1, p0, Landroid/service/dreams/DreamService$3;->mDreamStartOverlayConsumer:Ljava/util/function/Consumer;

    if-eqz p1, :cond_3b

    .line 1736
    iget-object p1, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {p1}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmOverlayConnection(Landroid/service/dreams/DreamService;)Landroid/service/dreams/DreamOverlayConnectionHandler;

    move-result-object p1

    iget-object v0, p0, Landroid/service/dreams/DreamService$3;->mDreamStartOverlayConsumer:Ljava/util/function/Consumer;

    invoke-virtual {p1, v0}, Landroid/service/dreams/DreamOverlayConnectionHandler;->removeConsumer(Ljava/util/function/Consumer;)V

    .line 1738
    :cond_3b
    return-void
.end method
