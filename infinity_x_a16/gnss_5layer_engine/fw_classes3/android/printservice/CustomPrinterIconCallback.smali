.class public final Landroid/printservice/CustomPrinterIconCallback;
.super Ljava/lang/Object;
.source "CustomPrinterIconCallback.java"


# static fields
.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "CustomPrinterIconCB"


# instance fields
.field private final greylist-max-o mObserver:Landroid/printservice/IPrintServiceClient;

.field private final greylist-max-o mPrinterId:Landroid/print/PrinterId;


# direct methods
.method constructor greylist-max-o <init>(Landroid/print/PrinterId;Landroid/printservice/IPrintServiceClient;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/printservice/CustomPrinterIconCallback;->mPrinterId:Landroid/print/PrinterId;

    .line 44
    iput-object p2, p0, Landroid/printservice/CustomPrinterIconCallback;->mObserver:Landroid/printservice/IPrintServiceClient;

    .line 45
    return-void
.end method


# virtual methods
.method public whitelist onCustomPrinterIconLoaded(Landroid/graphics/drawable/Icon;)Z
    .registers 4

    .line 55
    :try_start_0
    iget-object v0, p0, Landroid/printservice/CustomPrinterIconCallback;->mObserver:Landroid/printservice/IPrintServiceClient;

    iget-object v1, p0, Landroid/printservice/CustomPrinterIconCallback;->mPrinterId:Landroid/print/PrinterId;

    invoke-interface {v0, v1, p1}, Landroid/printservice/IPrintServiceClient;->onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_a

    .line 59
    nop

    .line 61
    const/4 p1, 0x1

    return p1

    .line 56
    :catch_a
    move-exception p1

    .line 57
    const-string v0, "CustomPrinterIconCB"

    const-string v1, "Could not update icon"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    const/4 p1, 0x0

    return p1
.end method
