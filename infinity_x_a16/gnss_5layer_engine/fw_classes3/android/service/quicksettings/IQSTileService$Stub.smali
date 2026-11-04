.class public abstract Landroid/service/quicksettings/IQSTileService$Stub;
.super Landroid/os/Binder;
.source "IQSTileService.java"

# interfaces
.implements Landroid/service/quicksettings/IQSTileService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quicksettings/IQSTileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/quicksettings/IQSTileService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.quicksettings.IQSTileService"

.field static final greylist-max-o TRANSACTION_onClick:I = 0x5

.field static final greylist-max-o TRANSACTION_onStartListening:I = 0x3

.field static final greylist-max-o TRANSACTION_onStopListening:I = 0x4

.field static final greylist-max-o TRANSACTION_onTileAdded:I = 0x1

.field static final greylist-max-o TRANSACTION_onTileRemoved:I = 0x2

.field static final greylist-max-o TRANSACTION_onUnlockComplete:I = 0x6


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "android.service.quicksettings.IQSTileService"

    invoke-virtual {p0, p0, v0}, Landroid/service/quicksettings/IQSTileService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/service/quicksettings/IQSTileService;
    .registers 3

    .line 54
    if-nez p0, :cond_4

    .line 55
    const/4 p0, 0x0

    return-object p0

    .line 57
    :cond_4
    const-string v0, "android.service.quicksettings.IQSTileService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/quicksettings/IQSTileService;

    if-eqz v1, :cond_13

    .line 59
    check-cast v0, Landroid/service/quicksettings/IQSTileService;

    return-object v0

    .line 61
    :cond_13
    new-instance v0, Landroid/service/quicksettings/IQSTileService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/service/quicksettings/IQSTileService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 70
    packed-switch p0, :pswitch_data_1e

    .line 98
    const/4 p0, 0x0

    return-object p0

    .line 94
    :pswitch_5
    const-string/jumbo p0, "onUnlockComplete"

    return-object p0

    .line 90
    :pswitch_9
    const-string/jumbo p0, "onClick"

    return-object p0

    .line 86
    :pswitch_d
    const-string/jumbo p0, "onStopListening"

    return-object p0

    .line 82
    :pswitch_11
    const-string/jumbo p0, "onStartListening"

    return-object p0

    .line 78
    :pswitch_15
    const-string/jumbo p0, "onTileRemoved"

    return-object p0

    .line 74
    :pswitch_19
    const-string/jumbo p0, "onTileAdded"

    return-object p0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 65
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 253
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 105
    invoke-static {p1}, Landroid/service/quicksettings/IQSTileService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 109
    nop

    .line 110
    const-string v0, "android.service.quicksettings.IQSTileService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 111
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 114
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    return v1

    .line 117
    :cond_17
    packed-switch p1, :pswitch_data_40

    .line 154
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 149
    :pswitch_1f
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSTileService$Stub;->onUnlockComplete()V

    .line 150
    goto :goto_3e

    .line 142
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {p0, p1}, Landroid/service/quicksettings/IQSTileService$Stub;->onClick(Landroid/os/IBinder;)V

    .line 145
    goto :goto_3e

    .line 136
    :pswitch_2e
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSTileService$Stub;->onStopListening()V

    .line 137
    goto :goto_3e

    .line 131
    :pswitch_32
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSTileService$Stub;->onStartListening()V

    .line 132
    goto :goto_3e

    .line 126
    :pswitch_36
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSTileService$Stub;->onTileRemoved()V

    .line 127
    goto :goto_3e

    .line 121
    :pswitch_3a
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSTileService$Stub;->onTileAdded()V

    .line 122
    nop

    .line 157
    :goto_3e
    return v1

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_36
        :pswitch_32
        :pswitch_2e
        :pswitch_23
        :pswitch_1f
    .end packed-switch
.end method
