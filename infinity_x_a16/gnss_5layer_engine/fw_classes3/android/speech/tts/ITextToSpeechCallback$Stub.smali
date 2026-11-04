.class public abstract Landroid/speech/tts/ITextToSpeechCallback$Stub;
.super Landroid/os/Binder;
.source "ITextToSpeechCallback.java"

# interfaces
.implements Landroid/speech/tts/ITextToSpeechCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/ITextToSpeechCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/ITextToSpeechCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.speech.tts.ITextToSpeechCallback"

.field static final greylist-max-o TRANSACTION_onAudioAvailable:I = 0x6

.field static final greylist-max-o TRANSACTION_onBeginSynthesis:I = 0x5

.field static final greylist-max-o TRANSACTION_onError:I = 0x4

.field static final greylist-max-o TRANSACTION_onRangeStart:I = 0x7

.field static final greylist-max-o TRANSACTION_onStart:I = 0x1

.field static final greylist-max-o TRANSACTION_onStop:I = 0x3

.field static final greylist-max-o TRANSACTION_onSuccess:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 118
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 119
    const-string v0, "android.speech.tts.ITextToSpeechCallback"

    invoke-virtual {p0, p0, v0}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/speech/tts/ITextToSpeechCallback;
    .registers 3

    .line 127
    if-nez p0, :cond_4

    .line 128
    const/4 p0, 0x0

    return-object p0

    .line 130
    :cond_4
    const-string v0, "android.speech.tts.ITextToSpeechCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/speech/tts/ITextToSpeechCallback;

    if-eqz v1, :cond_13

    .line 132
    check-cast v0, Landroid/speech/tts/ITextToSpeechCallback;

    return-object v0

    .line 134
    :cond_13
    new-instance v0, Landroid/speech/tts/ITextToSpeechCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/speech/tts/ITextToSpeechCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 143
    packed-switch p0, :pswitch_data_22

    .line 175
    const/4 p0, 0x0

    return-object p0

    .line 171
    :pswitch_5
    const-string/jumbo p0, "onRangeStart"

    return-object p0

    .line 167
    :pswitch_9
    const-string/jumbo p0, "onAudioAvailable"

    return-object p0

    .line 163
    :pswitch_d
    const-string/jumbo p0, "onBeginSynthesis"

    return-object p0

    .line 159
    :pswitch_11
    const-string/jumbo p0, "onError"

    return-object p0

    .line 155
    :pswitch_15
    const-string/jumbo p0, "onStop"

    return-object p0

    .line 151
    :pswitch_19
    const-string/jumbo p0, "onSuccess"

    return-object p0

    .line 147
    :pswitch_1d
    const-string/jumbo p0, "onStart"

    return-object p0

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_19
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

    .line 138
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 464
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 182
    invoke-static {p1}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 186
    nop

    .line 187
    const-string v0, "android.speech.tts.ITextToSpeechCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 188
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 191
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    return v1

    .line 194
    :cond_17
    packed-switch p1, :pswitch_data_92

    .line 272
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 259
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 267
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->onRangeStart(Ljava/lang/String;III)V

    .line 268
    goto :goto_90

    .line 249
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p3

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {p0, p1, p3}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->onAudioAvailable(Ljava/lang/String;[B)V

    .line 254
    goto :goto_90

    .line 235
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->onBeginSynthesis(Ljava/lang/String;III)V

    .line 244
    goto :goto_90

    .line 225
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, p1, p3}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->onError(Ljava/lang/String;I)V

    .line 230
    goto :goto_90

    .line 215
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    invoke-virtual {p0, p1, p3}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->onStop(Ljava/lang/String;Z)V

    .line 220
    goto :goto_90

    .line 207
    :pswitch_7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, p1}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->onSuccess(Ljava/lang/String;)V

    .line 210
    goto :goto_90

    .line 199
    :pswitch_85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, p1}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->onStart(Ljava/lang/String;)V

    .line 202
    nop

    .line 275
    :goto_90
    return v1

    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_85
        :pswitch_7a
        :pswitch_6b
        :pswitch_5c
        :pswitch_45
        :pswitch_36
        :pswitch_1f
    .end packed-switch
.end method
