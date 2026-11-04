.class Landroid/telecom/Connection$1;
.super Landroid/telecom/Connection$Listener;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/Connection;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/Connection;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2171
    iput-object p1, p0, Landroid/telecom/Connection$1;->this$0:Landroid/telecom/Connection;

    invoke-direct {p0}, Landroid/telecom/Connection$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onDestroyed(Landroid/telecom/Connection;)V
    .registers 3

    .line 2174
    iget-object v0, p0, Landroid/telecom/Connection$1;->this$0:Landroid/telecom/Connection;

    invoke-static {v0}, Landroid/telecom/Connection;->-$$Nest$fgetmConferenceables(Landroid/telecom/Connection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 2175
    iget-object p1, p0, Landroid/telecom/Connection$1;->this$0:Landroid/telecom/Connection;

    invoke-static {p1}, Landroid/telecom/Connection;->-$$Nest$mfireOnConferenceableConnectionsChanged(Landroid/telecom/Connection;)V

    .line 2177
    :cond_11
    return-void
.end method
