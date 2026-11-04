.class public abstract Landroid/service/assist/classification/IFieldClassificationCallback$Stub;
.super Landroid/os/Binder;
.source "IFieldClassificationCallback.java"

# interfaces
.implements Landroid/service/assist/classification/IFieldClassificationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/assist/classification/IFieldClassificationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/assist/classification/IFieldClassificationCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancel:I = 0x5

.field static final blacklist TRANSACTION_isCompleted:I = 0x4

.field static final blacklist TRANSACTION_onCancellable:I = 0x1

.field static final blacklist TRANSACTION_onFailure:I = 0x3

.field static final blacklist TRANSACTION_onSuccess:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 48
    const-string v0, "android.service.assist.classification.IFieldClassificationCallback"

    invoke-virtual {p0, p0, v0}, Landroid/service/assist/classification/IFieldClassificationCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/assist/classification/IFieldClassificationCallback;
    .registers 3

    .line 56
    if-nez p0, :cond_4

    .line 57
    const/4 p0, 0x0

    return-object p0

    .line 59
    :cond_4
    const-string v0, "android.service.assist.classification.IFieldClassificationCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/assist/classification/IFieldClassificationCallback;

    if-eqz v1, :cond_13

    .line 61
    check-cast v0, Landroid/service/assist/classification/IFieldClassificationCallback;

    return-object v0

    .line 63
    :cond_13
    new-instance v0, Landroid/service/assist/classification/IFieldClassificationCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/service/assist/classification/IFieldClassificationCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 72
    packed-switch p0, :pswitch_data_18

    .line 96
    const/4 p0, 0x0

    return-object p0

    .line 92
    :pswitch_5
    const-string p0, "cancel"

    return-object p0

    .line 88
    :pswitch_8
    const-string p0, "isCompleted"

    return-object p0

    .line 84
    :pswitch_b
    const-string/jumbo p0, "onFailure"

    return-object p0

    .line 80
    :pswitch_f
    const-string/jumbo p0, "onSuccess"

    return-object p0

    .line 76
    :pswitch_13
    const-string/jumbo p0, "onCancellable"

    return-object p0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 67
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 260
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 103
    invoke-static {p1}, Landroid/service/assist/classification/IFieldClassificationCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 107
    nop

    .line 108
    const-string v0, "android.service.assist.classification.IFieldClassificationCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 109
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 112
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    return v1

    .line 115
    :cond_17
    packed-switch p1, :pswitch_data_5e

    .line 156
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 150
    :pswitch_1f
    invoke-virtual {p0}, Landroid/service/assist/classification/IFieldClassificationCallback$Stub;->cancel()V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    goto :goto_5c

    .line 143
    :pswitch_26
    invoke-virtual {p0}, Landroid/service/assist/classification/IFieldClassificationCallback$Stub;->isCompleted()Z

    move-result p1

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 146
    goto :goto_5c

    .line 137
    :pswitch_31
    invoke-virtual {p0}, Landroid/service/assist/classification/IFieldClassificationCallback$Stub;->onFailure()V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    goto :goto_5c

    .line 129
    :pswitch_38
    sget-object p1, Landroid/service/assist/classification/FieldClassificationResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/assist/classification/FieldClassificationResponse;

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, p1}, Landroid/service/assist/classification/IFieldClassificationCallback$Stub;->onSuccess(Landroid/service/assist/classification/FieldClassificationResponse;)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    goto :goto_5c

    .line 120
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object p1

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 122
    invoke-virtual {p0, p1}, Landroid/service/assist/classification/IFieldClassificationCallback$Stub;->onCancellable(Landroid/os/ICancellationSignal;)V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    nop

    .line 159
    :goto_5c
    return v1

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_38
        :pswitch_31
        :pswitch_26
        :pswitch_1f
    .end packed-switch
.end method
