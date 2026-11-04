.class public abstract Landroid/service/voice/IVoiceInteractionSession$Stub;
.super Landroid/os/Binder;
.source "IVoiceInteractionSession.java"

# interfaces
.implements Landroid/service/voice/IVoiceInteractionSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/IVoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/IVoiceInteractionSession$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.voice.IVoiceInteractionSession"

.field static final greylist-max-o TRANSACTION_closeSystemDialogs:I = 0x7

.field static final greylist-max-o TRANSACTION_destroy:I = 0x9

.field static final greylist-max-o TRANSACTION_handleAssist:I = 0x3

.field static final greylist-max-o TRANSACTION_handleScreenshot:I = 0x4

.field static final greylist-max-o TRANSACTION_hide:I = 0x2

.field static final blacklist TRANSACTION_notifyVisibleActivityInfoChanged:I = 0xa

.field static final greylist-max-o TRANSACTION_onLockscreenShown:I = 0x8

.field static final greylist-max-o TRANSACTION_show:I = 0x1

.field static final greylist-max-o TRANSACTION_taskFinished:I = 0x6

.field static final greylist-max-o TRANSACTION_taskStarted:I = 0x5


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    const-string v0, "android.service.voice.IVoiceInteractionSession"

    invoke-virtual {p0, p0, v0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;
    .registers 3

    .line 66
    if-nez p0, :cond_4

    .line 67
    const/4 p0, 0x0

    return-object p0

    .line 69
    :cond_4
    const-string v0, "android.service.voice.IVoiceInteractionSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v1, :cond_13

    .line 71
    check-cast v0, Landroid/service/voice/IVoiceInteractionSession;

    return-object v0

    .line 73
    :cond_13
    new-instance v0, Landroid/service/voice/IVoiceInteractionSession$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/service/voice/IVoiceInteractionSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 82
    packed-switch p0, :pswitch_data_28

    .line 126
    const/4 p0, 0x0

    return-object p0

    .line 122
    :pswitch_5
    const-string/jumbo p0, "notifyVisibleActivityInfoChanged"

    return-object p0

    .line 118
    :pswitch_9
    const-string p0, "destroy"

    return-object p0

    .line 114
    :pswitch_c
    const-string/jumbo p0, "onLockscreenShown"

    return-object p0

    .line 110
    :pswitch_10
    const-string p0, "closeSystemDialogs"

    return-object p0

    .line 106
    :pswitch_13
    const-string/jumbo p0, "taskFinished"

    return-object p0

    .line 102
    :pswitch_17
    const-string/jumbo p0, "taskStarted"

    return-object p0

    .line 98
    :pswitch_1b
    const-string p0, "handleScreenshot"

    return-object p0

    .line 94
    :pswitch_1e
    const-string p0, "handleAssist"

    return-object p0

    .line 90
    :pswitch_21
    const-string p0, "hide"

    return-object p0

    .line 86
    :pswitch_24
    const-string/jumbo p0, "show"

    return-object p0

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 77
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 402
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 133
    invoke-static {p1}, Landroid/service/voice/IVoiceInteractionSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    nop

    .line 138
    const-string v0, "android.service.voice.IVoiceInteractionSession"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 139
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 142
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    return v1

    .line 145
    :cond_17
    packed-switch p1, :pswitch_data_ce

    .line 239
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 230
    :pswitch_20
    sget-object p1, Landroid/service/voice/VisibleActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/voice/VisibleActivityInfo;

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {p0, p1, p3}, Landroid/service/voice/IVoiceInteractionSession$Stub;->notifyVisibleActivityInfoChanged(Landroid/service/voice/VisibleActivityInfo;I)V

    .line 235
    goto/16 :goto_cd

    .line 224
    :pswitch_34
    invoke-virtual {p0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->destroy()V

    .line 225
    goto/16 :goto_cd

    .line 219
    :pswitch_39
    invoke-virtual {p0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->onLockscreenShown()V

    .line 220
    goto/16 :goto_cd

    .line 214
    :pswitch_3e
    invoke-virtual {p0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->closeSystemDialogs()V

    .line 215
    goto/16 :goto_cd

    .line 205
    :pswitch_43
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, p1, p3}, Landroid/service/voice/IVoiceInteractionSession$Stub;->taskFinished(Landroid/content/Intent;I)V

    .line 210
    goto/16 :goto_cd

    .line 195
    :pswitch_57
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, p1, p3}, Landroid/service/voice/IVoiceInteractionSession$Stub;->taskStarted(Landroid/content/Intent;I)V

    .line 200
    goto :goto_cd

    .line 187
    :pswitch_6a
    sget-object p1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {p0, p1}, Landroid/service/voice/IVoiceInteractionSession$Stub;->handleScreenshot(Landroid/graphics/Bitmap;)V

    .line 190
    goto :goto_cd

    .line 167
    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 171
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/os/Bundle;

    .line 173
    sget-object p1, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/app/assist/AssistStructure;

    .line 175
    sget-object p1, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Landroid/app/assist/AssistContent;

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/service/voice/IVoiceInteractionSession$Stub;->handleAssist(ILandroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;II)V

    .line 182
    goto :goto_cd

    .line 161
    :pswitch_ac
    move-object v2, p0

    invoke-virtual {p0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->hide()V

    .line 162
    goto :goto_cd

    .line 150
    :pswitch_b1
    move-object v2, p0

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    move-result-object p4

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    invoke-virtual {p0, p1, p3, p4}, Landroid/service/voice/IVoiceInteractionSession$Stub;->show(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V

    .line 157
    nop

    .line 242
    :goto_cd
    return v1

    :pswitch_data_ce
    .packed-switch 0x1
        :pswitch_b1
        :pswitch_ac
        :pswitch_79
        :pswitch_6a
        :pswitch_57
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_20
    .end packed-switch
.end method
