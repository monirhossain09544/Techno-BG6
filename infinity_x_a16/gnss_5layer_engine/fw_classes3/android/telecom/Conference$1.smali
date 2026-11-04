.class Landroid/telecom/Conference$1;
.super Landroid/telecom/Conference$Listener;
.source "Conference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Conference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/Conference;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/Conference;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 119
    iput-object p1, p0, Landroid/telecom/Conference$1;->this$0:Landroid/telecom/Conference;

    invoke-direct {p0}, Landroid/telecom/Conference$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onDestroyed(Landroid/telecom/Conference;)V
    .registers 3

    .line 122
    iget-object v0, p0, Landroid/telecom/Conference$1;->this$0:Landroid/telecom/Conference;

    invoke-static {v0}, Landroid/telecom/Conference;->-$$Nest$fgetmConferenceables(Landroid/telecom/Conference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 123
    iget-object p1, p0, Landroid/telecom/Conference$1;->this$0:Landroid/telecom/Conference;

    invoke-static {p1}, Landroid/telecom/Conference;->-$$Nest$mfireOnConferenceableConnectionsChanged(Landroid/telecom/Conference;)V

    .line 125
    :cond_11
    return-void
.end method
