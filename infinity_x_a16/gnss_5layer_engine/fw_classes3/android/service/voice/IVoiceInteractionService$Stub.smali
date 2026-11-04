.class public abstract Landroid/service/voice/IVoiceInteractionService$Stub;
.super Landroid/os/Binder;
.source "IVoiceInteractionService.java"

# interfaces
.implements Landroid/service/voice/IVoiceInteractionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/IVoiceInteractionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/IVoiceInteractionService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.voice.IVoiceInteractionService"

.field static final blacklist TRANSACTION_detectorRemoteExceptionOccurred:I = 0x8

.field static final blacklist TRANSACTION_getActiveServiceSupportedActions:I = 0x5

.field static final greylist-max-o TRANSACTION_launchVoiceAssistFromKeyguard:I = 0x4

.field static final blacklist TRANSACTION_prepareToShowSession:I = 0x6

.field static final greylist-max-o TRANSACTION_ready:I = 0x1

.field static final blacklist TRANSACTION_showSessionFailed:I = 0x7

.field static final greylist-max-o TRANSACTION_shutdown:I = 0x3

.field static final greylist-max-o TRANSACTION_soundModelsChanged:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string v0, "android.service.voice.IVoiceInteractionService"

    invoke-virtual {p0, p0, v0}, Landroid/service/voice/IVoiceInteractionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionService;
    .registers 3

    .line 60
    if-nez p0, :cond_4

    .line 61
    const/4 p0, 0x0

    return-object p0

    .line 63
    :cond_4
    const-string v0, "android.service.voice.IVoiceInteractionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/voice/IVoiceInteractionService;

    if-eqz v1, :cond_13

    .line 65
    check-cast v0, Landroid/service/voice/IVoiceInteractionService;

    return-object v0

    .line 67
    :cond_13
    new-instance v0, Landroid/service/voice/IVoiceInteractionService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/service/voice/IVoiceInteractionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 76
    packed-switch p0, :pswitch_data_22

    .line 112
    const/4 p0, 0x0

    return-object p0

    .line 108
    :pswitch_5
    const-string p0, "detectorRemoteExceptionOccurred"

    return-object p0

    .line 104
    :pswitch_8
    const-string/jumbo p0, "showSessionFailed"

    return-object p0

    .line 100
    :pswitch_c
    const-string/jumbo p0, "prepareToShowSession"

    return-object p0

    .line 96
    :pswitch_10
    const-string p0, "getActiveServiceSupportedActions"

    return-object p0

    .line 92
    :pswitch_13
    const-string p0, "launchVoiceAssistFromKeyguard"

    return-object p0

    .line 88
    :pswitch_16
    const-string/jumbo p0, "shutdown"

    return-object p0

    .line 84
    :pswitch_1a
    const-string/jumbo p0, "soundModelsChanged"

    return-object p0

    .line 80
    :pswitch_1e
    const-string/jumbo p0, "ready"

    return-object p0

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1a
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 71
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 322
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 119
    invoke-static {p1}, Landroid/service/voice/IVoiceInteractionService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    nop

    .line 124
    const-string v0, "android.service.voice.IVoiceInteractionService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 125
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 128
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    return v1

    .line 131
    :cond_17
    packed-switch p1, :pswitch_data_74

    .line 193
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 184
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-virtual {p0, p1, p3}, Landroid/service/voice/IVoiceInteractionService$Stub;->detectorRemoteExceptionOccurred(Landroid/os/IBinder;I)V

    .line 189
    goto :goto_73

    .line 176
    :pswitch_2e
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    invoke-virtual {p0, p1}, Landroid/service/voice/IVoiceInteractionService$Stub;->showSessionFailed(Landroid/os/Bundle;)V

    .line 179
    goto :goto_73

    .line 166
    :pswitch_3d
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-virtual {p0, p1, p3}, Landroid/service/voice/IVoiceInteractionService$Stub;->prepareToShowSession(Landroid/os/Bundle;I)V

    .line 171
    goto :goto_73

    .line 156
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/app/IVoiceActionCheckCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceActionCheckCallback;

    move-result-object p3

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-virtual {p0, p1, p3}, Landroid/service/voice/IVoiceInteractionService$Stub;->getActiveServiceSupportedActions(Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V

    .line 161
    goto :goto_73

    .line 150
    :pswitch_63
    invoke-virtual {p0}, Landroid/service/voice/IVoiceInteractionService$Stub;->launchVoiceAssistFromKeyguard()V

    .line 151
    goto :goto_73

    .line 145
    :pswitch_67
    invoke-virtual {p0}, Landroid/service/voice/IVoiceInteractionService$Stub;->shutdown()V

    .line 146
    goto :goto_73

    .line 140
    :pswitch_6b
    invoke-virtual {p0}, Landroid/service/voice/IVoiceInteractionService$Stub;->soundModelsChanged()V

    .line 141
    goto :goto_73

    .line 135
    :pswitch_6f
    invoke-virtual {p0}, Landroid/service/voice/IVoiceInteractionService$Stub;->ready()V

    .line 136
    nop

    .line 196
    :goto_73
    return v1

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_6f
        :pswitch_6b
        :pswitch_67
        :pswitch_63
        :pswitch_50
        :pswitch_3d
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
