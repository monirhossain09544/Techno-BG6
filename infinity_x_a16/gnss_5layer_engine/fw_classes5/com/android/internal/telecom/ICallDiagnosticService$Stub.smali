.class public abstract Lcom/android/internal/telecom/ICallDiagnosticService$Stub;
.super Landroid/os/Binder;
.source "ICallDiagnosticService.java"

# interfaces
.implements Lcom/android/internal/telecom/ICallDiagnosticService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ICallDiagnosticService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ICallDiagnosticService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_callQualityChanged:I = 0x7

.field static final blacklist TRANSACTION_initializeDiagnosticCall:I = 0x2

.field static final blacklist TRANSACTION_notifyCallDisconnected:I = 0x9

.field static final blacklist TRANSACTION_receiveBluetoothCallQualityReport:I = 0x8

.field static final blacklist TRANSACTION_receiveDeviceToDeviceMessage:I = 0x6

.field static final blacklist TRANSACTION_removeDiagnosticCall:I = 0x5

.field static final blacklist TRANSACTION_setAdapter:I = 0x1

.field static final blacklist TRANSACTION_updateCall:I = 0x3

.field static final blacklist TRANSACTION_updateCallAudioState:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 59
    const-string v0, "com.android.internal.telecom.ICallDiagnosticService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ICallDiagnosticService;
    .registers 3

    .line 67
    if-nez p0, :cond_4

    .line 68
    const/4 p0, 0x0

    return-object p0

    .line 70
    :cond_4
    const-string v0, "com.android.internal.telecom.ICallDiagnosticService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telecom/ICallDiagnosticService;

    if-eqz v1, :cond_13

    .line 72
    check-cast v0, Lcom/android/internal/telecom/ICallDiagnosticService;

    return-object v0

    .line 74
    :cond_13
    new-instance v0, Lcom/android/internal/telecom/ICallDiagnosticService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 83
    packed-switch p0, :pswitch_data_20

    .line 123
    const/4 p0, 0x0

    return-object p0

    .line 119
    :pswitch_5
    const-string p0, "notifyCallDisconnected"

    return-object p0

    .line 115
    :pswitch_8
    const-string p0, "receiveBluetoothCallQualityReport"

    return-object p0

    .line 111
    :pswitch_b
    const-string p0, "callQualityChanged"

    return-object p0

    .line 107
    :pswitch_e
    const-string p0, "receiveDeviceToDeviceMessage"

    return-object p0

    .line 103
    :pswitch_11
    const-string p0, "removeDiagnosticCall"

    return-object p0

    .line 99
    :pswitch_14
    const-string p0, "updateCallAudioState"

    return-object p0

    .line 95
    :pswitch_17
    const-string p0, "updateCall"

    return-object p0

    .line 91
    :pswitch_1a
    const-string p0, "initializeDiagnosticCall"

    return-object p0

    .line 87
    :pswitch_1d
    const-string p0, "setAdapter"

    return-object p0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1a
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

    .line 78
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 371
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 130
    invoke-static {p1}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 134
    nop

    .line 135
    const-string v0, "com.android.internal.telecom.ICallDiagnosticService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 136
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 139
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    return v1

    .line 142
    :cond_17
    packed-switch p1, :pswitch_data_b0

    .line 226
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 217
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 219
    sget-object p3, Landroid/telecom/DisconnectCause;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telecom/DisconnectCause;

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->notifyCallDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V

    .line 222
    goto/16 :goto_af

    .line 209
    :pswitch_33
    sget-object p1, Landroid/telecom/BluetoothCallQualityReport;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/BluetoothCallQualityReport;

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->receiveBluetoothCallQualityReport(Landroid/telecom/BluetoothCallQualityReport;)V

    .line 212
    goto :goto_af

    .line 199
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 201
    sget-object p3, Landroid/telephony/CallQuality;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/CallQuality;

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->callQualityChanged(Ljava/lang/String;Landroid/telephony/CallQuality;)V

    .line 204
    goto :goto_af

    .line 187
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->receiveDeviceToDeviceMessage(Ljava/lang/String;II)V

    .line 194
    goto :goto_af

    .line 179
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->removeDiagnosticCall(Ljava/lang/String;)V

    .line 182
    goto :goto_af

    .line 171
    :pswitch_73
    sget-object p1, Landroid/telecom/CallAudioState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/CallAudioState;

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->updateCallAudioState(Landroid/telecom/CallAudioState;)V

    .line 174
    goto :goto_af

    .line 163
    :pswitch_82
    sget-object p1, Landroid/telecom/ParcelableCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/ParcelableCall;

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->updateCall(Landroid/telecom/ParcelableCall;)V

    .line 166
    goto :goto_af

    .line 155
    :pswitch_91
    sget-object p1, Landroid/telecom/ParcelableCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/ParcelableCall;

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->initializeDiagnosticCall(Landroid/telecom/ParcelableCall;)V

    .line 158
    goto :goto_af

    .line 147
    :pswitch_a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;

    move-result-object p1

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->setAdapter(Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;)V

    .line 150
    nop

    .line 229
    :goto_af
    return v1

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_a0
        :pswitch_91
        :pswitch_82
        :pswitch_73
        :pswitch_68
        :pswitch_55
        :pswitch_42
        :pswitch_33
        :pswitch_1f
    .end packed-switch
.end method
