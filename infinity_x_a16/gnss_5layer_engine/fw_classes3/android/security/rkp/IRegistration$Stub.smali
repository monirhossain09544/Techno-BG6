.class public abstract Landroid/security/rkp/IRegistration$Stub;
.super Landroid/os/Binder;
.source "IRegistration.java"

# interfaces
.implements Landroid/security/rkp/IRegistration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/rkp/IRegistration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/rkp/IRegistration$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancelGetKey:I = 0x2

.field static final blacklist TRANSACTION_getKey:I = 0x1

.field static final blacklist TRANSACTION_storeUpgradedKeyAsync:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 94
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 95
    const-string v0, "android.security.rkp.IRegistration"

    invoke-virtual {p0, p0, v0}, Landroid/security/rkp/IRegistration$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/security/rkp/IRegistration;
    .registers 3

    .line 103
    if-nez p0, :cond_4

    .line 104
    const/4 p0, 0x0

    return-object p0

    .line 106
    :cond_4
    const-string v0, "android.security.rkp.IRegistration"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/security/rkp/IRegistration;

    if-eqz v1, :cond_13

    .line 108
    check-cast v0, Landroid/security/rkp/IRegistration;

    return-object v0

    .line 110
    :cond_13
    new-instance v0, Landroid/security/rkp/IRegistration$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/security/rkp/IRegistration$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 119
    packed-switch p0, :pswitch_data_10

    .line 135
    const/4 p0, 0x0

    return-object p0

    .line 131
    :pswitch_5
    const-string/jumbo p0, "storeUpgradedKeyAsync"

    return-object p0

    .line 127
    :pswitch_9
    const-string p0, "cancelGetKey"

    return-object p0

    .line 123
    :pswitch_c
    const-string p0, "getKey"

    return-object p0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 114
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 301
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 142
    invoke-static {p1}, Landroid/security/rkp/IRegistration$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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
    const-string v0, "android.security.rkp.IRegistration"

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
    packed-switch p1, :pswitch_data_5a

    .line 188
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 177
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p3

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/security/rkp/IStoreUpgradedKeyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/rkp/IStoreUpgradedKeyCallback;

    move-result-object p4

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, p1, p3, p4}, Landroid/security/rkp/IRegistration$Stub;->storeUpgradedKeyAsync([B[BLandroid/security/rkp/IStoreUpgradedKeyCallback;)V

    .line 184
    goto :goto_58

    .line 169
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/security/rkp/IGetKeyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/rkp/IGetKeyCallback;

    move-result-object p1

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {p0, p1}, Landroid/security/rkp/IRegistration$Stub;->cancelGetKey(Landroid/security/rkp/IGetKeyCallback;)V

    .line 172
    goto :goto_58

    .line 159
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/security/rkp/IGetKeyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/rkp/IGetKeyCallback;

    move-result-object p3

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    invoke-virtual {p0, p1, p3}, Landroid/security/rkp/IRegistration$Stub;->getKey(ILandroid/security/rkp/IGetKeyCallback;)V

    .line 164
    nop

    .line 191
    :goto_58
    return v1

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_45
        :pswitch_36
        :pswitch_1f
    .end packed-switch
.end method
