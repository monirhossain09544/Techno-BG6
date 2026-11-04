.class final Landroid/media/tv/ad/TvAdService$ServiceHandler;
.super Landroid/os/Handler;
.source "TvAdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ad/TvAdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# static fields
.field private static final blacklist DO_CREATE_SESSION:I = 0x1

.field private static final blacklist DO_NOTIFY_SESSION_CREATED:I = 0x2


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/ad/TvAdService;


# direct methods
.method private constructor blacklist <init>(Landroid/media/tv/ad/TvAdService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 937
    iput-object p1, p0, Landroid/media/tv/ad/TvAdService$ServiceHandler;->this$0:Landroid/media/tv/ad/TvAdService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/ad/TvAdService;Landroid/media/tv/ad/TvAdService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/ad/TvAdService$ServiceHandler;-><init>(Landroid/media/tv/ad/TvAdService;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 943
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "error in onSessionCreated"

    const-string v2, "TvAdService"

    packed-switch v0, :pswitch_data_8c

    .line 989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled message code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    return-void

    .line 973
    :pswitch_22
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 974
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/media/tv/ad/TvAdService$Session;

    .line 975
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/media/tv/ad/ITvAdSession;

    .line 976
    iget-object v4, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Landroid/media/tv/ad/ITvAdSessionCallback;

    .line 978
    :try_start_32
    invoke-interface {v4, v3}, Landroid/media/tv/ad/ITvAdSessionCallback;->onSessionCreated(Landroid/media/tv/ad/ITvAdSession;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_35} :catch_36

    .line 981
    goto :goto_3a

    .line 979
    :catch_36
    move-exception v3

    .line 980
    invoke-static {v2, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 982
    :goto_3a
    if-eqz v0, :cond_3f

    .line 983
    invoke-static {v0, v4}, Landroid/media/tv/ad/TvAdService$Session;->-$$Nest$minitialize(Landroid/media/tv/ad/TvAdService$Session;Landroid/media/tv/ad/ITvAdSessionCallback;)V

    .line 985
    :cond_3f
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 986
    return-void

    .line 945
    :pswitch_43
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 946
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/view/InputChannel;

    .line 947
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/media/tv/ad/ITvAdSessionCallback;

    .line 948
    iget-object v4, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 949
    iget-object v5, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 950
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 951
    iget-object p1, p0, Landroid/media/tv/ad/TvAdService$ServiceHandler;->this$0:Landroid/media/tv/ad/TvAdService;

    invoke-virtual {p1, v4, v5}, Landroid/media/tv/ad/TvAdService;->onCreateSession(Ljava/lang/String;Ljava/lang/String;)Landroid/media/tv/ad/TvAdService$Session;

    move-result-object p1

    .line 952
    if-nez p1, :cond_6c

    .line 955
    const/4 p1, 0x0

    :try_start_63
    invoke-interface {v3, p1}, Landroid/media/tv/ad/ITvAdSessionCallback;->onSessionCreated(Landroid/media/tv/ad/ITvAdSession;)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_66} :catch_67

    .line 958
    goto :goto_6b

    .line 956
    :catch_67
    move-exception p1

    .line 957
    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 959
    :goto_6b
    return-void

    .line 961
    :cond_6c
    new-instance v1, Landroid/media/tv/ad/ITvAdSessionWrapper;

    iget-object v2, p0, Landroid/media/tv/ad/TvAdService$ServiceHandler;->this$0:Landroid/media/tv/ad/TvAdService;

    invoke-direct {v1, v2, p1, v0}, Landroid/media/tv/ad/ITvAdSessionWrapper;-><init>(Landroid/content/Context;Landroid/media/tv/ad/TvAdService$Session;Landroid/view/InputChannel;)V

    .line 964
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 965
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 966
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 967
    iput-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 968
    iget-object p1, p0, Landroid/media/tv/ad/TvAdService$ServiceHandler;->this$0:Landroid/media/tv/ad/TvAdService;

    invoke-static {p1}, Landroid/media/tv/ad/TvAdService;->-$$Nest$fgetmServiceHandler(Landroid/media/tv/ad/TvAdService;)Landroid/os/Handler;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 969
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 970
    return-void

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_43
        :pswitch_22
    .end packed-switch
.end method
