.class Landroid/telecom/Conference$2;
.super Landroid/telecom/Connection$Listener;
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

    .line 128
    iput-object p1, p0, Landroid/telecom/Conference$2;->this$0:Landroid/telecom/Conference;

    invoke-direct {p0}, Landroid/telecom/Connection$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onDestroyed(Landroid/telecom/Connection;)V
    .registers 3

    .line 131
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/Flags;->multiPartyAnchorConf()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 132
    iget-object v0, p0, Landroid/telecom/Conference$2;->this$0:Landroid/telecom/Conference;

    invoke-static {v0}, Landroid/telecom/Conference;->-$$Nest$fgetmConferenceables(Landroid/telecom/Conference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 133
    iget-object p1, p0, Landroid/telecom/Conference$2;->this$0:Landroid/telecom/Conference;

    invoke-static {p1}, Landroid/telecom/Conference;->-$$Nest$mfireOnConferenceableConnectionsChanged(Landroid/telecom/Conference;)V

    goto :goto_29

    .line 136
    :cond_18
    iget-object v0, p0, Landroid/telecom/Conference$2;->this$0:Landroid/telecom/Conference;

    invoke-static {v0}, Landroid/telecom/Conference;->-$$Nest$fgetmConferenceableConnections(Landroid/telecom/Conference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 137
    iget-object p1, p0, Landroid/telecom/Conference$2;->this$0:Landroid/telecom/Conference;

    invoke-static {p1}, Landroid/telecom/Conference;->-$$Nest$mfireOnConferenceableConnectionsChanged(Landroid/telecom/Conference;)V

    .line 140
    :cond_29
    :goto_29
    return-void
.end method
