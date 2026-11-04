.class Landroid/service/translation/TranslationService$3;
.super Ljava/lang/Object;
.source "TranslationService.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/translation/TranslationService;->handleOnCreateTranslationSession(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/translation/TranslationService;

.field final synthetic blacklist val$resultReceiver:Lcom/android/internal/os/IResultReceiver;

.field final synthetic blacklist val$sessionId:I

.field final synthetic blacklist val$translationContext:Landroid/view/translation/TranslationContext;


# direct methods
.method constructor blacklist <init>(Landroid/service/translation/TranslationService;Landroid/view/translation/TranslationContext;Lcom/android/internal/os/IResultReceiver;I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 338
    iput-object p1, p0, Landroid/service/translation/TranslationService$3;->this$0:Landroid/service/translation/TranslationService;

    iput-object p2, p0, Landroid/service/translation/TranslationService$3;->val$translationContext:Landroid/view/translation/TranslationContext;

    iput-object p3, p0, Landroid/service/translation/TranslationService$3;->val$resultReceiver:Lcom/android/internal/os/IResultReceiver;

    iput p4, p0, Landroid/service/translation/TranslationService$3;->val$sessionId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist accept(Ljava/lang/Boolean;)V
    .registers 5

    .line 342
    const-string v0, "TranslationService"

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2e

    .line 343
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnCreateTranslationSession(): context="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Landroid/service/translation/TranslationService$3;->val$translationContext:Landroid/view/translation/TranslationContext;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " not supported by service."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object p1, p0, Landroid/service/translation/TranslationService$3;->val$resultReceiver:Lcom/android/internal/os/IResultReceiver;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 346
    return-void

    .line 349
    :cond_2e
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 350
    const-string v1, "binder"

    iget-object v2, p0, Landroid/service/translation/TranslationService$3;->this$0:Landroid/service/translation/TranslationService;

    invoke-static {v2}, Landroid/service/translation/TranslationService;->-$$Nest$fgetmClientInterface(Landroid/service/translation/TranslationService;)Landroid/view/translation/ITranslationDirectManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/translation/ITranslationDirectManager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 351
    const-string/jumbo v1, "sessionId"

    iget v2, p0, Landroid/service/translation/TranslationService$3;->val$sessionId:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 352
    iget-object v1, p0, Landroid/service/translation/TranslationService$3;->val$resultReceiver:Lcom/android/internal/os/IResultReceiver;

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_50} :catch_51

    .line 355
    goto :goto_68

    .line 353
    :catch_51
    move-exception p1

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException sending client interface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :goto_68
    return-void
.end method

.method public bridge synthetic whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 338
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroid/service/translation/TranslationService$3;->accept(Ljava/lang/Boolean;)V

    return-void
.end method
