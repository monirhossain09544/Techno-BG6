.class final Landroid/media/tv/TvInputService$ServiceHandler;
.super Landroid/os/Handler;
.source "TvInputService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# static fields
.field private static final greylist-max-o DO_ADD_HARDWARE_INPUT:I = 0x4

.field private static final greylist-max-o DO_ADD_HDMI_INPUT:I = 0x6

.field private static final greylist-max-o DO_CREATE_RECORDING_SESSION:I = 0x3

.field private static final greylist-max-o DO_CREATE_SESSION:I = 0x1

.field private static final greylist-max-o DO_NOTIFY_SESSION_CREATED:I = 0x2

.field private static final greylist-max-o DO_REMOVE_HARDWARE_INPUT:I = 0x5

.field private static final greylist-max-o DO_REMOVE_HDMI_INPUT:I = 0x7

.field private static final blacklist DO_UPDATE_HDMI_INPUT:I = 0x8


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/TvInputService;


# direct methods
.method private constructor blacklist <init>(Landroid/media/tv/TvInputService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2882
    iput-object p1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/TvInputService;Landroid/media/tv/TvInputService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/TvInputService$ServiceHandler;-><init>(Landroid/media/tv/TvInputService;)V

    return-void
.end method

.method private greylist-max-o broadcastAddHardwareInput(ILandroid/media/tv/TvInputInfo;)V
    .registers 8

    .line 2893
    iget-object v0, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v0}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2894
    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_28

    .line 2896
    :try_start_d
    iget-object v2, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v2}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/tv/ITvInputServiceCallback;

    invoke-interface {v2, p1, p2}, Landroid/media/tv/ITvInputServiceCallback;->addHardwareInput(ILandroid/media/tv/TvInputInfo;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1c} :catch_1d

    .line 2899
    goto :goto_25

    .line 2897
    :catch_1d
    move-exception v2

    .line 2898
    const-string v3, "TvInputService"

    const-string v4, "error in broadcastAddHardwareInput"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2894
    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 2901
    :cond_28
    iget-object p1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {p1}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2902
    return-void
.end method

.method private greylist-max-o broadcastAddHdmiInput(ILandroid/media/tv/TvInputInfo;)V
    .registers 8

    .line 2905
    iget-object v0, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v0}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2906
    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_28

    .line 2908
    :try_start_d
    iget-object v2, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v2}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/tv/ITvInputServiceCallback;

    invoke-interface {v2, p1, p2}, Landroid/media/tv/ITvInputServiceCallback;->addHdmiInput(ILandroid/media/tv/TvInputInfo;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1c} :catch_1d

    .line 2911
    goto :goto_25

    .line 2909
    :catch_1d
    move-exception v2

    .line 2910
    const-string v3, "TvInputService"

    const-string v4, "error in broadcastAddHdmiInput"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2906
    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 2913
    :cond_28
    iget-object p1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {p1}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2914
    return-void
.end method

.method private greylist-max-o broadcastRemoveHardwareInput(Ljava/lang/String;)V
    .registers 7

    .line 2917
    iget-object v0, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v0}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2918
    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_28

    .line 2920
    :try_start_d
    iget-object v2, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v2}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/tv/ITvInputServiceCallback;

    invoke-interface {v2, p1}, Landroid/media/tv/ITvInputServiceCallback;->removeHardwareInput(Ljava/lang/String;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1c} :catch_1d

    .line 2923
    goto :goto_25

    .line 2921
    :catch_1d
    move-exception v2

    .line 2922
    const-string v3, "TvInputService"

    const-string v4, "error in broadcastRemoveHardwareInput"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2918
    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 2925
    :cond_28
    iget-object p1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {p1}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2926
    return-void
.end method


# virtual methods
.method public final whitelist handleMessage(Landroid/os/Message;)V
    .registers 11

    .line 2930
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "error in onSessionCreated"

    const/4 v2, 0x0

    const-string v3, "TvInputService"

    packed-switch v0, :pswitch_data_190

    .line 3071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled message code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3072
    return-void

    .line 3066
    :pswitch_23
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 3067
    iget-object v0, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputService;->onHdmiDeviceUpdated(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 3068
    return-void

    .line 3058
    :pswitch_2d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 3059
    iget-object v0, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputService;->onHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)Ljava/lang/String;

    move-result-object p1

    .line 3060
    if-eqz p1, :cond_3c

    .line 3061
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputService$ServiceHandler;->broadcastRemoveHardwareInput(Ljava/lang/String;)V

    .line 3063
    :cond_3c
    return-void

    .line 3050
    :pswitch_3d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 3051
    iget-object v0, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputService;->onHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/media/tv/TvInputInfo;

    move-result-object v0

    .line 3052
    if-eqz v0, :cond_50

    .line 3053
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result p1

    invoke-direct {p0, p1, v0}, Landroid/media/tv/TvInputService$ServiceHandler;->broadcastAddHdmiInput(ILandroid/media/tv/TvInputInfo;)V

    .line 3055
    :cond_50
    return-void

    .line 3042
    :pswitch_51
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/tv/TvInputHardwareInfo;

    .line 3043
    iget-object v0, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputService;->onHardwareRemoved(Landroid/media/tv/TvInputHardwareInfo;)Ljava/lang/String;

    move-result-object p1

    .line 3044
    if-eqz p1, :cond_60

    .line 3045
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputService$ServiceHandler;->broadcastRemoveHardwareInput(Ljava/lang/String;)V

    .line 3047
    :cond_60
    return-void

    .line 3034
    :pswitch_61
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/tv/TvInputHardwareInfo;

    .line 3035
    iget-object v0, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputService;->onHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)Landroid/media/tv/TvInputInfo;

    move-result-object v0

    .line 3036
    if-eqz v0, :cond_74

    .line 3037
    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result p1

    invoke-direct {p0, p1, v0}, Landroid/media/tv/TvInputService$ServiceHandler;->broadcastAddHardwareInput(ILandroid/media/tv/TvInputInfo;)V

    .line 3039
    :cond_74
    return-void

    .line 3007
    :pswitch_75
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 3008
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/media/tv/ITvInputSessionCallback;

    .line 3009
    iget-object v4, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 3010
    iget-object v5, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 3011
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3012
    iget-object p1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    .line 3013
    invoke-virtual {p1, v4, v5}, Landroid/media/tv/TvInputService;->onCreateRecordingSession(Ljava/lang/String;Ljava/lang/String;)Landroid/media/tv/TvInputService$RecordingSession;

    move-result-object p1

    .line 3014
    if-nez p1, :cond_99

    .line 3017
    :try_start_90
    invoke-interface {v0, v2, v2}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_93
    .catch Landroid/os/RemoteException; {:try_start_90 .. :try_end_93} :catch_94

    .line 3020
    goto :goto_98

    .line 3018
    :catch_94
    move-exception p1

    .line 3019
    invoke-static {v3, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3021
    :goto_98
    return-void

    .line 3023
    :cond_99
    new-instance v4, Landroid/media/tv/ITvInputSessionWrapper;

    iget-object v5, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-direct {v4, v5, p1}, Landroid/media/tv/ITvInputSessionWrapper;-><init>(Landroid/content/Context;Landroid/media/tv/TvInputService$RecordingSession;)V

    .line 3026
    :try_start_a0
    invoke-interface {v0, v4, v2}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_a3
    .catch Landroid/os/RemoteException; {:try_start_a0 .. :try_end_a3} :catch_a4

    .line 3029
    goto :goto_a8

    .line 3027
    :catch_a4
    move-exception v2

    .line 3028
    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3030
    :goto_a8
    invoke-static {p1, v0}, Landroid/media/tv/TvInputService$RecordingSession;->-$$Nest$minitialize(Landroid/media/tv/TvInputService$RecordingSession;Landroid/media/tv/ITvInputSessionCallback;)V

    .line 3031
    return-void

    .line 2990
    :pswitch_ac
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 2991
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/media/tv/TvInputService$Session;

    .line 2992
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/media/tv/ITvInputSession;

    .line 2993
    iget-object v4, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Landroid/media/tv/ITvInputSessionCallback;

    .line 2994
    iget-object v5, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v5, Landroid/os/IBinder;

    .line 2996
    :try_start_c0
    invoke-interface {v4, v2, v5}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_c3
    .catch Landroid/os/RemoteException; {:try_start_c0 .. :try_end_c3} :catch_c4

    .line 2999
    goto :goto_c8

    .line 2997
    :catch_c4
    move-exception v2

    .line 2998
    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3000
    :goto_c8
    if-eqz v0, :cond_cd

    .line 3001
    invoke-static {v0, v4}, Landroid/media/tv/TvInputService$Session;->-$$Nest$minitialize(Landroid/media/tv/TvInputService$Session;Landroid/media/tv/ITvInputSessionCallback;)V

    .line 3003
    :cond_cd
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3004
    return-void

    .line 2932
    :pswitch_d1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 2933
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/view/InputChannel;

    .line 2934
    iget-object v4, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/media/tv/ITvInputSessionCallback;

    .line 2935
    iget-object v5, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 2936
    iget-object v6, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 2937
    iget-object v7, p1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v7, Landroid/content/AttributionSource;

    .line 2938
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2939
    iget-object p1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    .line 2940
    invoke-virtual {p1, v5, v6, v7}, Landroid/media/tv/TvInputService;->onCreateSession(Ljava/lang/String;Ljava/lang/String;Landroid/content/AttributionSource;)Landroid/media/tv/TvInputService$Session;

    move-result-object p1

    .line 2941
    if-nez p1, :cond_fd

    .line 2944
    :try_start_f4
    invoke-interface {v4, v2, v2}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_f7
    .catch Landroid/os/RemoteException; {:try_start_f4 .. :try_end_f7} :catch_f8

    .line 2947
    goto :goto_fc

    .line 2945
    :catch_f8
    move-exception p1

    .line 2946
    invoke-static {v3, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2948
    :goto_fc
    return-void

    .line 2950
    :cond_fd
    new-instance v5, Landroid/media/tv/ITvInputSessionWrapper;

    iget-object v6, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-direct {v5, v6, p1, v0}, Landroid/media/tv/ITvInputSessionWrapper;-><init>(Landroid/content/Context;Landroid/media/tv/TvInputService$Session;Landroid/view/InputChannel;)V

    .line 2952
    instance-of v0, p1, Landroid/media/tv/TvInputService$HardwareSession;

    if-eqz v0, :cond_174

    .line 2953
    move-object v0, p1

    check-cast v0, Landroid/media/tv/TvInputService$HardwareSession;

    .line 2955
    invoke-virtual {v0}, Landroid/media/tv/TvInputService$HardwareSession;->getHardwareInputId()Ljava/lang/String;

    move-result-object v6

    .line 2956
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_146

    iget-object v8, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    .line 2957
    invoke-static {v8, v6}, Landroid/media/tv/TvInputService;->-$$Nest$misPassthroughInput(Landroid/media/tv/TvInputService;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_11e

    goto :goto_146

    .line 2971
    :cond_11e
    invoke-static {v0, v5}, Landroid/media/tv/TvInputService$HardwareSession;->-$$Nest$fputmProxySession(Landroid/media/tv/TvInputService$HardwareSession;Landroid/media/tv/ITvInputSession;)V

    .line 2972
    invoke-static {v0, v4}, Landroid/media/tv/TvInputService$HardwareSession;->-$$Nest$fputmProxySessionCallback(Landroid/media/tv/TvInputService$HardwareSession;Landroid/media/tv/ITvInputSessionCallback;)V

    .line 2973
    iget-object p1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {p1}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmServiceHandler(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/media/tv/TvInputService$HardwareSession;->-$$Nest$fputmServiceHandler(Landroid/media/tv/TvInputService$HardwareSession;Landroid/os/Handler;)V

    .line 2974
    iget-object p1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    const-string/jumbo v1, "tv_input"

    invoke-virtual {p1, v1}, Landroid/media/tv/TvInputService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/tv/TvInputManager;

    .line 2976
    invoke-static {v0}, Landroid/media/tv/TvInputService$HardwareSession;->-$$Nest$fgetmHardwareSessionCallback(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/TvInputManager$SessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v1}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmServiceHandler(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p1, v6, v7, v0, v1}, Landroid/media/tv/TvInputManager;->createSession(Ljava/lang/String;Landroid/content/AttributionSource;Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V

    .line 2978
    goto :goto_18e

    .line 2958
    :cond_146
    :goto_146
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_152

    .line 2959
    const-string v0, "Hardware input id is not setup yet."

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_168

    .line 2961
    :cond_152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid hardware input id : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2963
    :goto_168
    invoke-virtual {p1}, Landroid/media/tv/TvInputService$Session;->onRelease()V

    .line 2965
    :try_start_16b
    invoke-interface {v4, v2, v2}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_16e
    .catch Landroid/os/RemoteException; {:try_start_16b .. :try_end_16e} :catch_16f

    .line 2968
    goto :goto_173

    .line 2966
    :catch_16f
    move-exception p1

    .line 2967
    invoke-static {v3, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2969
    :goto_173
    return-void

    .line 2979
    :cond_174
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 2980
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2981
    iput-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2982
    iput-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 2983
    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 2984
    iget-object p1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {p1}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmServiceHandler(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2985
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2987
    :goto_18e
    return-void

    nop

    :pswitch_data_190
    .packed-switch 0x1
        :pswitch_d1
        :pswitch_ac
        :pswitch_75
        :pswitch_61
        :pswitch_51
        :pswitch_3d
        :pswitch_2d
        :pswitch_23
    .end packed-switch
.end method
