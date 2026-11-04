.class public abstract Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback$Stub;
.super Landroid/os/Binder;
.source "IVisualQueryDetectionVoiceInteractionCallback.java"

# interfaces
.implements Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onQueryDetected:I = 0x1

.field static final blacklist TRANSACTION_onQueryFinished:I = 0x3

.field static final blacklist TRANSACTION_onQueryRejected:I = 0x4

.field static final blacklist TRANSACTION_onResultDetected:I = 0x2

.field static final blacklist TRANSACTION_onVisualQueryDetectionServiceFailure:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string v0, "android.service.voice.IVisualQueryDetectionVoiceInteractionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;
    .registers 3

    .line 60
    if-nez p0, :cond_4

    .line 61
    const/4 p0, 0x0

    return-object p0

    .line 63
    :cond_4
    const-string v0, "android.service.voice.IVisualQueryDetectionVoiceInteractionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    if-eqz v1, :cond_13

    .line 65
    check-cast v0, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    return-object v0

    .line 67
    :cond_13
    new-instance v0, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 76
    packed-switch p0, :pswitch_data_1a

    .line 100
    const/4 p0, 0x0

    return-object p0

    .line 96
    :pswitch_5
    const-string/jumbo p0, "onVisualQueryDetectionServiceFailure"

    return-object p0

    .line 92
    :pswitch_9
    const-string/jumbo p0, "onQueryRejected"

    return-object p0

    .line 88
    :pswitch_d
    const-string/jumbo p0, "onQueryFinished"

    return-object p0

    .line 84
    :pswitch_11
    const-string/jumbo p0, "onResultDetected"

    return-object p0

    .line 80
    :pswitch_15
    const-string/jumbo p0, "onQueryDetected"

    return-object p0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
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

    .line 249
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 107
    invoke-static {p1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 111
    nop

    .line 112
    const-string v0, "android.service.voice.IVisualQueryDetectionVoiceInteractionCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 113
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 116
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    return v1

    .line 119
    :cond_17
    packed-switch p1, :pswitch_data_52

    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 150
    :pswitch_1f
    sget-object p1, Landroid/service/voice/VisualQueryDetectionServiceFailure;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, p1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback$Stub;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V

    .line 153
    goto :goto_50

    .line 144
    :pswitch_2e
    invoke-virtual {p0}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback$Stub;->onQueryRejected()V

    .line 145
    goto :goto_50

    .line 139
    :pswitch_32
    invoke-virtual {p0}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback$Stub;->onQueryFinished()V

    .line 140
    goto :goto_50

    .line 132
    :pswitch_36
    sget-object p1, Landroid/service/voice/VisualQueryDetectedResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/voice/VisualQueryDetectedResult;

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, p1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback$Stub;->onResultDetected(Landroid/service/voice/VisualQueryDetectedResult;)V

    .line 135
    goto :goto_50

    .line 124
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    invoke-virtual {p0, p1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback$Stub;->onQueryDetected(Ljava/lang/String;)V

    .line 127
    nop

    .line 160
    :goto_50
    return v1

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_45
        :pswitch_36
        :pswitch_32
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
