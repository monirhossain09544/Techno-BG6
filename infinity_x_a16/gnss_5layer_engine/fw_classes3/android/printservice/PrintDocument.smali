.class public final Landroid/printservice/PrintDocument;
.super Ljava/lang/Object;
.source "PrintDocument.java"


# static fields
.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "PrintDocument"


# instance fields
.field private final greylist-max-o mInfo:Landroid/print/PrintDocumentInfo;

.field private final greylist-max-o mPrintJobId:Landroid/print/PrintJobId;

.field private final greylist-max-o mPrintServiceClient:Landroid/printservice/IPrintServiceClient;


# direct methods
.method constructor greylist-max-o <init>(Landroid/print/PrintJobId;Landroid/printservice/IPrintServiceClient;Landroid/print/PrintDocumentInfo;)V
    .registers 4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/printservice/PrintDocument;->mPrintJobId:Landroid/print/PrintJobId;

    .line 50
    iput-object p2, p0, Landroid/printservice/PrintDocument;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    .line 51
    iput-object p3, p0, Landroid/printservice/PrintDocument;->mInfo:Landroid/print/PrintDocumentInfo;

    .line 52
    return-void
.end method


# virtual methods
.method public whitelist getData()Landroid/os/ParcelFileDescriptor;
    .registers 8

    .line 75
    const-string v0, "Error calling getting print job data!"

    const-string v1, "PrintDocument"

    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 76
    nop

    .line 77
    nop

    .line 79
    const/4 v2, 0x0

    :try_start_a
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 80
    const/4 v4, 0x0

    aget-object v4, v3, v4

    .line 81
    const/4 v5, 0x1

    aget-object v3, v3, v5
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_14} :catch_38
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_2d
    .catchall {:try_start_a .. :try_end_14} :catchall_2b

    .line 82
    :try_start_14
    iget-object v5, p0, Landroid/printservice/PrintDocument;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    iget-object v6, p0, Landroid/printservice/PrintDocument;->mPrintJobId:Landroid/print/PrintJobId;

    invoke-interface {v5, v3, v6}, Landroid/printservice/IPrintServiceClient;->writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1b} :catch_29
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1b} :catch_27
    .catchall {:try_start_14 .. :try_end_1b} :catchall_24

    .line 83
    nop

    .line 89
    if-eqz v3, :cond_23

    .line 91
    :try_start_1e
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_22

    .line 94
    goto :goto_23

    .line 92
    :catch_22
    move-exception v0

    .line 83
    :cond_23
    :goto_23
    return-object v4

    .line 89
    :catchall_24
    move-exception v0

    move-object v2, v3

    goto :goto_44

    .line 86
    :catch_27
    move-exception v4

    goto :goto_2f

    .line 84
    :catch_29
    move-exception v4

    goto :goto_3a

    .line 89
    :catchall_2b
    move-exception v0

    goto :goto_44

    .line 86
    :catch_2d
    move-exception v4

    move-object v3, v2

    .line 87
    :goto_2f
    :try_start_2f
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_24

    .line 89
    if-eqz v3, :cond_43

    .line 91
    :goto_34
    :try_start_34
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_41

    goto :goto_40

    .line 84
    :catch_38
    move-exception v4

    move-object v3, v2

    .line 85
    :goto_3a
    :try_start_3a
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_24

    .line 89
    if-eqz v3, :cond_43

    .line 91
    goto :goto_34

    .line 94
    :goto_40
    goto :goto_43

    .line 92
    :catch_41
    move-exception v0

    goto :goto_40

    .line 97
    :cond_43
    :goto_43
    return-object v2

    .line 89
    :goto_44
    if-eqz v2, :cond_4b

    .line 91
    :try_start_46
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    .line 94
    goto :goto_4b

    .line 92
    :catch_4a
    move-exception v1

    .line 96
    :cond_4b
    :goto_4b
    throw v0
.end method

.method public whitelist getInfo()Landroid/print/PrintDocumentInfo;
    .registers 2

    .line 60
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 61
    iget-object v0, p0, Landroid/printservice/PrintDocument;->mInfo:Landroid/print/PrintDocumentInfo;

    return-object v0
.end method
