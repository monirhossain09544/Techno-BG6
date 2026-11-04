.class public abstract Landroid/service/dreams/IDreamService$Stub;
.super Landroid/os/Binder;
.source "IDreamService.java"

# interfaces
.implements Landroid/service/dreams/IDreamService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/IDreamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/dreams/IDreamService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.dreams.IDreamService"

.field static final greylist-max-o TRANSACTION_attach:I = 0x1

.field static final blacklist TRANSACTION_comeToFront:I = 0x4

.field static final greylist-max-o TRANSACTION_detach:I = 0x2

.field static final greylist-max-o TRANSACTION_wakeUp:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "android.service.dreams.IDreamService"

    invoke-virtual {p0, p0, v0}, Landroid/service/dreams/IDreamService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamService;
    .registers 3

    .line 48
    if-nez p0, :cond_4

    .line 49
    const/4 p0, 0x0

    return-object p0

    .line 51
    :cond_4
    const-string v0, "android.service.dreams.IDreamService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/dreams/IDreamService;

    if-eqz v1, :cond_13

    .line 53
    check-cast v0, Landroid/service/dreams/IDreamService;

    return-object v0

    .line 55
    :cond_13
    new-instance v0, Landroid/service/dreams/IDreamService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/service/dreams/IDreamService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 64
    packed-switch p0, :pswitch_data_12

    .line 84
    const/4 p0, 0x0

    return-object p0

    .line 80
    :pswitch_5
    const-string p0, "comeToFront"

    return-object p0

    .line 76
    :pswitch_8
    const-string/jumbo p0, "wakeUp"

    return-object p0

    .line 72
    :pswitch_c
    const-string p0, "detach"

    return-object p0

    .line 68
    :pswitch_f
    const-string p0, "attach"

    return-object p0

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 59
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 214
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 91
    invoke-static {p1}, Landroid/service/dreams/IDreamService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 95
    nop

    .line 96
    const-string v0, "android.service.dreams.IDreamService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 97
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 100
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return v1

    .line 103
    :cond_17
    packed-switch p1, :pswitch_data_48

    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 131
    :pswitch_1f
    invoke-virtual {p0}, Landroid/service/dreams/IDreamService$Stub;->comeToFront()V

    .line 132
    goto :goto_46

    .line 126
    :pswitch_23
    invoke-virtual {p0}, Landroid/service/dreams/IDreamService$Stub;->wakeUp()V

    .line 127
    goto :goto_46

    .line 121
    :pswitch_27
    invoke-virtual {p0}, Landroid/service/dreams/IDreamService$Stub;->detach()V

    .line 122
    goto :goto_46

    .line 108
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v0

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/service/dreams/IDreamService$Stub;->attach(Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;)V

    .line 117
    nop

    .line 139
    :goto_46
    return v1

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1f
    .end packed-switch
.end method
