.class public abstract Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub;
.super Landroid/os/Binder;
.source "IVoiceInteractionSoundTriggerSession.java"

# interfaces
.implements Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_detach:I = 0x7

.field static final blacklist TRANSACTION_getDspModuleProperties:I = 0x1

.field static final blacklist TRANSACTION_getParameter:I = 0x5

.field static final blacklist TRANSACTION_queryParameter:I = 0x6

.field static final blacklist TRANSACTION_setParameter:I = 0x4

.field static final blacklist TRANSACTION_startRecognition:I = 0x2

.field static final blacklist TRANSACTION_stopRecognition:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 119
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 120
    const-string v0, "com.android.internal.app.IVoiceInteractionSoundTriggerSession"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;
    .registers 3

    .line 128
    if-nez p0, :cond_4

    .line 129
    const/4 p0, 0x0

    return-object p0

    .line 131
    :cond_4
    const-string v0, "com.android.internal.app.IVoiceInteractionSoundTriggerSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    if-eqz v1, :cond_13

    .line 133
    check-cast v0, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    return-object v0

    .line 135
    :cond_13
    new-instance v0, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 144
    packed-switch p0, :pswitch_data_1a

    .line 176
    const/4 p0, 0x0

    return-object p0

    .line 172
    :pswitch_5
    const-string p0, "detach"

    return-object p0

    .line 168
    :pswitch_8
    const-string p0, "queryParameter"

    return-object p0

    .line 164
    :pswitch_b
    const-string p0, "getParameter"

    return-object p0

    .line 160
    :pswitch_e
    const-string p0, "setParameter"

    return-object p0

    .line 156
    :pswitch_11
    const-string p0, "stopRecognition"

    return-object p0

    .line 152
    :pswitch_14
    const-string p0, "startRecognition"

    return-object p0

    .line 148
    :pswitch_17
    const-string p0, "getDspModuleProperties"

    return-object p0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 139
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 500
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 183
    invoke-static {p1}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    nop

    .line 188
    const-string v0, "com.android.internal.app.IVoiceInteractionSoundTriggerSession"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 189
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 192
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    return v1

    .line 195
    :cond_17
    packed-switch p1, :pswitch_data_c0

    .line 280
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 274
    :pswitch_1f
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub;->detach()V

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    goto/16 :goto_bf

    .line 263
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 267
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub;->queryParameter(II)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    move-result-object p1

    .line 268
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 270
    goto/16 :goto_bf

    .line 251
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 255
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub;->getParameter(II)I

    move-result p1

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    goto :goto_bf

    .line 237
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub;->setParameter(III)I

    move-result p1

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    goto :goto_bf

    .line 225
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    move-result-object p4

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub;->stopRecognition(ILcom/android/internal/app/IHotwordRecognitionStatusCallback;)I

    move-result p1

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    goto :goto_bf

    .line 207
    :pswitch_88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    move-result-object v5

    .line 213
    sget-object p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub;->startRecognition(ILjava/lang/String;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I

    move-result p1

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    goto :goto_bf

    .line 199
    :pswitch_b4
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub;->getDspModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object p1

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 202
    nop

    .line 283
    :goto_bf
    return v1

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_b4
        :pswitch_88
        :pswitch_6e
        :pswitch_54
        :pswitch_3e
        :pswitch_27
        :pswitch_1f
    .end packed-switch
.end method
