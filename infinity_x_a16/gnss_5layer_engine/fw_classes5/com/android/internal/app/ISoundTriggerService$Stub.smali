.class public abstract Lcom/android/internal/app/ISoundTriggerService$Stub;
.super Landroid/os/Binder;
.source "ISoundTriggerService.java"

# interfaces
.implements Lcom/android/internal/app/ISoundTriggerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ISoundTriggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ISoundTriggerService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.ISoundTriggerService"

.field static final blacklist TRANSACTION_attachAsMiddleman:I = 0x2

.field static final blacklist TRANSACTION_attachAsOriginator:I = 0x1

.field static final blacklist TRANSACTION_attachInjection:I = 0x4

.field static final blacklist TRANSACTION_listModuleProperties:I = 0x3

.field static final blacklist TRANSACTION_setInPhoneCallState:I = 0x5


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 86
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 87
    const-string v0, "com.android.internal.app.ISoundTriggerService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/ISoundTriggerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/ISoundTriggerService;
    .registers 3

    .line 95
    if-nez p0, :cond_4

    .line 96
    const/4 p0, 0x0

    return-object p0

    .line 98
    :cond_4
    const-string v0, "com.android.internal.app.ISoundTriggerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/app/ISoundTriggerService;

    if-eqz v1, :cond_13

    .line 100
    check-cast v0, Lcom/android/internal/app/ISoundTriggerService;

    return-object v0

    .line 102
    :cond_13
    new-instance v0, Lcom/android/internal/app/ISoundTriggerService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ISoundTriggerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 111
    packed-switch p0, :pswitch_data_14

    .line 135
    const/4 p0, 0x0

    return-object p0

    .line 131
    :pswitch_5
    const-string p0, "setInPhoneCallState"

    return-object p0

    .line 127
    :pswitch_8
    const-string p0, "attachInjection"

    return-object p0

    .line 123
    :pswitch_b
    const-string p0, "listModuleProperties"

    return-object p0

    .line 119
    :pswitch_e
    const-string p0, "attachAsMiddleman"

    return-object p0

    .line 115
    :pswitch_11
    const-string p0, "attachAsOriginator"

    return-object p0

    :pswitch_data_14
    .packed-switch 0x1
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

    .line 106
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 370
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 142
    invoke-static {p1}, Lcom/android/internal/app/ISoundTriggerService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 146
    nop

    .line 147
    const-string v0, "com.android.internal.app.ISoundTriggerService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 148
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 151
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    return v1

    .line 154
    :cond_17
    packed-switch p1, :pswitch_data_a2

    .line 216
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 208
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ISoundTriggerService$Stub;->setInPhoneCallState(Z)V

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    goto :goto_a1

    .line 199
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    move-result-object p1

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ISoundTriggerService$Stub;->attachInjection(Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    goto :goto_a1

    .line 189
    :pswitch_3f
    sget-object p1, Landroid/media/permission/Identity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/permission/Identity;

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ISoundTriggerService$Stub;->listModuleProperties(Landroid/media/permission/Identity;)Ljava/util/List;

    move-result-object p1

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 194
    goto :goto_a1

    .line 173
    :pswitch_55
    sget-object p1, Landroid/media/permission/Identity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/permission/Identity;

    .line 175
    sget-object p4, Landroid/media/permission/Identity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/media/permission/Identity;

    .line 177
    sget-object v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-virtual {p0, p1, p4, v0, v2}, Lcom/android/internal/app/ISoundTriggerService$Stub;->attachAsMiddleman(Landroid/media/permission/Identity;Landroid/media/permission/Identity;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Landroid/os/IBinder;)Lcom/android/internal/app/ISoundTriggerSession;

    move-result-object p1

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 184
    goto :goto_a1

    .line 159
    :pswitch_7f
    sget-object p1, Landroid/media/permission/Identity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/permission/Identity;

    .line 161
    sget-object p4, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/app/ISoundTriggerService$Stub;->attachAsOriginator(Landroid/media/permission/Identity;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Landroid/os/IBinder;)Lcom/android/internal/app/ISoundTriggerSession;

    move-result-object p1

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 168
    nop

    .line 219
    :goto_a1
    return v1

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_7f
        :pswitch_55
        :pswitch_3f
        :pswitch_2d
        :pswitch_1f
    .end packed-switch
.end method
