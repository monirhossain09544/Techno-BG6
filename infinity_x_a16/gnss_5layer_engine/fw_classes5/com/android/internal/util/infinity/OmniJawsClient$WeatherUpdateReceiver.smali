.class Lcom/android/internal/util/infinity/OmniJawsClient$WeatherUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OmniJawsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/infinity/OmniJawsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeatherUpdateReceiver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/util/infinity/OmniJawsClient;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/util/infinity/OmniJawsClient;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherUpdateReceiver;->this$0:Lcom/android/internal/util/infinity/OmniJawsClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/util/infinity/OmniJawsClient;Lcom/android/internal/util/infinity/OmniJawsClient-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherUpdateReceiver;-><init>(Lcom/android/internal/util/infinity/OmniJawsClient;)V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 113
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 114
    iget-object v0, p0, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherUpdateReceiver;->this$0:Lcom/android/internal/util/infinity/OmniJawsClient;

    invoke-static {v0}, Lcom/android/internal/util/infinity/OmniJawsClient;->-$$Nest$mpruneDeadObservers(Lcom/android/internal/util/infinity/OmniJawsClient;)V

    .line 115
    iget-object v0, p0, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherUpdateReceiver;->this$0:Lcom/android/internal/util/infinity/OmniJawsClient;

    invoke-static {v0}, Lcom/android/internal/util/infinity/OmniJawsClient;->-$$Nest$fgetmObservers(Lcom/android/internal/util/infinity/OmniJawsClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 116
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/infinity/OmniJawsClient$OmniJawsObserver;

    .line 117
    if-nez v1, :cond_28

    goto :goto_13

    .line 118
    :cond_28
    const-string v2, "org.omnirom.omnijaws.WEATHER_UPDATE"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 119
    invoke-interface {v1}, Lcom/android/internal/util/infinity/OmniJawsClient$OmniJawsObserver;->weatherUpdated()V

    goto :goto_46

    .line 120
    :cond_34
    const-string v2, "org.omnirom.omnijaws.WEATHER_ERROR"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 121
    const-string v2, "error"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/util/infinity/OmniJawsClient$OmniJawsObserver;->weatherError(I)V

    .line 123
    :cond_46
    :goto_46
    goto :goto_13

    .line 124
    :cond_47
    return-void
.end method
