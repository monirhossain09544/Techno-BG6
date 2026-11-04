.class public abstract Landroid/service/autofill/augmented/IFillCallback$Stub;
.super Landroid/os/Binder;
.source "IFillCallback.java"

# interfaces
.implements Landroid/service/autofill/augmented/IFillCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/augmented/IFillCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/augmented/IFillCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancel:I = 0x4

.field static final blacklist TRANSACTION_isCompleted:I = 0x3

.field static final blacklist TRANSACTION_onCancellable:I = 0x1

.field static final blacklist TRANSACTION_onSuccess:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 45
    const-string v0, "android.service.autofill.augmented.IFillCallback"

    invoke-virtual {p0, p0, v0}, Landroid/service/autofill/augmented/IFillCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/autofill/augmented/IFillCallback;
    .registers 3

    .line 53
    if-nez p0, :cond_4

    .line 54
    const/4 p0, 0x0

    return-object p0

    .line 56
    :cond_4
    const-string v0, "android.service.autofill.augmented.IFillCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/autofill/augmented/IFillCallback;

    if-eqz v1, :cond_13

    .line 58
    check-cast v0, Landroid/service/autofill/augmented/IFillCallback;

    return-object v0

    .line 60
    :cond_13
    new-instance v0, Landroid/service/autofill/augmented/IFillCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/service/autofill/augmented/IFillCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 69
    packed-switch p0, :pswitch_data_14

    .line 89
    const/4 p0, 0x0

    return-object p0

    .line 85
    :pswitch_5
    const-string p0, "cancel"

    return-object p0

    .line 81
    :pswitch_8
    const-string p0, "isCompleted"

    return-object p0

    .line 77
    :pswitch_b
    const-string/jumbo p0, "onSuccess"

    return-object p0

    .line 73
    :pswitch_f
    const-string/jumbo p0, "onCancellable"

    return-object p0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 64
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 238
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 96
    invoke-static {p1}, Landroid/service/autofill/augmented/IFillCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 100
    nop

    .line 101
    const-string v0, "android.service.autofill.augmented.IFillCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 102
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 105
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    return v1

    .line 108
    :cond_17
    packed-switch p1, :pswitch_data_60

    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 141
    :pswitch_1f
    invoke-virtual {p0}, Landroid/service/autofill/augmented/IFillCallback$Stub;->cancel()V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    goto :goto_5f

    .line 134
    :pswitch_26
    invoke-virtual {p0}, Landroid/service/autofill/augmented/IFillCallback$Stub;->isCompleted()Z

    move-result p1

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 137
    goto :goto_5f

    .line 122
    :pswitch_31
    sget-object p1, Landroid/service/autofill/Dataset;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 124
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, p1, p4, v0}, Landroid/service/autofill/augmented/IFillCallback$Stub;->onSuccess(Ljava/util/List;Landroid/os/Bundle;Z)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    goto :goto_5f

    .line 113
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object p1

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 115
    invoke-virtual {p0, p1}, Landroid/service/autofill/augmented/IFillCallback$Stub;->onCancellable(Landroid/os/ICancellationSignal;)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    nop

    .line 150
    :goto_5f
    return v1

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_31
        :pswitch_26
        :pswitch_1f
    .end packed-switch
.end method
