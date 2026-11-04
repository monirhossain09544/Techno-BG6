.class public abstract Landroid/se/omapi/ISecureElementSession$Stub;
.super Landroid/os/Binder;
.source "ISecureElementSession.java"

# interfaces
.implements Landroid/se/omapi/ISecureElementSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/se/omapi/ISecureElementSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/se/omapi/ISecureElementSession$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String;

.field static final greylist-max-o TRANSACTION_close:I = 0x2

.field static final greylist-max-o TRANSACTION_closeChannels:I = 0x3

.field static final greylist-max-o TRANSACTION_getAtr:I = 0x1

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final greylist-max-o TRANSACTION_isClosed:I = 0x4

.field static final greylist-max-o TRANSACTION_openBasicChannel:I = 0x5

.field static final greylist-max-o TRANSACTION_openLogicalChannel:I = 0x6


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 344
    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$se$omapi$ISecureElementSession"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/se/omapi/ISecureElementSession$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 66
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementSession$Stub;->markVintfStability()V

    .line 67
    sget-object v0, Landroid/se/omapi/ISecureElementSession$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/se/omapi/ISecureElementSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/se/omapi/ISecureElementSession;
    .registers 3

    .line 75
    if-nez p0, :cond_4

    .line 76
    const/4 p0, 0x0

    return-object p0

    .line 78
    :cond_4
    sget-object v0, Landroid/se/omapi/ISecureElementSession$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/se/omapi/ISecureElementSession;

    if-eqz v1, :cond_13

    .line 80
    check-cast v0, Landroid/se/omapi/ISecureElementSession;

    return-object v0

    .line 82
    :cond_13
    new-instance v0, Landroid/se/omapi/ISecureElementSession$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/se/omapi/ISecureElementSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 86
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    sget-object v0, Landroid/se/omapi/ISecureElementSession$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 91
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 92
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 95
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    return v2

    .line 98
    :cond_16
    if-ne p1, v1, :cond_23

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementSession$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    return v2

    .line 103
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementSession$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    return v2

    .line 108
    :cond_33
    packed-switch p1, :pswitch_data_9c

    .line 166
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 153
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p4

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/se/omapi/ISecureElementListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/se/omapi/ISecureElementListener;

    move-result-object v0

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, p1, p4, v0}, Landroid/se/omapi/ISecureElementSession$Stub;->openLogicalChannel([BBLandroid/se/omapi/ISecureElementListener;)Landroid/se/omapi/ISecureElementChannel;

    move-result-object p1

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 162
    goto :goto_9b

    .line 139
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p4

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/se/omapi/ISecureElementListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/se/omapi/ISecureElementListener;

    move-result-object v0

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, p1, p4, v0}, Landroid/se/omapi/ISecureElementSession$Stub;->openBasicChannel([BBLandroid/se/omapi/ISecureElementListener;)Landroid/se/omapi/ISecureElementChannel;

    move-result-object p1

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 148
    goto :goto_9b

    .line 131
    :pswitch_77
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementSession$Stub;->isClosed()Z

    move-result p1

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 134
    goto :goto_9b

    .line 125
    :pswitch_82
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementSession$Stub;->closeChannels()V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    goto :goto_9b

    .line 119
    :pswitch_89
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementSession$Stub;->close()V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    goto :goto_9b

    .line 112
    :pswitch_90
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementSession$Stub;->getAtr()[B

    move-result-object p1

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 115
    nop

    .line 169
    :goto_9b
    return v2

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_90
        :pswitch_89
        :pswitch_82
        :pswitch_77
        :pswitch_59
        :pswitch_3b
    .end packed-switch
.end method
