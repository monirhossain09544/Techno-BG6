.class public abstract Landroid/service/games/IGameSessionController$Stub;
.super Landroid/os/Binder;
.source "IGameSessionController.java"

# interfaces
.implements Landroid/service/games/IGameSessionController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/games/IGameSessionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/games/IGameSessionController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_restartGame:I = 0x2

.field static final blacklist TRANSACTION_takeScreenshot:I = 0x1


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 43
    nop

    .line 44
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 43
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/service/games/IGameSessionController$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 45
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "android.service.games.IGameSessionController"

    invoke-virtual {p0, p0, v0}, Landroid/service/games/IGameSessionController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    if-eqz p1, :cond_d

    .line 38
    iput-object p1, p0, Landroid/service/games/IGameSessionController$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 39
    return-void

    .line 36
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/games/IGameSessionController;
    .registers 3

    .line 52
    if-nez p0, :cond_4

    .line 53
    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_4
    const-string v0, "android.service.games.IGameSessionController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/games/IGameSessionController;

    if-eqz v1, :cond_13

    .line 57
    check-cast v0, Landroid/service/games/IGameSessionController;

    return-object v0

    .line 59
    :cond_13
    new-instance v0, Landroid/service/games/IGameSessionController$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/service/games/IGameSessionController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 68
    packed-switch p0, :pswitch_data_e

    .line 80
    const/4 p0, 0x0

    return-object p0

    .line 76
    :pswitch_5
    const-string/jumbo p0, "restartGame"

    return-object p0

    .line 72
    :pswitch_9
    const-string/jumbo p0, "takeScreenshot"

    return-object p0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 63
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 87
    invoke-static {p1}, Landroid/service/games/IGameSessionController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 91
    nop

    .line 92
    const-string v0, "android.service.games.IGameSessionController"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 93
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 96
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    return v1

    .line 99
    :cond_17
    packed-switch p1, :pswitch_data_3e

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 114
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-virtual {p0, p1}, Landroid/service/games/IGameSessionController$Stub;->restartGame(I)V

    .line 117
    goto :goto_3d

    .line 104
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 106
    sget-object p3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/infra/AndroidFuture;

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 108
    invoke-virtual {p0, p1, p3}, Landroid/service/games/IGameSessionController$Stub;->takeScreenshot(ILcom/android/internal/infra/AndroidFuture;)V

    .line 109
    nop

    .line 124
    :goto_3d
    return v1

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method

.method protected blacklist restartGame_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Landroid/service/games/IGameSessionController$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/service/games/IGameSessionController$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/service/games/IGameSessionController$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_GAME_ACTIVITY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 176
    return-void
.end method

.method protected blacklist takeScreenshot_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Landroid/service/games/IGameSessionController$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/service/games/IGameSessionController$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/service/games/IGameSessionController$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_GAME_ACTIVITY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 171
    return-void
.end method
