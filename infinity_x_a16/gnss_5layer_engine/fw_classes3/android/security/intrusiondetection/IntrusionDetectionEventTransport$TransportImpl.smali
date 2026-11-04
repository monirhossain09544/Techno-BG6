.class Landroid/security/intrusiondetection/IntrusionDetectionEventTransport$TransportImpl;
.super Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport$Stub;
.source "IntrusionDetectionEventTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/intrusiondetection/IntrusionDetectionEventTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TransportImpl"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/security/intrusiondetection/IntrusionDetectionEventTransport;


# direct methods
.method constructor blacklist <init>(Landroid/security/intrusiondetection/IntrusionDetectionEventTransport;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 113
    iput-object p1, p0, Landroid/security/intrusiondetection/IntrusionDetectionEventTransport$TransportImpl;->this$0:Landroid/security/intrusiondetection/IntrusionDetectionEventTransport;

    invoke-direct {p0}, Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addData(Ljava/util/List;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/security/intrusiondetection/IntrusionDetectionEvent;",
            ">;",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 129
    :try_start_0
    iget-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEventTransport$TransportImpl;->this$0:Landroid/security/intrusiondetection/IntrusionDetectionEventTransport;

    invoke-virtual {v0, p1}, Landroid/security/intrusiondetection/IntrusionDetectionEventTransport;->addData(Ljava/util/List;)Z

    move-result p1

    .line 130
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_d} :catch_e

    .line 133
    goto :goto_13

    .line 131
    :catch_e
    move-exception p1

    .line 132
    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 134
    :goto_13
    return-void
.end method

.method public blacklist initialize(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 117
    :try_start_0
    iget-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEventTransport$TransportImpl;->this$0:Landroid/security/intrusiondetection/IntrusionDetectionEventTransport;

    invoke-virtual {v0}, Landroid/security/intrusiondetection/IntrusionDetectionEventTransport;->initialize()Z

    move-result v0

    .line 118
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_d} :catch_e

    .line 121
    goto :goto_13

    .line 119
    :catch_e
    move-exception v0

    .line 120
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 122
    :goto_13
    return-void
.end method

.method public blacklist release(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 139
    :try_start_0
    iget-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEventTransport$TransportImpl;->this$0:Landroid/security/intrusiondetection/IntrusionDetectionEventTransport;

    invoke-virtual {v0}, Landroid/security/intrusiondetection/IntrusionDetectionEventTransport;->release()Z

    move-result v0

    .line 140
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_d} :catch_e

    .line 143
    goto :goto_13

    .line 141
    :catch_e
    move-exception v0

    .line 142
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 144
    :goto_13
    return-void
.end method
