.class public abstract Landroid/service/autofill/IAutoFillService$Stub;
.super Landroid/os/Binder;
.source "IAutoFillService.java"

# interfaces
.implements Landroid/service/autofill/IAutoFillService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/IAutoFillService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/IAutoFillService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.autofill.IAutoFillService"

.field static final greylist-max-o TRANSACTION_onConnectedStateChanged:I = 0x1

.field static final blacklist TRANSACTION_onConvertCredentialRequest:I = 0x6

.field static final blacklist TRANSACTION_onFillCredentialRequest:I = 0x3

.field static final greylist-max-o TRANSACTION_onFillRequest:I = 0x2

.field static final greylist-max-o TRANSACTION_onSaveRequest:I = 0x4

.field static final blacklist TRANSACTION_onSavedPasswordCountRequest:I = 0x5

.field static final blacklist TRANSACTION_onSessionDestroyed:I = 0x7


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 53
    const-string v0, "android.service.autofill.IAutoFillService"

    invoke-virtual {p0, p0, v0}, Landroid/service/autofill/IAutoFillService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/service/autofill/IAutoFillService;
    .registers 3

    .line 61
    if-nez p0, :cond_4

    .line 62
    const/4 p0, 0x0

    return-object p0

    .line 64
    :cond_4
    const-string v0, "android.service.autofill.IAutoFillService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/autofill/IAutoFillService;

    if-eqz v1, :cond_13

    .line 66
    check-cast v0, Landroid/service/autofill/IAutoFillService;

    return-object v0

    .line 68
    :cond_13
    new-instance v0, Landroid/service/autofill/IAutoFillService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/service/autofill/IAutoFillService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 77
    packed-switch p0, :pswitch_data_22

    .line 109
    const/4 p0, 0x0

    return-object p0

    .line 105
    :pswitch_5
    const-string/jumbo p0, "onSessionDestroyed"

    return-object p0

    .line 101
    :pswitch_9
    const-string/jumbo p0, "onConvertCredentialRequest"

    return-object p0

    .line 97
    :pswitch_d
    const-string/jumbo p0, "onSavedPasswordCountRequest"

    return-object p0

    .line 93
    :pswitch_11
    const-string/jumbo p0, "onSaveRequest"

    return-object p0

    .line 89
    :pswitch_15
    const-string/jumbo p0, "onFillCredentialRequest"

    return-object p0

    .line 85
    :pswitch_19
    const-string/jumbo p0, "onFillRequest"

    return-object p0

    .line 81
    :pswitch_1d
    const-string/jumbo p0, "onConnectedStateChanged"

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

    .line 72
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 320
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 116
    invoke-static {p1}, Landroid/service/autofill/IAutoFillService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 120
    nop

    .line 121
    const-string v0, "android.service.autofill.IAutoFillService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 122
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 125
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    return v1

    .line 128
    :cond_17
    packed-switch p1, :pswitch_data_aa

    .line 198
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 191
    :pswitch_1f
    sget-object p1, Landroid/service/autofill/FillEventHistory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/autofill/FillEventHistory;

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, p1}, Landroid/service/autofill/IAutoFillService$Stub;->onSessionDestroyed(Landroid/service/autofill/FillEventHistory;)V

    .line 194
    goto/16 :goto_a9

    .line 181
    :pswitch_2f
    sget-object p1, Landroid/service/autofill/ConvertCredentialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/autofill/ConvertCredentialRequest;

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/service/autofill/IConvertCredentialCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/autofill/IConvertCredentialCallback;

    move-result-object p3

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, p1, p3}, Landroid/service/autofill/IAutoFillService$Stub;->onConvertCredentialRequest(Landroid/service/autofill/ConvertCredentialRequest;Landroid/service/autofill/IConvertCredentialCallback;)V

    .line 186
    goto :goto_a9

    .line 173
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object p1

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {p0, p1}, Landroid/service/autofill/IAutoFillService$Stub;->onSavedPasswordCountRequest(Lcom/android/internal/os/IResultReceiver;)V

    .line 176
    goto :goto_a9

    .line 163
    :pswitch_55
    sget-object p1, Landroid/service/autofill/SaveRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/autofill/SaveRequest;

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/service/autofill/ISaveCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/autofill/ISaveCallback;

    move-result-object p3

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, p1, p3}, Landroid/service/autofill/IAutoFillService$Stub;->onSaveRequest(Landroid/service/autofill/SaveRequest;Landroid/service/autofill/ISaveCallback;)V

    .line 168
    goto :goto_a9

    .line 151
    :pswitch_6c
    sget-object p1, Landroid/service/autofill/FillRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/autofill/FillRequest;

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/service/autofill/IFillCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/autofill/IFillCallback;

    move-result-object p3

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, p1, p3, p4}, Landroid/service/autofill/IAutoFillService$Stub;->onFillCredentialRequest(Landroid/service/autofill/FillRequest;Landroid/service/autofill/IFillCallback;Landroid/os/IBinder;)V

    .line 158
    goto :goto_a9

    .line 141
    :pswitch_87
    sget-object p1, Landroid/service/autofill/FillRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/autofill/FillRequest;

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/service/autofill/IFillCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/autofill/IFillCallback;

    move-result-object p3

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, p1, p3}, Landroid/service/autofill/IAutoFillService$Stub;->onFillRequest(Landroid/service/autofill/FillRequest;Landroid/service/autofill/IFillCallback;)V

    .line 146
    goto :goto_a9

    .line 133
    :pswitch_9e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, p1}, Landroid/service/autofill/IAutoFillService$Stub;->onConnectedStateChanged(Z)V

    .line 136
    nop

    .line 201
    :goto_a9
    return v1

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_9e
        :pswitch_87
        :pswitch_6c
        :pswitch_55
        :pswitch_46
        :pswitch_2f
        :pswitch_1f
    .end packed-switch
.end method
