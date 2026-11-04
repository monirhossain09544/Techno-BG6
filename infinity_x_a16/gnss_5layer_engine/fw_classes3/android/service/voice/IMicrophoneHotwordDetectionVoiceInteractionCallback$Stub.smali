.class public abstract Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback$Stub;
.super Landroid/os/Binder;
.source "IMicrophoneHotwordDetectionVoiceInteractionCallback.java"

# interfaces
.implements Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onDetected:I = 0x1

.field static final blacklist TRANSACTION_onHotwordDetectionServiceFailure:I = 0x2

.field static final blacklist TRANSACTION_onRejected:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "android.service.voice.IMicrophoneHotwordDetectionVoiceInteractionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;
    .registers 3

    .line 52
    if-nez p0, :cond_4

    .line 53
    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_4
    const-string v0, "android.service.voice.IMicrophoneHotwordDetectionVoiceInteractionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    if-eqz v1, :cond_13

    .line 57
    check-cast v0, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    return-object v0

    .line 59
    :cond_13
    new-instance v0, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 68
    packed-switch p0, :pswitch_data_12

    .line 84
    const/4 p0, 0x0

    return-object p0

    .line 80
    :pswitch_5
    const-string/jumbo p0, "onRejected"

    return-object p0

    .line 76
    :pswitch_9
    const-string/jumbo p0, "onHotwordDetectionServiceFailure"

    return-object p0

    .line 72
    :pswitch_d
    const-string/jumbo p0, "onDetected"

    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 63
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 203
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 91
    invoke-static {p1}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 95
    nop

    .line 96
    const-string v0, "android.service.voice.IMicrophoneHotwordDetectionVoiceInteractionCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 97
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 100
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return v1

    .line 103
    :cond_17
    packed-switch p1, :pswitch_data_5e

    .line 135
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 128
    :pswitch_1f
    sget-object p1, Landroid/service/voice/HotwordRejectedResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/voice/HotwordRejectedResult;

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 130
    invoke-virtual {p0, p1}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback$Stub;->onRejected(Landroid/service/voice/HotwordRejectedResult;)V

    .line 131
    goto :goto_5c

    .line 120
    :pswitch_2e
    sget-object p1, Landroid/service/voice/HotwordDetectionServiceFailure;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/voice/HotwordDetectionServiceFailure;

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 122
    invoke-virtual {p0, p1}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback$Stub;->onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V

    .line 123
    goto :goto_5c

    .line 108
    :pswitch_3d
    sget-object p1, Landroid/service/voice/HotwordDetectedResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/voice/HotwordDetectedResult;

    .line 110
    sget-object p3, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/AudioFormat;

    .line 112
    sget-object p4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/ParcelFileDescriptor;

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 114
    invoke-virtual {p0, p1, p3, p4}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback$Stub;->onDetected(Landroid/service/voice/HotwordDetectedResult;Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;)V

    .line 115
    nop

    .line 138
    :goto_5c
    return v1

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
