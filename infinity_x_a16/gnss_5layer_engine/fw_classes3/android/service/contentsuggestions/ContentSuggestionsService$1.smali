.class Landroid/service/contentsuggestions/ContentSuggestionsService$1;
.super Landroid/service/contentsuggestions/IContentSuggestionsService$Stub;
.source "ContentSuggestionsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/contentsuggestions/ContentSuggestionsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/contentsuggestions/ContentSuggestionsService;


# direct methods
.method constructor blacklist <init>(Landroid/service/contentsuggestions/ContentSuggestionsService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 64
    iput-object p1, p0, Landroid/service/contentsuggestions/ContentSuggestionsService$1;->this$0:Landroid/service/contentsuggestions/ContentSuggestionsService;

    invoke-direct {p0}, Landroid/service/contentsuggestions/IContentSuggestionsService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist classifyContentSelections(Landroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/IClassificationsCallback;)V
    .registers 7

    .line 112
    iget-object v0, p0, Landroid/service/contentsuggestions/ContentSuggestionsService$1;->this$0:Landroid/service/contentsuggestions/ContentSuggestionsService;

    invoke-static {v0}, Landroid/service/contentsuggestions/ContentSuggestionsService;->-$$Nest$fgetmHandler(Landroid/service/contentsuggestions/ContentSuggestionsService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/contentsuggestions/ContentSuggestionsService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/contentsuggestions/ContentSuggestionsService$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/contentsuggestions/ContentSuggestionsService$1;->this$0:Landroid/service/contentsuggestions/ContentSuggestionsService;

    iget-object v3, p0, Landroid/service/contentsuggestions/ContentSuggestionsService$1;->this$0:Landroid/service/contentsuggestions/ContentSuggestionsService;

    .line 114
    invoke-static {v3, p2}, Landroid/service/contentsuggestions/ContentSuggestionsService;->-$$Nest$mwrapClassificationCallback(Landroid/service/contentsuggestions/ContentSuggestionsService;Landroid/app/contentsuggestions/IClassificationsCallback;)Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;

    move-result-object p2

    .line 112
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 115
    return-void
.end method

.method public blacklist notifyInteraction(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .line 119
    iget-object v0, p0, Landroid/service/contentsuggestions/ContentSuggestionsService$1;->this$0:Landroid/service/contentsuggestions/ContentSuggestionsService;

    invoke-static {v0}, Landroid/service/contentsuggestions/ContentSuggestionsService;->-$$Nest$fgetmHandler(Landroid/service/contentsuggestions/ContentSuggestionsService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/contentsuggestions/ContentSuggestionsService$1$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/service/contentsuggestions/ContentSuggestionsService$1$$ExternalSyntheticLambda2;-><init>()V

    iget-object v2, p0, Landroid/service/contentsuggestions/ContentSuggestionsService$1;->this$0:Landroid/service/contentsuggestions/ContentSuggestionsService;

    .line 120
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 119
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 122
    return-void
.end method

.method public blacklist provideContextImage(ILandroid/window/TaskSnapshot;Landroid/os/Bundle;)V
    .registers 7

    .line 68
    const-string v0, "android.contentsuggestions.extra.BITMAP"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    if-nez p2, :cond_b

    goto :goto_13

    .line 70
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Two bitmaps provided; expected one."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_13
    :goto_13
    nop

    .line 74
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 75
    const-class p2, Landroid/graphics/Bitmap;

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    goto :goto_52

    .line 78
    :cond_23
    if-eqz p2, :cond_51

    .line 79
    invoke-virtual {p2}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    .line 80
    invoke-virtual {p2}, Landroid/window/TaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p2

    .line 81
    nop

    .line 82
    if-eqz p2, :cond_35

    .line 83
    invoke-virtual {p2}, Landroid/graphics/ColorSpace;->getId()I

    move-result v1

    goto :goto_36

    .line 82
    :cond_35
    const/4 v1, 0x0

    .line 85
    :goto_36
    if-ltz v1, :cond_49

    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_49

    .line 86
    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object p2

    aget-object p2, p2, v1

    invoke-static {p2}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p2

    .line 88
    :cond_49
    invoke-static {v0, p2}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 89
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    goto :goto_52

    .line 78
    :cond_51
    const/4 p2, 0x0

    .line 93
    :goto_52
    iget-object v0, p0, Landroid/service/contentsuggestions/ContentSuggestionsService$1;->this$0:Landroid/service/contentsuggestions/ContentSuggestionsService;

    invoke-static {v0}, Landroid/service/contentsuggestions/ContentSuggestionsService;->-$$Nest$fgetmHandler(Landroid/service/contentsuggestions/ContentSuggestionsService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/contentsuggestions/ContentSuggestionsService$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/service/contentsuggestions/ContentSuggestionsService$1$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/service/contentsuggestions/ContentSuggestionsService$1;->this$0:Landroid/service/contentsuggestions/ContentSuggestionsService;

    .line 95
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 94
    invoke-static {v1, v2, p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 93
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 98
    return-void
.end method

.method public blacklist suggestContentSelections(Landroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;)V
    .registers 7

    .line 103
    iget-object v0, p0, Landroid/service/contentsuggestions/ContentSuggestionsService$1;->this$0:Landroid/service/contentsuggestions/ContentSuggestionsService;

    invoke-static {v0}, Landroid/service/contentsuggestions/ContentSuggestionsService;->-$$Nest$fgetmHandler(Landroid/service/contentsuggestions/ContentSuggestionsService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/contentsuggestions/ContentSuggestionsService$1$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/service/contentsuggestions/ContentSuggestionsService$1$$ExternalSyntheticLambda3;-><init>()V

    iget-object v2, p0, Landroid/service/contentsuggestions/ContentSuggestionsService$1;->this$0:Landroid/service/contentsuggestions/ContentSuggestionsService;

    iget-object v3, p0, Landroid/service/contentsuggestions/ContentSuggestionsService$1;->this$0:Landroid/service/contentsuggestions/ContentSuggestionsService;

    .line 105
    invoke-static {v3, p2}, Landroid/service/contentsuggestions/ContentSuggestionsService;->-$$Nest$mwrapSelectionsCallback(Landroid/service/contentsuggestions/ContentSuggestionsService;Landroid/app/contentsuggestions/ISelectionsCallback;)Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallback;

    move-result-object p2

    .line 103
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 107
    return-void
.end method
