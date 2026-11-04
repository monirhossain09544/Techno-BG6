.class Landroid/telecom/RemoteConnectionService$1$1;
.super Landroid/telecom/RemoteConference$Callback;
.source "RemoteConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/RemoteConnectionService$1;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;Landroid/telecom/Logging/Session$Info;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/telecom/RemoteConnectionService$1;

.field final synthetic blacklist val$callId:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/RemoteConnectionService$1;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 269
    iput-object p1, p0, Landroid/telecom/RemoteConnectionService$1$1;->this$1:Landroid/telecom/RemoteConnectionService$1;

    iput-object p2, p0, Landroid/telecom/RemoteConnectionService$1$1;->val$callId:Ljava/lang/String;

    invoke-direct {p0}, Landroid/telecom/RemoteConference$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDestroyed(Landroid/telecom/RemoteConference;)V
    .registers 3

    .line 272
    iget-object p1, p0, Landroid/telecom/RemoteConnectionService$1$1;->this$1:Landroid/telecom/RemoteConnectionService$1;

    iget-object p1, p1, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConferenceById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1$1;->val$callId:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object p1, p0, Landroid/telecom/RemoteConnectionService$1$1;->this$1:Landroid/telecom/RemoteConnectionService$1;

    iget-object p1, p1, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mmaybeDisconnectAdapter(Landroid/telecom/RemoteConnectionService;)V

    .line 274
    return-void
.end method
