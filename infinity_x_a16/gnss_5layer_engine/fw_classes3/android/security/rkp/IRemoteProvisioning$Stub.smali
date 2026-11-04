.class public abstract Landroid/security/rkp/IRemoteProvisioning$Stub;
.super Landroid/os/Binder;
.source "IRemoteProvisioning.java"

# interfaces
.implements Landroid/security/rkp/IRemoteProvisioning;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/rkp/IRemoteProvisioning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/rkp/IRemoteProvisioning$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getRegistration:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 66
    const-string v0, "android.security.rkp.IRemoteProvisioning"

    invoke-virtual {p0, p0, v0}, Landroid/security/rkp/IRemoteProvisioning$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/security/rkp/IRemoteProvisioning;
    .registers 3

    .line 74
    if-nez p0, :cond_4

    .line 75
    const/4 p0, 0x0

    return-object p0

    .line 77
    :cond_4
    const-string v0, "android.security.rkp.IRemoteProvisioning"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/security/rkp/IRemoteProvisioning;

    if-eqz v1, :cond_13

    .line 79
    check-cast v0, Landroid/security/rkp/IRemoteProvisioning;

    return-object v0

    .line 81
    :cond_13
    new-instance v0, Landroid/security/rkp/IRemoteProvisioning$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/security/rkp/IRemoteProvisioning$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 90
    packed-switch p0, :pswitch_data_8

    .line 98
    const/4 p0, 0x0

    return-object p0

    .line 94
    :pswitch_5
    const-string p0, "getRegistration"

    return-object p0

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 85
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 105
    invoke-static {p1}, Landroid/security/rkp/IRemoteProvisioning$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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
    const-string v0, "android.security.rkp.IRemoteProvisioning"

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
    packed-switch p1, :pswitch_data_34

    .line 131
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 122
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/security/rkp/IGetRegistrationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/rkp/IGetRegistrationCallback;

    move-result-object p3

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    invoke-virtual {p0, p1, p3}, Landroid/security/rkp/IRemoteProvisioning$Stub;->getRegistration(Ljava/lang/String;Landroid/security/rkp/IGetRegistrationCallback;)V

    .line 127
    nop

    .line 134
    return v1

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_1f
    .end packed-switch
.end method
