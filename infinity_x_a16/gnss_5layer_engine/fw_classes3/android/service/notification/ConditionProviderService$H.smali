.class final Landroid/service/notification/ConditionProviderService$H;
.super Landroid/os/Handler;
.source "ConditionProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ConditionProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final greylist-max-o ON_CONNECTED:I = 0x1

.field private static final greylist-max-o ON_SUBSCRIBE:I = 0x3

.field private static final greylist-max-o ON_UNSUBSCRIBE:I = 0x4


# instance fields
.field final synthetic blacklist this$0:Landroid/service/notification/ConditionProviderService;


# direct methods
.method private constructor blacklist <init>(Landroid/service/notification/ConditionProviderService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 261
    iput-object p1, p0, Landroid/service/notification/ConditionProviderService$H;->this$0:Landroid/service/notification/ConditionProviderService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/notification/ConditionProviderService;Landroid/service/notification/ConditionProviderService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/notification/ConditionProviderService$H;-><init>(Landroid/service/notification/ConditionProviderService;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 268
    nop

    .line 269
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService$H;->this$0:Landroid/service/notification/ConditionProviderService;

    iget-boolean v0, v0, Landroid/service/notification/ConditionProviderService;->mIsConnected:Z

    if-nez v0, :cond_8

    .line 270
    return-void

    .line 273
    :cond_8
    const/4 v0, 0x0

    :try_start_9
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_52

    :pswitch_e
    goto :goto_32

    .line 283
    :pswitch_f
    const-string/jumbo v0, "onUnsubscribe"

    .line 284
    iget-object v1, p0, Landroid/service/notification/ConditionProviderService$H;->this$0:Landroid/service/notification/ConditionProviderService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/service/notification/ConditionProviderService;->onUnsubscribe(Landroid/net/Uri;)V

    goto :goto_32

    .line 279
    :pswitch_1c
    const-string/jumbo v0, "onSubscribe"

    .line 280
    iget-object v1, p0, Landroid/service/notification/ConditionProviderService$H;->this$0:Landroid/service/notification/ConditionProviderService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/service/notification/ConditionProviderService;->onSubscribe(Landroid/net/Uri;)V

    .line 281
    goto :goto_32

    .line 275
    :pswitch_29
    const-string/jumbo v0, "onConnected"

    .line 276
    iget-object p1, p0, Landroid/service/notification/ConditionProviderService$H;->this$0:Landroid/service/notification/ConditionProviderService;

    invoke-virtual {p1}, Landroid/service/notification/ConditionProviderService;->onConnected()V
    :try_end_31
    .catchall {:try_start_9 .. :try_end_31} :catchall_33

    .line 277
    nop

    .line 289
    :goto_32
    goto :goto_50

    .line 287
    :catchall_33
    move-exception p1

    .line 288
    iget-object v1, p0, Landroid/service/notification/ConditionProviderService$H;->this$0:Landroid/service/notification/ConditionProviderService;

    invoke-static {v1}, Landroid/service/notification/ConditionProviderService;->-$$Nest$fgetTAG(Landroid/service/notification/ConditionProviderService;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error running "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    :goto_50
    return-void

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_29
        :pswitch_e
        :pswitch_1c
        :pswitch_f
    .end packed-switch
.end method
