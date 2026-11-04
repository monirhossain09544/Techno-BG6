.class public abstract Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;
.super Landroid/os/Binder;
.source "ISuspendControlServiceInternal.java"

# interfaces
.implements Landroid/system/suspend/internal/ISuspendControlServiceInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/suspend/internal/ISuspendControlServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_enableAutosuspend:I = 0x1

.field static final blacklist TRANSACTION_forceSuspend:I = 0x2

.field static final blacklist TRANSACTION_getSuspendStats:I = 0x6

.field static final blacklist TRANSACTION_getWakeLockStats:I = 0x3

.field static final blacklist TRANSACTION_getWakeLockStatsFiltered:I = 0x4

.field static final blacklist TRANSACTION_getWakeupStats:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 71
    const-string v0, "android.system.suspend.internal.ISuspendControlServiceInternal"

    invoke-virtual {p0, p0, v0}, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/system/suspend/internal/ISuspendControlServiceInternal;
    .registers 3

    .line 79
    if-nez p0, :cond_4

    .line 80
    const/4 p0, 0x0

    return-object p0

    .line 82
    :cond_4
    const-string v0, "android.system.suspend.internal.ISuspendControlServiceInternal"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/system/suspend/internal/ISuspendControlServiceInternal;

    if-eqz v1, :cond_13

    .line 84
    check-cast v0, Landroid/system/suspend/internal/ISuspendControlServiceInternal;

    return-object v0

    .line 86
    :cond_13
    new-instance v0, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 90
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    nop

    .line 95
    const-string v0, "android.system.suspend.internal.ISuspendControlServiceInternal"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 96
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 99
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    return v1

    .line 102
    :cond_17
    packed-switch p1, :pswitch_data_6a

    .line 152
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 145
    :pswitch_1f
    invoke-virtual {p0}, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;->getSuspendStats()Landroid/system/suspend/internal/SuspendInfo;

    move-result-object p1

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 148
    goto :goto_69

    .line 138
    :pswitch_2a
    invoke-virtual {p0}, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;->getWakeupStats()[Landroid/system/suspend/internal/WakeupInfo;

    move-result-object p1

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 141
    goto :goto_69

    .line 130
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 131
    invoke-virtual {p0, p1}, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;->getWakeLockStatsFiltered(I)[Landroid/system/suspend/internal/WakeLockInfo;

    move-result-object p1

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 134
    goto :goto_69

    .line 122
    :pswitch_44
    invoke-virtual {p0}, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;->getWakeLockStats()[Landroid/system/suspend/internal/WakeLockInfo;

    move-result-object p1

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 125
    goto :goto_69

    .line 115
    :pswitch_4f
    invoke-virtual {p0}, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;->forceSuspend()Z

    move-result p1

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    goto :goto_69

    .line 107
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 108
    invoke-virtual {p0, p1}, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;->enableAutosuspend(Landroid/os/IBinder;)Z

    move-result p1

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    nop

    .line 155
    :goto_69
    return v1

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_4f
        :pswitch_44
        :pswitch_35
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
