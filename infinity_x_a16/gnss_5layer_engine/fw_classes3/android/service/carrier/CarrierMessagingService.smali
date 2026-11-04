.class public abstract Landroid/service/carrier/CarrierMessagingService;
.super Landroid/app/Service;
.source "CarrierMessagingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;,
        Landroid/service/carrier/CarrierMessagingService$ResultCallback;,
        Landroid/service/carrier/CarrierMessagingService$SendSmsResult;,
        Landroid/service/carrier/CarrierMessagingService$SendMultipartSmsResult;,
        Landroid/service/carrier/CarrierMessagingService$SendMmsResult;,
        Landroid/service/carrier/CarrierMessagingService$SendRequest;,
        Landroid/service/carrier/CarrierMessagingService$DownloadResult;,
        Landroid/service/carrier/CarrierMessagingService$SendResult;,
        Landroid/service/carrier/CarrierMessagingService$FilterCompleteResult;
    }
.end annotation


# static fields
.field public static final whitelist DOWNLOAD_STATUS_ERROR:I = 0x2

.field public static final whitelist DOWNLOAD_STATUS_MMS_ERROR_CONFIGURATION_ERROR:I = 0x25e

.field public static final whitelist DOWNLOAD_STATUS_MMS_ERROR_DATA_DISABLED:I = 0x262

.field public static final whitelist DOWNLOAD_STATUS_MMS_ERROR_HTTP_FAILURE:I = 0x25b

.field public static final whitelist DOWNLOAD_STATUS_MMS_ERROR_INACTIVE_SUBSCRIPTION:I = 0x261

.field public static final whitelist DOWNLOAD_STATUS_MMS_ERROR_INVALID_APN:I = 0x259

.field public static final whitelist DOWNLOAD_STATUS_MMS_ERROR_INVALID_SUBSCRIPTION_ID:I = 0x260

.field public static final whitelist DOWNLOAD_STATUS_MMS_ERROR_IO_ERROR:I = 0x25c

.field public static final whitelist DOWNLOAD_STATUS_MMS_ERROR_MMS_DISABLED_BY_CARRIER:I = 0x263

.field public static final whitelist DOWNLOAD_STATUS_MMS_ERROR_NO_DATA_NETWORK:I = 0x25f

.field public static final whitelist DOWNLOAD_STATUS_MMS_ERROR_RETRY:I = 0x25d

.field public static final whitelist DOWNLOAD_STATUS_MMS_ERROR_UNABLE_CONNECT_MMS:I = 0x25a

.field public static final whitelist DOWNLOAD_STATUS_MMS_ERROR_UNSPECIFIED:I = 0x258

.field public static final whitelist DOWNLOAD_STATUS_OK:I = 0x0

.field public static final whitelist DOWNLOAD_STATUS_RETRY_ON_CARRIER_NETWORK:I = 0x1

.field public static final whitelist RECEIVE_OPTIONS_DEFAULT:I = 0x0

.field public static final whitelist RECEIVE_OPTIONS_DROP:I = 0x1

.field public static final whitelist RECEIVE_OPTIONS_SKIP_NOTIFY_WHEN_CREDENTIAL_PROTECTED_STORAGE_UNAVAILABLE:I = 0x2

.field public static final whitelist SEND_FLAG_REQUEST_DELIVERY_STATUS:I = 0x1

.field public static final whitelist SEND_STATUS_ERROR:I = 0x2

.field public static final whitelist SEND_STATUS_MMS_ERROR_CONFIGURATION_ERROR:I = 0x196

.field public static final whitelist SEND_STATUS_MMS_ERROR_DATA_DISABLED:I = 0x19a

.field public static final whitelist SEND_STATUS_MMS_ERROR_HTTP_FAILURE:I = 0x193

.field public static final whitelist SEND_STATUS_MMS_ERROR_INACTIVE_SUBSCRIPTION:I = 0x199

.field public static final whitelist SEND_STATUS_MMS_ERROR_INVALID_APN:I = 0x191

.field public static final whitelist SEND_STATUS_MMS_ERROR_INVALID_SUBSCRIPTION_ID:I = 0x198

.field public static final whitelist SEND_STATUS_MMS_ERROR_IO_ERROR:I = 0x194

.field public static final whitelist SEND_STATUS_MMS_ERROR_MMS_DISABLED_BY_CARRIER:I = 0x19b

.field public static final whitelist SEND_STATUS_MMS_ERROR_NO_DATA_NETWORK:I = 0x197

.field public static final whitelist SEND_STATUS_MMS_ERROR_RETRY:I = 0x195

.field public static final whitelist SEND_STATUS_MMS_ERROR_UNABLE_CONNECT_MMS:I = 0x192

.field public static final whitelist SEND_STATUS_MMS_ERROR_UNSPECIFIED:I = 0x190

.field public static final whitelist SEND_STATUS_OK:I = 0x0

.field public static final whitelist SEND_STATUS_RESULT_CANCELLED:I = 0xd7

.field public static final whitelist SEND_STATUS_RESULT_ENCODING_ERROR:I = 0xd4

.field public static final whitelist SEND_STATUS_RESULT_ERROR_FDN_CHECK_FAILURE:I = 0xcc

.field public static final whitelist SEND_STATUS_RESULT_ERROR_GENERIC_FAILURE:I = 0xc8

.field public static final whitelist SEND_STATUS_RESULT_ERROR_LIMIT_EXCEEDED:I = 0xcb

.field public static final whitelist SEND_STATUS_RESULT_ERROR_NO_SERVICE:I = 0xca

.field public static final whitelist SEND_STATUS_RESULT_ERROR_NULL_PDU:I = 0xc9

.field public static final whitelist SEND_STATUS_RESULT_ERROR_SHORT_CODE_NEVER_ALLOWED:I = 0xce

.field public static final whitelist SEND_STATUS_RESULT_ERROR_SHORT_CODE_NOT_ALLOWED:I = 0xcd

.field public static final whitelist SEND_STATUS_RESULT_INVALID_ARGUMENTS:I = 0xd0

.field public static final whitelist SEND_STATUS_RESULT_INVALID_SMSC_ADDRESS:I = 0xd5

.field public static final whitelist SEND_STATUS_RESULT_INVALID_SMS_FORMAT:I = 0xd2

.field public static final whitelist SEND_STATUS_RESULT_INVALID_STATE:I = 0xd1

.field public static final whitelist SEND_STATUS_RESULT_NETWORK_ERROR:I = 0xd3

.field public static final whitelist SEND_STATUS_RESULT_NETWORK_REJECT:I = 0xcf

.field public static final whitelist SEND_STATUS_RESULT_OPERATION_NOT_ALLOWED:I = 0xd6

.field public static final whitelist SEND_STATUS_RESULT_REQUEST_NOT_SUPPORTED:I = 0xd8

.field public static final whitelist SEND_STATUS_RESULT_SMS_BLOCKED_DURING_EMERGENCY:I = 0xd9

.field public static final whitelist SEND_STATUS_RESULT_SMS_SEND_RETRY_FAILED:I = 0xda

.field public static final whitelist SEND_STATUS_RETRY_ON_CARRIER_NETWORK:I = 0x1

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.carrier.CarrierMessagingService"


# instance fields
.field private final greylist-max-o mWrapper:Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 48
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 529
    new-instance v0, Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;-><init>(Landroid/service/carrier/CarrierMessagingService;Landroid/service/carrier/CarrierMessagingService-IA;)V

    iput-object v0, p0, Landroid/service/carrier/CarrierMessagingService;->mWrapper:Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;

    return-void
.end method


# virtual methods
.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .line 735
    const-string v0, "android.service.carrier.CarrierMessagingService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 736
    const/4 p1, 0x0

    return-object p1

    .line 738
    :cond_e
    iget-object p1, p0, Landroid/service/carrier/CarrierMessagingService;->mWrapper:Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;

    return-object p1
.end method

.method public whitelist onDownloadMms(Landroid/net/Uri;ILandroid/net/Uri;Landroid/service/carrier/CarrierMessagingService$ResultCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Landroid/net/Uri;",
            "Landroid/service/carrier/CarrierMessagingService$ResultCallback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 728
    const/4 p1, 0x1

    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p4, p1}, Landroid/service/carrier/CarrierMessagingService$ResultCallback;->onReceiveResult(Ljava/lang/Object;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_9

    .line 730
    goto :goto_a

    .line 729
    :catch_9
    move-exception p1

    .line 731
    :goto_a
    return-void
.end method

.method public whitelist onFilterSms(Landroid/service/carrier/MessagePdu;Ljava/lang/String;IILandroid/service/carrier/CarrierMessagingService$ResultCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/carrier/MessagePdu;",
            "Ljava/lang/String;",
            "II",
            "Landroid/service/carrier/CarrierMessagingService$ResultCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 547
    const/4 p1, 0x1

    :try_start_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p5, p1}, Landroid/service/carrier/CarrierMessagingService$ResultCallback;->onReceiveResult(Ljava/lang/Object;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_9

    .line 549
    goto :goto_a

    .line 548
    :catch_9
    move-exception p1

    .line 550
    :goto_a
    return-void
.end method

.method public whitelist onReceiveTextSms(Landroid/service/carrier/MessagePdu;Ljava/lang/String;IILandroid/service/carrier/CarrierMessagingService$ResultCallback;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/carrier/MessagePdu;",
            "Ljava/lang/String;",
            "II",
            "Landroid/service/carrier/CarrierMessagingService$ResultCallback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 573
    new-instance v5, Landroid/service/carrier/CarrierMessagingService$1;

    invoke-direct {v5, p0, p5}, Landroid/service/carrier/CarrierMessagingService$1;-><init>(Landroid/service/carrier/CarrierMessagingService;Landroid/service/carrier/CarrierMessagingService$ResultCallback;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/service/carrier/CarrierMessagingService;->onFilterSms(Landroid/service/carrier/MessagePdu;Ljava/lang/String;IILandroid/service/carrier/CarrierMessagingService$ResultCallback;)V

    .line 580
    return-void
.end method

.method public whitelist onSendDataSms([BILjava/lang/String;IILandroid/service/carrier/CarrierMessagingService$ResultCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/lang/String;",
            "II",
            "Landroid/service/carrier/CarrierMessagingService$ResultCallback<",
            "Landroid/service/carrier/CarrierMessagingService$SendSmsResult;",
            ">;)V"
        }
    .end annotation

    .line 655
    move p5, p4

    move-object p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    invoke-virtual/range {p1 .. p6}, Landroid/service/carrier/CarrierMessagingService;->onSendDataSms([BILjava/lang/String;ILandroid/service/carrier/CarrierMessagingService$ResultCallback;)V

    .line 656
    return-void
.end method

.method public whitelist onSendDataSms([BILjava/lang/String;ILandroid/service/carrier/CarrierMessagingService$ResultCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/lang/String;",
            "I",
            "Landroid/service/carrier/CarrierMessagingService$ResultCallback<",
            "Landroid/service/carrier/CarrierMessagingService$SendSmsResult;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 635
    :try_start_0
    new-instance p1, Landroid/service/carrier/CarrierMessagingService$SendSmsResult;

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Landroid/service/carrier/CarrierMessagingService$SendSmsResult;-><init>(II)V

    invoke-interface {p5, p1}, Landroid/service/carrier/CarrierMessagingService$ResultCallback;->onReceiveResult(Ljava/lang/Object;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 637
    goto :goto_c

    .line 636
    :catch_b
    move-exception p1

    .line 638
    :goto_c
    return-void
.end method

.method public whitelist onSendMms(Landroid/net/Uri;ILandroid/net/Uri;Landroid/service/carrier/CarrierMessagingService$ResultCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Landroid/net/Uri;",
            "Landroid/service/carrier/CarrierMessagingService$ResultCallback<",
            "Landroid/service/carrier/CarrierMessagingService$SendMmsResult;",
            ">;)V"
        }
    .end annotation

    .line 709
    :try_start_0
    new-instance p1, Landroid/service/carrier/CarrierMessagingService$SendMmsResult;

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Landroid/service/carrier/CarrierMessagingService$SendMmsResult;-><init>(I[B)V

    invoke-interface {p4, p1}, Landroid/service/carrier/CarrierMessagingService$ResultCallback;->onReceiveResult(Ljava/lang/Object;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 711
    goto :goto_c

    .line 710
    :catch_b
    move-exception p1

    .line 712
    :goto_c
    return-void
.end method

.method public whitelist onSendMultipartTextSms(Ljava/util/List;ILjava/lang/String;ILandroid/service/carrier/CarrierMessagingService$ResultCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "I",
            "Landroid/service/carrier/CarrierMessagingService$ResultCallback<",
            "Landroid/service/carrier/CarrierMessagingService$SendMultipartSmsResult;",
            ">;)V"
        }
    .end annotation

    .line 693
    invoke-virtual {p0, p1, p2, p3, p5}, Landroid/service/carrier/CarrierMessagingService;->onSendMultipartTextSms(Ljava/util/List;ILjava/lang/String;Landroid/service/carrier/CarrierMessagingService$ResultCallback;)V

    .line 694
    return-void
.end method

.method public whitelist onSendMultipartTextSms(Ljava/util/List;ILjava/lang/String;Landroid/service/carrier/CarrierMessagingService$ResultCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Landroid/service/carrier/CarrierMessagingService$ResultCallback<",
            "Landroid/service/carrier/CarrierMessagingService$SendMultipartSmsResult;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 673
    :try_start_0
    new-instance p1, Landroid/service/carrier/CarrierMessagingService$SendMultipartSmsResult;

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Landroid/service/carrier/CarrierMessagingService$SendMultipartSmsResult;-><init>(I[I)V

    invoke-interface {p4, p1}, Landroid/service/carrier/CarrierMessagingService$ResultCallback;->onReceiveResult(Ljava/lang/Object;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 676
    goto :goto_c

    .line 675
    :catch_b
    move-exception p1

    .line 677
    :goto_c
    return-void
.end method

.method public whitelist onSendTextSms(Ljava/lang/String;ILjava/lang/String;ILandroid/service/carrier/CarrierMessagingService$ResultCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Landroid/service/carrier/CarrierMessagingService$ResultCallback<",
            "Landroid/service/carrier/CarrierMessagingService$SendSmsResult;",
            ">;)V"
        }
    .end annotation

    .line 616
    invoke-virtual {p0, p1, p2, p3, p5}, Landroid/service/carrier/CarrierMessagingService;->onSendTextSms(Ljava/lang/String;ILjava/lang/String;Landroid/service/carrier/CarrierMessagingService$ResultCallback;)V

    .line 617
    return-void
.end method

.method public whitelist onSendTextSms(Ljava/lang/String;ILjava/lang/String;Landroid/service/carrier/CarrierMessagingService$ResultCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Landroid/service/carrier/CarrierMessagingService$ResultCallback<",
            "Landroid/service/carrier/CarrierMessagingService$SendSmsResult;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 597
    :try_start_0
    new-instance p1, Landroid/service/carrier/CarrierMessagingService$SendSmsResult;

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Landroid/service/carrier/CarrierMessagingService$SendSmsResult;-><init>(II)V

    invoke-interface {p4, p1}, Landroid/service/carrier/CarrierMessagingService$ResultCallback;->onReceiveResult(Ljava/lang/Object;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 599
    goto :goto_c

    .line 598
    :catch_b
    move-exception p1

    .line 600
    :goto_c
    return-void
.end method
