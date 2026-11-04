.class public abstract Landroid/service/games/IGameServiceController$Stub;
.super Landroid/os/Binder;
.source "IGameServiceController.java"

# interfaces
.implements Landroid/service/games/IGameServiceController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/games/IGameServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/games/IGameServiceController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createGameSession:I = 0x1


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 40
    nop

    .line 41
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 40
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/service/games/IGameServiceController$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 42
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "android.service.games.IGameServiceController"

    invoke-virtual {p0, p0, v0}, Landroid/service/games/IGameServiceController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 32
    if-eqz p1, :cond_d

    .line 35
    iput-object p1, p0, Landroid/service/games/IGameServiceController$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 36
    return-void

    .line 33
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/games/IGameServiceController;
    .registers 3

    .line 49
    if-nez p0, :cond_4

    .line 50
    const/4 p0, 0x0

    return-object p0

    .line 52
    :cond_4
    const-string v0, "android.service.games.IGameServiceController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/games/IGameServiceController;

    if-eqz v1, :cond_13

    .line 54
    check-cast v0, Landroid/service/games/IGameServiceController;

    return-object v0

    .line 56
    :cond_13
    new-instance v0, Landroid/service/games/IGameServiceController$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/service/games/IGameServiceController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 65
    packed-switch p0, :pswitch_data_8

    .line 73
    const/4 p0, 0x0

    return-object p0

    .line 69
    :pswitch_5
    const-string p0, "createGameSession"

    return-object p0

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 60
    return-object p0
.end method

.method protected blacklist createGameSession_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Landroid/service/games/IGameServiceController$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/service/games/IGameServiceController$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/service/games/IGameServiceController$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_GAME_ACTIVITY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 141
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 80
    invoke-static {p1}, Landroid/service/games/IGameServiceController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 84
    nop

    .line 85
    const-string v0, "android.service.games.IGameServiceController"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 86
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 89
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    return v1

    .line 92
    :cond_17
    packed-switch p1, :pswitch_data_2c

    .line 104
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 97
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 99
    invoke-virtual {p0, p1}, Landroid/service/games/IGameServiceController$Stub;->createGameSession(I)V

    .line 100
    nop

    .line 107
    return v1

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_1f
    .end packed-switch
.end method
