.class public abstract Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter$Stub;
.super Landroid/os/Binder;
.source "ICallDiagnosticServiceAdapter.java"

# interfaces
.implements Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_clearDiagnosticMessage:I = 0x2

.field static final blacklist TRANSACTION_displayDiagnosticMessage:I = 0x1

.field static final blacklist TRANSACTION_overrideDisconnectMessage:I = 0x4

.field static final blacklist TRANSACTION_sendDeviceToDeviceMessage:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "com.android.internal.telecom.ICallDiagnosticServiceAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;
    .registers 3

    .line 52
    if-nez p0, :cond_4

    .line 53
    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_4
    const-string v0, "com.android.internal.telecom.ICallDiagnosticServiceAdapter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;

    if-eqz v1, :cond_13

    .line 57
    check-cast v0, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;

    return-object v0

    .line 59
    :cond_13
    new-instance v0, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 68
    packed-switch p0, :pswitch_data_12

    .line 88
    const/4 p0, 0x0

    return-object p0

    .line 84
    :pswitch_5
    const-string p0, "overrideDisconnectMessage"

    return-object p0

    .line 80
    :pswitch_8
    const-string p0, "sendDeviceToDeviceMessage"

    return-object p0

    .line 76
    :pswitch_b
    const-string p0, "clearDiagnosticMessage"

    return-object p0

    .line 72
    :pswitch_e
    const-string p0, "displayDiagnosticMessage"

    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
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

    .line 249
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 95
    invoke-static {p1}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 99
    nop

    .line 100
    const-string v0, "com.android.internal.telecom.ICallDiagnosticServiceAdapter"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 101
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 104
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v1

    .line 107
    :cond_17
    packed-switch p1, :pswitch_data_6c

    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 146
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 148
    sget-object p3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter$Stub;->overrideDisconnectMessage(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 151
    goto :goto_6b

    .line 134
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter$Stub;->sendDeviceToDeviceMessage(Ljava/lang/String;II)V

    .line 141
    goto :goto_6b

    .line 124
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter$Stub;->clearDiagnosticMessage(Ljava/lang/String;I)V

    .line 129
    goto :goto_6b

    .line 112
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 116
    sget-object p4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/CharSequence;

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter$Stub;->displayDiagnosticMessage(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 119
    nop

    .line 158
    :goto_6b
    return v1

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_54
        :pswitch_45
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method
