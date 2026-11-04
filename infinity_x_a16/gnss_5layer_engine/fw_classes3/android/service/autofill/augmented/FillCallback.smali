.class public final Landroid/service/autofill/augmented/FillCallback;
.super Ljava/lang/Object;
.source "FillCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    const-class v0, Landroid/service/autofill/augmented/FillCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/autofill/augmented/FillCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;)V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/service/autofill/augmented/FillCallback;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    .line 44
    return-void
.end method


# virtual methods
.method public whitelist onSuccess(Landroid/service/autofill/augmented/FillResponse;)V
    .registers 7

    .line 53
    sget-boolean v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v0, :cond_1d

    sget-object v0, Landroid/service/autofill/augmented/FillCallback;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSuccess(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_1d
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2d

    .line 56
    iget-object p1, p0, Landroid/service/autofill/augmented/FillCallback;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    invoke-virtual {p1, v0}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->logEvent(I)V

    .line 57
    iget-object p1, p0, Landroid/service/autofill/augmented/FillCallback;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v1}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->reportResult(Ljava/util/List;Landroid/os/Bundle;Z)V

    .line 59
    return-void

    .line 62
    :cond_2d
    invoke-virtual {p1}, Landroid/service/autofill/augmented/FillResponse;->getInlineSuggestions()Ljava/util/List;

    move-result-object v2

    .line 63
    invoke-virtual {p1}, Landroid/service/autofill/augmented/FillResponse;->getClientState()Landroid/os/Bundle;

    move-result-object v3

    .line 64
    invoke-virtual {p1}, Landroid/service/autofill/augmented/FillResponse;->getFillWindow()Landroid/service/autofill/augmented/FillWindow;

    move-result-object p1

    .line 65
    nop

    .line 66
    if-eqz v2, :cond_49

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_49

    .line 67
    iget-object p1, p0, Landroid/service/autofill/augmented/FillCallback;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->logEvent(I)V

    goto :goto_4f

    .line 68
    :cond_49
    if-eqz p1, :cond_4f

    .line 69
    invoke-virtual {p1}, Landroid/service/autofill/augmented/FillWindow;->show()V

    .line 70
    goto :goto_50

    .line 73
    :cond_4f
    :goto_4f
    move v0, v1

    :goto_50
    iget-object p1, p0, Landroid/service/autofill/augmented/FillCallback;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    invoke-virtual {p1, v2, v3, v0}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->reportResult(Ljava/util/List;Landroid/os/Bundle;Z)V

    .line 78
    return-void
.end method
