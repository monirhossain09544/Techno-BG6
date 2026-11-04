.class public abstract Landroid/os/incremental/IIncrementalServiceConnector$Stub;
.super Landroid/os/Binder;
.source "IIncrementalServiceConnector.java"

# interfaces
.implements Landroid/os/incremental/IIncrementalServiceConnector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/incremental/IIncrementalServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/incremental/IIncrementalServiceConnector$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_setStorageParams:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "android.os.incremental.IIncrementalServiceConnector"

    invoke-virtual {p0, p0, v0}, Landroid/os/incremental/IIncrementalServiceConnector$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/incremental/IIncrementalServiceConnector;
    .registers 3

    .line 45
    if-nez p0, :cond_4

    .line 46
    const/4 p0, 0x0

    return-object p0

    .line 48
    :cond_4
    const-string v0, "android.os.incremental.IIncrementalServiceConnector"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/incremental/IIncrementalServiceConnector;

    if-eqz v1, :cond_13

    .line 50
    check-cast v0, Landroid/os/incremental/IIncrementalServiceConnector;

    return-object v0

    .line 52
    :cond_13
    new-instance v0, Landroid/os/incremental/IIncrementalServiceConnector$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/incremental/IIncrementalServiceConnector$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 61
    packed-switch p0, :pswitch_data_a

    .line 69
    const/4 p0, 0x0

    return-object p0

    .line 65
    :pswitch_5
    const-string/jumbo p0, "setStorageParams"

    return-object p0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 56
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 76
    invoke-static {p1}, Landroid/os/incremental/IIncrementalServiceConnector$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 80
    nop

    .line 81
    const-string v0, "android.os.incremental.IIncrementalServiceConnector"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 82
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 85
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    return v1

    .line 88
    :cond_17
    packed-switch p1, :pswitch_data_32

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 93
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 95
    invoke-virtual {p0, p1}, Landroid/os/incremental/IIncrementalServiceConnector$Stub;->setStorageParams(Z)I

    move-result p1

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    nop

    .line 105
    return v1

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_1f
    .end packed-switch
.end method
