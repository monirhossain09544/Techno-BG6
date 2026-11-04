.class public abstract Landroid/se/omapi/ISecureElementService$Stub;
.super Landroid/os/Binder;
.source "ISecureElementService.java"

# interfaces
.implements Landroid/se/omapi/ISecureElementService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/se/omapi/ISecureElementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/se/omapi/ISecureElementService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String;

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final greylist-max-o TRANSACTION_getReader:I = 0x2

.field static final greylist-max-o TRANSACTION_getReaders:I = 0x1

.field static final blacklist TRANSACTION_isNfcEventAllowed:I = 0x3


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 258
    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$se$omapi$ISecureElementService"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/se/omapi/ISecureElementService$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 56
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementService$Stub;->markVintfStability()V

    .line 57
    sget-object v0, Landroid/se/omapi/ISecureElementService$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/se/omapi/ISecureElementService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/se/omapi/ISecureElementService;
    .registers 3

    .line 65
    if-nez p0, :cond_4

    .line 66
    const/4 p0, 0x0

    return-object p0

    .line 68
    :cond_4
    sget-object v0, Landroid/se/omapi/ISecureElementService$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/se/omapi/ISecureElementService;

    if-eqz v1, :cond_13

    .line 70
    check-cast v0, Landroid/se/omapi/ISecureElementService;

    return-object v0

    .line 72
    :cond_13
    new-instance v0, Landroid/se/omapi/ISecureElementService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/se/omapi/ISecureElementService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 76
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    sget-object v0, Landroid/se/omapi/ISecureElementService$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 81
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 82
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 85
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    return v2

    .line 88
    :cond_16
    if-ne p1, v1, :cond_23

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementService$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    return v2

    .line 93
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementService$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    return v2

    .line 98
    :cond_33
    packed-switch p1, :pswitch_data_78

    .line 135
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 120
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, p1, p4, v0, v1}, Landroid/se/omapi/ISecureElementService$Stub;->isNfcEventAllowed(Ljava/lang/String;[B[Ljava/lang/String;I)[Z

    move-result-object p1

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 131
    goto :goto_76

    .line 110
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    invoke-virtual {p0, p1}, Landroid/se/omapi/ISecureElementService$Stub;->getReader(Ljava/lang/String;)Landroid/se/omapi/ISecureElementReader;

    move-result-object p1

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 115
    goto :goto_76

    .line 102
    :pswitch_6b
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementService$Stub;->getReaders()[Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 105
    nop

    .line 138
    :goto_76
    return v2

    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_59
        :pswitch_3b
    .end packed-switch
.end method
