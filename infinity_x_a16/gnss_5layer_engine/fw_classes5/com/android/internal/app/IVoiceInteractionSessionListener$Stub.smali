.class public abstract Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;
.super Landroid/os/Binder;
.source "IVoiceInteractionSessionListener.java"

# interfaces
.implements Lcom/android/internal/app/IVoiceInteractionSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IVoiceInteractionSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IVoiceInteractionSessionListener"

.field static final blacklist TRANSACTION_onSetInvocationEffectEnabled:I = 0x5

.field static final blacklist TRANSACTION_onSetUiHints:I = 0x4

.field static final greylist-max-o TRANSACTION_onVoiceSessionHidden:I = 0x2

.field static final greylist-max-o TRANSACTION_onVoiceSessionShown:I = 0x1

.field static final blacklist TRANSACTION_onVoiceSessionWindowVisibilityChanged:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 51
    const-string v0, "com.android.internal.app.IVoiceInteractionSessionListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionSessionListener;
    .registers 3

    .line 59
    if-nez p0, :cond_4

    .line 60
    const/4 p0, 0x0

    return-object p0

    .line 62
    :cond_4
    const-string v0, "com.android.internal.app.IVoiceInteractionSessionListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/app/IVoiceInteractionSessionListener;

    if-eqz v1, :cond_13

    .line 64
    check-cast v0, Lcom/android/internal/app/IVoiceInteractionSessionListener;

    return-object v0

    .line 66
    :cond_13
    new-instance v0, Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 75
    packed-switch p0, :pswitch_data_14

    .line 99
    const/4 p0, 0x0

    return-object p0

    .line 95
    :pswitch_5
    const-string p0, "onSetInvocationEffectEnabled"

    return-object p0

    .line 91
    :pswitch_8
    const-string p0, "onSetUiHints"

    return-object p0

    .line 87
    :pswitch_b
    const-string p0, "onVoiceSessionWindowVisibilityChanged"

    return-object p0

    .line 83
    :pswitch_e
    const-string p0, "onVoiceSessionHidden"

    return-object p0

    .line 79
    :pswitch_11
    const-string p0, "onVoiceSessionShown"

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

    .line 70
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 254
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 106
    invoke-static {p1}, Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 110
    nop

    .line 111
    const-string v0, "com.android.internal.app.IVoiceInteractionSessionListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 112
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 115
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    return v1

    .line 118
    :cond_17
    packed-switch p1, :pswitch_data_4e

    .line 156
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 149
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;->onSetInvocationEffectEnabled(Z)V

    .line 152
    goto :goto_4c

    .line 141
    :pswitch_2a
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;->onSetUiHints(Landroid/os/Bundle;)V

    .line 144
    goto :goto_4c

    .line 133
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, p1}, Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;->onVoiceSessionWindowVisibilityChanged(Z)V

    .line 136
    goto :goto_4c

    .line 127
    :pswitch_44
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;->onVoiceSessionHidden()V

    .line 128
    goto :goto_4c

    .line 122
    :pswitch_48
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;->onVoiceSessionShown()V

    .line 123
    nop

    .line 159
    :goto_4c
    return v1

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_48
        :pswitch_44
        :pswitch_39
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
