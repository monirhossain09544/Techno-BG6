.class Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;
.super Landroid/service/euicc/IEuiccService$Stub;
.source "EuiccService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/euicc/EuiccService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IEuiccServiceWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/euicc/EuiccService;


# direct methods
.method public static synthetic blacklist $r8$lambda$Vn6K1w_q7wQ9V4xL31AD2Zi8NFc(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/service/euicc/IGetAvailableMemoryInBytesCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->lambda$getAvailableMemoryInBytes$0(ILandroid/service/euicc/IGetAvailableMemoryInBytesCallback;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/service/euicc/EuiccService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 818
    iput-object p1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-direct {p0}, Landroid/service/euicc/IEuiccService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/euicc/EuiccService;Landroid/service/euicc/EuiccService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;-><init>(Landroid/service/euicc/EuiccService;)V

    return-void
.end method

.method private synthetic blacklist lambda$getAvailableMemoryInBytes$0(ILandroid/service/euicc/IGetAvailableMemoryInBytesCallback;)V
    .registers 6

    .line 870
    nop

    .line 871
    nop

    .line 873
    :try_start_2
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    .line 874
    invoke-virtual {v0, p1}, Landroid/service/euicc/EuiccService;->onGetAvailableMemoryInBytes(I)J

    move-result-wide v0
    :try_end_8
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_8} :catch_b

    .line 877
    const-string p1, ""

    goto :goto_12

    .line 875
    :catch_b
    move-exception p1

    .line 876
    invoke-virtual {p1}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, -0x1

    .line 880
    :goto_12
    :try_start_12
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 881
    invoke-interface {p2, p1}, Landroid/service/euicc/IGetAvailableMemoryInBytesCallback;->onUnsupportedOperationException(Ljava/lang/String;)V

    goto :goto_1f

    .line 884
    :cond_1c
    invoke-interface {p2, v0, v1}, Landroid/service/euicc/IGetAvailableMemoryInBytesCallback;->onSuccess(J)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1f} :catch_20

    .line 888
    :goto_1f
    goto :goto_21

    .line 886
    :catch_20
    move-exception p1

    .line 889
    :goto_21
    return-void
.end method


# virtual methods
.method public greylist-max-o deleteSubscription(ILjava/lang/String;Landroid/service/euicc/IDeleteSubscriptionCallback;)V
    .registers 6

    .line 1015
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->-$$Nest$fgetmExecutor(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$9;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$9;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILjava/lang/String;Landroid/service/euicc/IDeleteSubscriptionCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1026
    return-void
.end method

.method public blacklist downloadSubscription(IILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/os/Bundle;Landroid/service/euicc/IDownloadSubscriptionCallback;)V
    .registers 18

    .line 824
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->-$$Nest$fgetmExecutor(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;IILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/os/Bundle;Landroid/service/euicc/IDownloadSubscriptionCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 847
    return-void
.end method

.method public blacklist dump(Landroid/service/euicc/IEuiccServiceDumpResultCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1117
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->-$$Nest$fgetmExecutor(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$15;

    invoke-direct {v1, p0, p1}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$15;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;Landroid/service/euicc/IEuiccServiceDumpResultCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1130
    return-void
.end method

.method public greylist-max-o eraseSubscriptions(ILandroid/service/euicc/IEraseSubscriptionsCallback;)V
    .registers 5

    .line 1070
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->-$$Nest$fgetmExecutor(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$12;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$12;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/service/euicc/IEraseSubscriptionsCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1081
    return-void
.end method

.method public blacklist eraseSubscriptionsWithOptions(IILandroid/service/euicc/IEraseSubscriptionsCallback;)V
    .registers 6

    .line 1086
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->-$$Nest$fgetmExecutor(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$13;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$13;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;IILandroid/service/euicc/IEraseSubscriptionsCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1097
    return-void
.end method

.method public blacklist getAvailableMemoryInBytes(ILandroid/service/euicc/IGetAvailableMemoryInBytesCallback;)V
    .registers 5

    .line 868
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->-$$Nest$fgetmExecutor(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/service/euicc/IGetAvailableMemoryInBytesCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 890
    return-void
.end method

.method public greylist-max-o getDefaultDownloadableSubscriptionList(IZLandroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;)V
    .registers 6

    .line 965
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->-$$Nest$fgetmExecutor(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$6;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$6;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;IZLandroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 978
    return-void
.end method

.method public blacklist getDownloadableSubscriptionMetadata(IILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;)V
    .registers 16

    .line 932
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->-$$Nest$fgetmExecutor(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;

    move-object v2, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    move v3, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ZIILandroid/telephony/euicc/DownloadableSubscription;ZLandroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 960
    return-void
.end method

.method public greylist-max-o getEid(ILandroid/service/euicc/IGetEidCallback;)V
    .registers 5

    .line 851
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->-$$Nest$fgetmExecutor(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$2;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$2;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/service/euicc/IGetEidCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 862
    return-void
.end method

.method public greylist-max-o getEuiccInfo(ILandroid/service/euicc/IGetEuiccInfoCallback;)V
    .registers 5

    .line 998
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->-$$Nest$fgetmExecutor(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$8;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$8;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/service/euicc/IGetEuiccInfoCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1010
    return-void
.end method

.method public greylist-max-o getEuiccProfileInfoList(ILandroid/service/euicc/IGetEuiccProfileInfoListCallback;)V
    .registers 5

    .line 982
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->-$$Nest$fgetmExecutor(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$7;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$7;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/service/euicc/IGetEuiccProfileInfoListCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 994
    return-void
.end method

.method public greylist-max-o getOtaStatus(ILandroid/service/euicc/IGetOtaStatusCallback;)V
    .registers 5

    .line 914
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->-$$Nest$fgetmExecutor(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$4;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$4;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/service/euicc/IGetOtaStatusCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 925
    return-void
.end method

.method public greylist-max-o retainSubscriptionsForFactoryReset(ILandroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback;)V
    .registers 5

    .line 1102
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->-$$Nest$fgetmExecutor(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$14;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$14;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1113
    return-void
.end method

.method public greylist-max-o startOtaIfNecessary(ILandroid/service/euicc/IOtaStatusChangedCallback;)V
    .registers 5

    .line 895
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->-$$Nest$fgetmExecutor(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$3;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$3;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/service/euicc/IOtaStatusChangedCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 910
    return-void
.end method

.method public blacklist switchToSubscription(IILjava/lang/String;ZLandroid/service/euicc/ISwitchToSubscriptionCallback;Z)V
    .registers 16

    .line 1031
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->-$$Nest$fgetmExecutor(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;

    move-object v2, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    move v3, p6

    invoke-direct/range {v1 .. v8}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ZIILjava/lang/String;ZLandroid/service/euicc/ISwitchToSubscriptionCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1049
    return-void
.end method

.method public greylist-max-o updateSubscriptionNickname(ILjava/lang/String;Ljava/lang/String;Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;)V
    .registers 12

    .line 1054
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->-$$Nest$fgetmExecutor(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$11;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$11;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILjava/lang/String;Ljava/lang/String;Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1066
    return-void
.end method
