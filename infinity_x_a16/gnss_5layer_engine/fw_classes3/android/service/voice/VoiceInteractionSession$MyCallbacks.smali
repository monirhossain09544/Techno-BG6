.class Landroid/service/voice/VoiceInteractionSession$MyCallbacks;
.super Ljava/lang/Object;
.source "VoiceInteractionSession.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;
.implements Landroid/service/voice/VoiceInteractionWindow$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyCallbacks"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/voice/VoiceInteractionSession;


# direct methods
.method constructor blacklist <init>(Landroid/service/voice/VoiceInteractionSession;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 916
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o executeMessage(Landroid/os/Message;)V
    .registers 13

    .line 919
    nop

    .line 920
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_10c

    goto/16 :goto_105

    .line 1020
    :sswitch_9
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;

    invoke-static {v0, p1}, Landroid/service/voice/VoiceInteractionSession;->-$$Nest$mdoUnregisterVisibleActivityCallback(Landroid/service/voice/VoiceInteractionSession;Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;)V

    goto/16 :goto_105

    .line 1012
    :sswitch_14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1013
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;

    invoke-static {p1, v0, v2}, Landroid/service/voice/VoiceInteractionSession;->-$$Nest$mdoRegisterVisibleActivityCallback(Landroid/service/voice/VoiceInteractionSession;Ljava/util/concurrent/Executor;Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;)V

    .line 1015
    goto/16 :goto_105

    .line 1006
    :sswitch_28
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/service/voice/VisibleActivityInfo;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v2, p1}, Landroid/service/voice/VoiceInteractionSession;->-$$Nest$mdoNotifyVisibleActivityInfoChanged(Landroid/service/voice/VoiceInteractionSession;Landroid/service/voice/VisibleActivityInfo;I)V

    .line 1007
    goto/16 :goto_105

    .line 998
    :sswitch_35
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionSession;->onLockscreenShown()V

    .line 999
    goto/16 :goto_105

    .line 994
    :sswitch_3c
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionSession;->doHide()V

    .line 995
    goto/16 :goto_105

    .line 985
    :sswitch_43
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 989
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    invoke-virtual {v0, v2, p1, v3}, Landroid/service/voice/VoiceInteractionSession;->doShow(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V

    .line 991
    goto/16 :goto_105

    .line 982
    :sswitch_59
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/service/voice/VoiceInteractionSession;->onHandleScreenshot(Landroid/graphics/Bitmap;)V

    .line 983
    goto/16 :goto_105

    .line 971
    :sswitch_64
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 976
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Landroid/os/IBinder;

    iget-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Landroid/os/Bundle;

    iget-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Landroid/app/assist/AssistStructure;

    iget-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Ljava/lang/Throwable;

    iget-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Landroid/app/assist/AssistContent;

    iget v9, v1, Lcom/android/internal/os/SomeArgs;->argi5:I

    iget v10, v1, Lcom/android/internal/os/SomeArgs;->argi6:I

    invoke-virtual/range {v2 .. v10}, Landroid/service/voice/VoiceInteractionSession;->doOnHandleAssist(ILandroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Ljava/lang/Throwable;Landroid/app/assist/AssistContent;II)V

    .line 979
    goto/16 :goto_105

    .line 968
    :sswitch_8f
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionSession;->doDestroy()V

    .line 969
    goto/16 :goto_105

    .line 964
    :sswitch_96
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionSession;->onCloseSystemDialogs()V

    .line 965
    goto :goto_105

    .line 960
    :sswitch_9c
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2, p1}, Landroid/service/voice/VoiceInteractionSession;->onTaskFinished(Landroid/content/Intent;I)V

    .line 961
    goto :goto_105

    .line 955
    :sswitch_a8
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2, p1}, Landroid/service/voice/VoiceInteractionSession;->onTaskStarted(Landroid/content/Intent;I)V

    .line 956
    goto :goto_105

    .line 950
    :sswitch_b4
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/service/voice/VoiceInteractionSession$Request;

    invoke-virtual {v0, p1}, Landroid/service/voice/VoiceInteractionSession;->onCancelRequest(Landroid/service/voice/VoiceInteractionSession$Request;)V

    .line 951
    goto :goto_105

    .line 942
    :sswitch_be
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 944
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/service/voice/VoiceInteractionSession;->onGetSupportedCommands([Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 945
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->complete()V

    .line 946
    nop

    .line 947
    goto :goto_105

    .line 939
    :sswitch_d3
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/service/voice/VoiceInteractionSession$CommandRequest;

    invoke-virtual {v0, p1}, Landroid/service/voice/VoiceInteractionSession;->onRequestCommand(Landroid/service/voice/VoiceInteractionSession$CommandRequest;)V

    .line 940
    goto :goto_105

    .line 935
    :sswitch_dd
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;

    invoke-virtual {v0, p1}, Landroid/service/voice/VoiceInteractionSession;->onRequestAbortVoice(Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;)V

    .line 936
    goto :goto_105

    .line 931
    :sswitch_e7
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;

    invoke-virtual {v0, p1}, Landroid/service/voice/VoiceInteractionSession;->onRequestCompleteVoice(Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;)V

    .line 932
    goto :goto_105

    .line 927
    :sswitch_f1
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;

    invoke-virtual {v0, p1}, Landroid/service/voice/VoiceInteractionSession;->onRequestPickOption(Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;)V

    .line 928
    goto :goto_105

    .line 923
    :sswitch_fb
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;

    invoke-virtual {v0, p1}, Landroid/service/voice/VoiceInteractionSession;->onRequestConfirmation(Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;)V

    .line 924
    nop

    .line 1023
    :goto_105
    if-eqz v1, :cond_10a

    .line 1024
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1026
    :cond_10a
    return-void

    nop

    :sswitch_data_10c
    .sparse-switch
        0x1 -> :sswitch_fb
        0x2 -> :sswitch_f1
        0x3 -> :sswitch_e7
        0x4 -> :sswitch_dd
        0x5 -> :sswitch_d3
        0x6 -> :sswitch_be
        0x7 -> :sswitch_b4
        0x64 -> :sswitch_a8
        0x65 -> :sswitch_9c
        0x66 -> :sswitch_96
        0x67 -> :sswitch_8f
        0x68 -> :sswitch_64
        0x69 -> :sswitch_59
        0x6a -> :sswitch_43
        0x6b -> :sswitch_3c
        0x6c -> :sswitch_35
        0x6d -> :sswitch_28
        0x6e -> :sswitch_14
        0x6f -> :sswitch_9
    .end sparse-switch
.end method

.method public greylist-max-o onBackPressed()V
    .registers 2

    .line 1030
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionSession;->onBackPressed()V

    .line 1031
    return-void
.end method
