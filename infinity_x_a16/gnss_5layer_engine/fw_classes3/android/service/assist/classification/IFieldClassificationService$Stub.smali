.class public abstract Landroid/service/assist/classification/IFieldClassificationService$Stub;
.super Landroid/os/Binder;
.source "IFieldClassificationService.java"

# interfaces
.implements Landroid/service/assist/classification/IFieldClassificationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/assist/classification/IFieldClassificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/assist/classification/IFieldClassificationService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onConnected:I = 0x1

.field static final blacklist TRANSACTION_onDisconnected:I = 0x2

.field static final blacklist TRANSACTION_onFieldClassificationRequest:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    const-string v0, "android.service.assist.classification.IFieldClassificationService"

    invoke-virtual {p0, p0, v0}, Landroid/service/assist/classification/IFieldClassificationService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/assist/classification/IFieldClassificationService;
    .registers 3

    .line 49
    if-nez p0, :cond_4

    .line 50
    const/4 p0, 0x0

    return-object p0

    .line 52
    :cond_4
    const-string v0, "android.service.assist.classification.IFieldClassificationService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/assist/classification/IFieldClassificationService;

    if-eqz v1, :cond_13

    .line 54
    check-cast v0, Landroid/service/assist/classification/IFieldClassificationService;

    return-object v0

    .line 56
    :cond_13
    new-instance v0, Landroid/service/assist/classification/IFieldClassificationService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/service/assist/classification/IFieldClassificationService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 65
    packed-switch p0, :pswitch_data_12

    .line 81
    const/4 p0, 0x0

    return-object p0

    .line 77
    :pswitch_5
    const-string/jumbo p0, "onFieldClassificationRequest"

    return-object p0

    .line 73
    :pswitch_9
    const-string/jumbo p0, "onDisconnected"

    return-object p0

    .line 69
    :pswitch_d
    const-string/jumbo p0, "onConnected"

    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 60
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 193
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 88
    invoke-static {p1}, Landroid/service/assist/classification/IFieldClassificationService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 92
    nop

    .line 93
    const-string v0, "android.service.assist.classification.IFieldClassificationService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 94
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 97
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return v1

    .line 100
    :cond_17
    packed-switch p1, :pswitch_data_4a

    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 120
    :pswitch_1f
    sget-object p1, Landroid/service/assist/classification/FieldClassificationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/assist/classification/FieldClassificationRequest;

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/service/assist/classification/IFieldClassificationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/assist/classification/IFieldClassificationCallback;

    move-result-object p3

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    invoke-virtual {p0, p1, p3}, Landroid/service/assist/classification/IFieldClassificationService$Stub;->onFieldClassificationRequest(Landroid/service/assist/classification/FieldClassificationRequest;Landroid/service/assist/classification/IFieldClassificationCallback;)V

    .line 125
    goto :goto_49

    .line 114
    :pswitch_36
    invoke-virtual {p0}, Landroid/service/assist/classification/IFieldClassificationService$Stub;->onDisconnected()V

    .line 115
    goto :goto_49

    .line 105
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 109
    invoke-virtual {p0, p1, p3}, Landroid/service/assist/classification/IFieldClassificationService$Stub;->onConnected(ZZ)V

    .line 110
    nop

    .line 132
    :goto_49
    return v1

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_36
        :pswitch_1f
    .end packed-switch
.end method
