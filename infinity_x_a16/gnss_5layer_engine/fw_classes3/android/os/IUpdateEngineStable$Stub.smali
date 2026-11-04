.class public abstract Landroid/os/IUpdateEngineStable$Stub;
.super Landroid/os/Binder;
.source "IUpdateEngineStable.java"

# interfaces
.implements Landroid/os/IUpdateEngineStable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IUpdateEngineStable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IUpdateEngineStable$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_applyPayloadFd:I = 0x1

.field static final blacklist TRANSACTION_bind:I = 0x2

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_unbind:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    sget-object v0, Landroid/os/IUpdateEngineStable$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/IUpdateEngineStable$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateEngineStable;
    .registers 3

    .line 66
    if-nez p0, :cond_4

    .line 67
    const/4 p0, 0x0

    return-object p0

    .line 69
    :cond_4
    sget-object v0, Landroid/os/IUpdateEngineStable$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IUpdateEngineStable;

    if-eqz v1, :cond_13

    .line 71
    check-cast v0, Landroid/os/IUpdateEngineStable;

    return-object v0

    .line 73
    :cond_13
    new-instance v0, Landroid/os/IUpdateEngineStable$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IUpdateEngineStable$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 77
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    sget-object v0, Landroid/os/IUpdateEngineStable$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 82
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 83
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 86
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    return v2

    .line 89
    :cond_16
    if-ne p1, v1, :cond_23

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p0}, Landroid/os/IUpdateEngineStable$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    return v2

    .line 94
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p0}, Landroid/os/IUpdateEngineStable$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    return v2

    .line 99
    :cond_33
    packed-switch p1, :pswitch_data_88

    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 129
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/IUpdateEngineStableCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateEngineStableCallback;

    move-result-object p1

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, p1}, Landroid/os/IUpdateEngineStable$Stub;->unbind(Landroid/os/IUpdateEngineStableCallback;)Z

    move-result p1

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 134
    goto :goto_87

    .line 119
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/IUpdateEngineStableCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateEngineStableCallback;

    move-result-object p1

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, p1}, Landroid/os/IUpdateEngineStable$Stub;->bind(Landroid/os/IUpdateEngineStableCallback;)Z

    move-result p1

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 124
    goto :goto_87

    .line 104
    :pswitch_67
    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v9

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/os/IUpdateEngineStable$Stub;->applyPayloadFd(Landroid/os/ParcelFileDescriptor;JJ[Ljava/lang/String;)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    nop

    .line 141
    :goto_87
    return v2

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_67
        :pswitch_51
        :pswitch_3b
    .end packed-switch
.end method
