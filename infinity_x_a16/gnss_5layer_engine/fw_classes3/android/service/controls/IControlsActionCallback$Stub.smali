.class public abstract Landroid/service/controls/IControlsActionCallback$Stub;
.super Landroid/os/Binder;
.source "IControlsActionCallback.java"

# interfaces
.implements Landroid/service/controls/IControlsActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/controls/IControlsActionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/controls/IControlsActionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_accept:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "android.service.controls.IControlsActionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/service/controls/IControlsActionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/controls/IControlsActionCallback;
    .registers 3

    .line 39
    if-nez p0, :cond_4

    .line 40
    const/4 p0, 0x0

    return-object p0

    .line 42
    :cond_4
    const-string v0, "android.service.controls.IControlsActionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/controls/IControlsActionCallback;

    if-eqz v1, :cond_13

    .line 44
    check-cast v0, Landroid/service/controls/IControlsActionCallback;

    return-object v0

    .line 46
    :cond_13
    new-instance v0, Landroid/service/controls/IControlsActionCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/service/controls/IControlsActionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 55
    packed-switch p0, :pswitch_data_8

    .line 63
    const/4 p0, 0x0

    return-object p0

    .line 59
    :pswitch_5
    const-string p0, "accept"

    return-object p0

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 50
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 70
    invoke-static {p1}, Landroid/service/controls/IControlsActionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 74
    nop

    .line 75
    const-string v0, "android.service.controls.IControlsActionCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 76
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 79
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    return v1

    .line 82
    :cond_17
    packed-switch p1, :pswitch_data_34

    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 87
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 93
    invoke-virtual {p0, p1, p3, p4}, Landroid/service/controls/IControlsActionCallback$Stub;->accept(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 94
    nop

    .line 101
    return v1

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_1f
    .end packed-switch
.end method
