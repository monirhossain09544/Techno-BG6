.class public Landroid/service/carrier/CarrierService$ICarrierServiceWrapper;
.super Landroid/service/carrier/ICarrierService$Stub;
.source "CarrierService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/CarrierService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ICarrierServiceWrapper"
.end annotation


# static fields
.field public static final greylist-max-o KEY_CONFIG_BUNDLE:Ljava/lang/String; = "config_bundle"

.field public static final greylist-max-o RESULT_ERROR:I = 0x1

.field public static final greylist-max-o RESULT_OK:I


# instance fields
.field final synthetic blacklist this$0:Landroid/service/carrier/CarrierService;


# direct methods
.method public constructor blacklist <init>(Landroid/service/carrier/CarrierService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 227
    iput-object p1, p0, Landroid/service/carrier/CarrierService$ICarrierServiceWrapper;->this$0:Landroid/service/carrier/CarrierService;

    invoke-direct {p0}, Landroid/service/carrier/ICarrierService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 250
    iget-object v0, p0, Landroid/service/carrier/CarrierService$ICarrierServiceWrapper;->this$0:Landroid/service/carrier/CarrierService;

    # invokes: Landroid/service/carrier/CarrierService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    invoke-static {v0, p1, p2, p3}, Landroid/service/carrier/CarrierService;->access$000(Landroid/service/carrier/CarrierService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public blacklist getCarrierConfig(ILandroid/service/carrier/CarrierIdentifier;Landroid/os/ResultReceiver;)V
    .registers 7

    .line 238
    :try_start_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result p1

    .line 239
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 240
    const-string v1, "config_bundle"

    iget-object v2, p0, Landroid/service/carrier/CarrierService$ICarrierServiceWrapper;->this$0:Landroid/service/carrier/CarrierService;

    invoke-virtual {v2, p1, p2}, Landroid/service/carrier/CarrierService;->onLoadConfig(ILandroid/service/carrier/CarrierIdentifier;)Landroid/os/PersistableBundle;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 241
    const/4 p1, 0x0

    invoke-virtual {p3, p1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    .line 245
    goto :goto_3b

    .line 242
    :catch_19
    move-exception p1

    .line 243
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error in onLoadConfig: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CarrierService"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {p3, p1, p2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 246
    :goto_3b
    return-void
.end method
