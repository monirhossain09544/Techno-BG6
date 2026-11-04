.class Landroid/service/voice/VoiceInteractionSessionService$2;
.super Ljava/lang/Object;
.source "VoiceInteractionSessionService.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/voice/VoiceInteractionSessionService;


# direct methods
.method constructor blacklist <init>(Landroid/service/voice/VoiceInteractionSessionService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 60
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSessionService$2;->this$0:Landroid/service/voice/VoiceInteractionSessionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist executeMessage(Landroid/os/Message;)V
    .registers 5

    .line 63
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 64
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_1a

    goto :goto_19

    .line 66
    :pswitch_a
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSessionService$2;->this$0:Landroid/service/voice/VoiceInteractionSessionService;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    iget v0, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-virtual {p1, v1, v2, v0}, Landroid/service/voice/VoiceInteractionSessionService;->doNewSession(Landroid/os/IBinder;Landroid/os/Bundle;I)V

    .line 69
    :goto_19
    return-void

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch
.end method
