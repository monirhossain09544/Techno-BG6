.class final Landroid/service/textclassifier/TextClassifierService$ProxyCallback;
.super Ljava/lang/Object;
.source "TextClassifierService.java"

# interfaces
.implements Landroid/service/textclassifier/TextClassifierService$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/textclassifier/TextClassifierService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProxyCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/service/textclassifier/TextClassifierService$Callback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private blacklist mTextClassifierCallback:Landroid/service/textclassifier/ITextClassifierCallback;


# direct methods
.method private constructor blacklist <init>(Landroid/service/textclassifier/ITextClassifierCallback;)V
    .registers 2

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/textclassifier/ITextClassifierCallback;

    iput-object p1, p0, Landroid/service/textclassifier/TextClassifierService$ProxyCallback;->mTextClassifierCallback:Landroid/service/textclassifier/ITextClassifierCallback;

    .line 490
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/textclassifier/ITextClassifierCallback;Landroid/service/textclassifier/TextClassifierService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/textclassifier/TextClassifierService$ProxyCallback;-><init>(Landroid/service/textclassifier/ITextClassifierCallback;)V

    return-void
.end method


# virtual methods
.method public whitelist onFailure(Ljava/lang/CharSequence;)V
    .registers 5

    .line 506
    const-string v0, "TextClassifierService"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object p1, p0, Landroid/service/textclassifier/TextClassifierService$ProxyCallback;->mTextClassifierCallback:Landroid/service/textclassifier/ITextClassifierCallback;

    invoke-interface {p1}, Landroid/service/textclassifier/ITextClassifierCallback;->onFailure()V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1d} :catch_1e

    .line 510
    goto :goto_24

    .line 508
    :catch_1e
    move-exception p1

    .line 509
    const-string p1, "Error calling callback"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :goto_24
    return-void
.end method

.method public blacklist onSuccess(Landroid/os/Parcelable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 495
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 496
    const-string v1, "key_result"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 497
    iget-object p1, p0, Landroid/service/textclassifier/TextClassifierService$ProxyCallback;->mTextClassifierCallback:Landroid/service/textclassifier/ITextClassifierCallback;

    invoke-interface {p1, v0}, Landroid/service/textclassifier/ITextClassifierCallback;->onSuccess(Landroid/os/Bundle;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    .line 500
    goto :goto_19

    .line 498
    :catch_11
    move-exception p1

    .line 499
    const-string p1, "TextClassifierService"

    const-string v0, "Error calling callback"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :goto_19
    return-void
.end method

.method public bridge synthetic whitelist onSuccess(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 485
    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {p0, p1}, Landroid/service/textclassifier/TextClassifierService$ProxyCallback;->onSuccess(Landroid/os/Parcelable;)V

    return-void
.end method
