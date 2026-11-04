.class public abstract Landroid/security/rkp/IGetKeyCallback$Stub;
.super Landroid/os/Binder;
.source "IGetKeyCallback.java"

# interfaces
.implements Landroid/security/rkp/IGetKeyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/rkp/IGetKeyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/rkp/IGetKeyCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onCancel:I = 0x2

.field static final blacklist TRANSACTION_onError:I = 0x3

.field static final blacklist TRANSACTION_onSuccess:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    const-string v0, "android.security.rkp.IGetKeyCallback"

    invoke-virtual {p0, p0, v0}, Landroid/security/rkp/IGetKeyCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/security/rkp/IGetKeyCallback;
    .registers 3

    .line 66
    if-nez p0, :cond_4

    .line 67
    const/4 p0, 0x0

    return-object p0

    .line 69
    :cond_4
    const-string v0, "android.security.rkp.IGetKeyCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/security/rkp/IGetKeyCallback;

    if-eqz v1, :cond_13

    .line 71
    check-cast v0, Landroid/security/rkp/IGetKeyCallback;

    return-object v0

    .line 73
    :cond_13
    new-instance v0, Landroid/security/rkp/IGetKeyCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/security/rkp/IGetKeyCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 82
    packed-switch p0, :pswitch_data_12

    .line 98
    const/4 p0, 0x0

    return-object p0

    .line 94
    :pswitch_5
    const-string/jumbo p0, "onError"

    return-object p0

    .line 90
    :pswitch_9
    const-string/jumbo p0, "onCancel"

    return-object p0

    .line 86
    :pswitch_d
    const-string/jumbo p0, "onSuccess"

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

    .line 77
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 223
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 105
    invoke-static {p1}, Landroid/security/rkp/IGetKeyCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 109
    nop

    .line 110
    const-string v0, "android.security.rkp.IGetKeyCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 111
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 114
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    return v1

    .line 117
    :cond_17
    packed-switch p1, :pswitch_data_42

    .line 144
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 135
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-virtual {p0, p1, p3}, Landroid/security/rkp/IGetKeyCallback$Stub;->onError(BLjava/lang/String;)V

    .line 140
    goto :goto_41

    .line 129
    :pswitch_2e
    invoke-virtual {p0}, Landroid/security/rkp/IGetKeyCallback$Stub;->onCancel()V

    .line 130
    goto :goto_41

    .line 122
    :pswitch_32
    sget-object p1, Landroid/security/rkp/RemotelyProvisionedKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/security/rkp/RemotelyProvisionedKey;

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    invoke-virtual {p0, p1}, Landroid/security/rkp/IGetKeyCallback$Stub;->onSuccess(Landroid/security/rkp/RemotelyProvisionedKey;)V

    .line 125
    nop

    .line 147
    :goto_41
    return v1

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_32
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
