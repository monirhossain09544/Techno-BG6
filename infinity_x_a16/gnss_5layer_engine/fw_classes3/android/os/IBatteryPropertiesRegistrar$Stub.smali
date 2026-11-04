.class public abstract Landroid/os/IBatteryPropertiesRegistrar$Stub;
.super Landroid/os/Binder;
.source "IBatteryPropertiesRegistrar.java"

# interfaces
.implements Landroid/os/IBatteryPropertiesRegistrar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IBatteryPropertiesRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IBatteryPropertiesRegistrar$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.IBatteryPropertiesRegistrar"

.field static final greylist-max-o TRANSACTION_getProperty:I = 0x1

.field static final greylist-max-o TRANSACTION_scheduleUpdate:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 35
    const-string v0, "android.os.IBatteryPropertiesRegistrar"

    invoke-virtual {p0, p0, v0}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/os/IBatteryPropertiesRegistrar;
    .registers 3

    .line 43
    if-nez p0, :cond_4

    .line 44
    const/4 p0, 0x0

    return-object p0

    .line 46
    :cond_4
    const-string v0, "android.os.IBatteryPropertiesRegistrar"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IBatteryPropertiesRegistrar;

    if-eqz v1, :cond_13

    .line 48
    check-cast v0, Landroid/os/IBatteryPropertiesRegistrar;

    return-object v0

    .line 50
    :cond_13
    new-instance v0, Landroid/os/IBatteryPropertiesRegistrar$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IBatteryPropertiesRegistrar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 59
    packed-switch p0, :pswitch_data_c

    .line 71
    const/4 p0, 0x0

    return-object p0

    .line 67
    :pswitch_5
    const-string/jumbo p0, "scheduleUpdate"

    return-object p0

    .line 63
    :pswitch_9
    const-string p0, "getProperty"

    return-object p0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 54
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 78
    invoke-static {p1}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 82
    nop

    .line 83
    const-string v0, "android.os.IBatteryPropertiesRegistrar"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 84
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 87
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    return v1

    .line 90
    :cond_17
    packed-switch p1, :pswitch_data_3e

    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 107
    :pswitch_1f
    invoke-virtual {p0}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->scheduleUpdate()V

    .line 108
    goto :goto_3d

    .line 95
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 97
    new-instance p4, Landroid/os/BatteryProperty;

    invoke-direct {p4}, Landroid/os/BatteryProperty;-><init>()V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 99
    invoke-virtual {p0, p1, p4}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->getProperty(ILandroid/os/BatteryProperty;)I

    move-result p1

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    invoke-virtual {p3, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 103
    nop

    .line 115
    :goto_3d
    return v1

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_23
        :pswitch_1f
    .end packed-switch
.end method
