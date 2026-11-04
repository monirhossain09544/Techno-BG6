.class final Landroid/speech/RecognitionService$RecognitionServiceBinder;
.super Landroid/speech/IRecognitionService$Stub;
.source "RecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/RecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RecognitionServiceBinder"
.end annotation


# instance fields
.field private final greylist-max-o mServiceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/speech/RecognitionService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Landroid/speech/RecognitionService;)V
    .registers 3

    .line 780
    invoke-direct {p0}, Landroid/speech/IRecognitionService$Stub;-><init>()V

    .line 781
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mServiceRef:Ljava/lang/ref/WeakReference;

    .line 782
    return-void
.end method


# virtual methods
.method public blacklist cancel(Landroid/speech/IRecognitionListener;Z)V
    .registers 5

    .line 811
    iget-object p2, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/speech/RecognitionService;

    .line 812
    if-eqz p2, :cond_1a

    .line 813
    invoke-static {p2}, Landroid/speech/RecognitionService;->-$$Nest$fgetmHandler(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p2}, Landroid/speech/RecognitionService;->-$$Nest$fgetmHandler(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object p2

    .line 814
    const/4 v1, 0x3

    invoke-static {p2, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 813
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 816
    :cond_1a
    return-void
.end method

.method public blacklist checkRecognitionSupport(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IRecognitionSupportCallback;)V
    .registers 8

    .line 823
    iget-object v0, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/RecognitionService;

    .line 824
    if-eqz v0, :cond_20

    .line 825
    invoke-static {v0}, Landroid/speech/RecognitionService;->-$$Nest$fgetmHandler(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0}, Landroid/speech/RecognitionService;->-$$Nest$fgetmHandler(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Landroid/speech/RecognitionService$CheckRecognitionSupportArgs;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p3, p2, v3}, Landroid/speech/RecognitionService$CheckRecognitionSupportArgs;-><init>(Landroid/content/Intent;Landroid/speech/IRecognitionSupportCallback;Landroid/content/AttributionSource;Landroid/speech/RecognitionService-IA;)V

    .line 826
    const/4 p1, 0x5

    invoke-static {v0, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 825
    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 830
    :cond_20
    return-void
.end method

.method public greylist-max-o clearReference()V
    .registers 2

    .line 850
    iget-object v0, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 851
    return-void
.end method

.method public blacklist startListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V
    .registers 7

    .line 787
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    invoke-virtual {p3}, Landroid/content/AttributionSource;->enforceCallingUid()V

    .line 790
    iget-object v0, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/RecognitionService;

    .line 791
    if-eqz v0, :cond_25

    .line 792
    invoke-static {v0}, Landroid/speech/RecognitionService;->-$$Nest$fgetmHandler(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0}, Landroid/speech/RecognitionService;->-$$Nest$fgetmHandler(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Landroid/speech/RecognitionService$StartListeningArgs;

    invoke-direct {v2, p1, p2, p3}, Landroid/speech/RecognitionService$StartListeningArgs;-><init>(Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 796
    :cond_25
    return-void
.end method

.method public greylist-max-o stopListening(Landroid/speech/IRecognitionListener;)V
    .registers 5

    .line 801
    iget-object v0, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/RecognitionService;

    .line 802
    if-eqz v0, :cond_1a

    .line 803
    invoke-static {v0}, Landroid/speech/RecognitionService;->-$$Nest$fgetmHandler(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0}, Landroid/speech/RecognitionService;->-$$Nest$fgetmHandler(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v0

    .line 804
    const/4 v2, 0x2

    invoke-static {v0, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 803
    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 806
    :cond_1a
    return-void
.end method

.method public blacklist triggerModelDownload(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IModelDownloadListener;)V
    .registers 8

    .line 837
    iget-object v0, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/RecognitionService;

    .line 838
    if-eqz v0, :cond_20

    .line 839
    invoke-static {v0}, Landroid/speech/RecognitionService;->-$$Nest$fgetmHandler(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0}, Landroid/speech/RecognitionService;->-$$Nest$fgetmHandler(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Landroid/speech/RecognitionService$ModelDownloadArgs;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, p3, v3}, Landroid/speech/RecognitionService$ModelDownloadArgs;-><init>(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IModelDownloadListener;Landroid/speech/RecognitionService-IA;)V

    .line 840
    const/4 p1, 0x6

    invoke-static {v0, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 839
    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 847
    :cond_20
    return-void
.end method
