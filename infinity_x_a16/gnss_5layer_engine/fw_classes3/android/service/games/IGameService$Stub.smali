.class public abstract Landroid/service/games/IGameService$Stub;
.super Landroid/os/Binder;
.source "IGameService.java"

# interfaces
.implements Landroid/service/games/IGameService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/games/IGameService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/games/IGameService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_connected:I = 0x1

.field static final blacklist TRANSACTION_disconnected:I = 0x2

.field static final blacklist TRANSACTION_gameStarted:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "android.service.games.IGameService"

    invoke-virtual {p0, p0, v0}, Landroid/service/games/IGameService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/games/IGameService;
    .registers 3

    .line 45
    if-nez p0, :cond_4

    .line 46
    const/4 p0, 0x0

    return-object p0

    .line 48
    :cond_4
    const-string v0, "android.service.games.IGameService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/games/IGameService;

    if-eqz v1, :cond_13

    .line 50
    check-cast v0, Landroid/service/games/IGameService;

    return-object v0

    .line 52
    :cond_13
    new-instance v0, Landroid/service/games/IGameService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/service/games/IGameService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 61
    packed-switch p0, :pswitch_data_e

    .line 77
    const/4 p0, 0x0

    return-object p0

    .line 73
    :pswitch_5
    const-string p0, "gameStarted"

    return-object p0

    .line 69
    :pswitch_8
    const-string p0, "disconnected"

    return-object p0

    .line 65
    :pswitch_b
    const-string p0, "connected"

    return-object p0

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
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

    .line 183
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 84
    invoke-static {p1}, Landroid/service/games/IGameService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 88
    nop

    .line 89
    const-string v0, "android.service.games.IGameService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 90
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 93
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return v1

    .line 96
    :cond_17
    packed-switch p1, :pswitch_data_42

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 114
    :pswitch_1f
    sget-object p1, Landroid/service/games/GameStartedEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/games/GameStartedEvent;

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-virtual {p0, p1}, Landroid/service/games/IGameService$Stub;->gameStarted(Landroid/service/games/GameStartedEvent;)V

    .line 117
    goto :goto_41

    .line 108
    :pswitch_2e
    invoke-virtual {p0}, Landroid/service/games/IGameService$Stub;->disconnected()V

    .line 109
    goto :goto_41

    .line 101
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/service/games/IGameServiceController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/games/IGameServiceController;

    move-result-object p1

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 103
    invoke-virtual {p0, p1}, Landroid/service/games/IGameService$Stub;->connected(Landroid/service/games/IGameServiceController;)V

    .line 104
    nop

    .line 124
    :goto_41
    return v1

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_32
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
