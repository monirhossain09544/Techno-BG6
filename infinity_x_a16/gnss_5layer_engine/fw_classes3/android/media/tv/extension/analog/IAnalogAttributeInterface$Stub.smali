.class public abstract Landroid/media/tv/extension/analog/IAnalogAttributeInterface$Stub;
.super Landroid/os/Binder;
.source "IAnalogAttributeInterface.java"

# interfaces
.implements Landroid/media/tv/extension/analog/IAnalogAttributeInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/analog/IAnalogAttributeInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/analog/IAnalogAttributeInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getColorSystemCapability:I = 0x3

.field static final blacklist TRANSACTION_getVersion:I = 0x1

.field static final blacklist TRANSACTION_setColorSystemCapability:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 39
    const-string v0, "android.media.tv.extension.analog.IAnalogAttributeInterface"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/analog/IAnalogAttributeInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/analog/IAnalogAttributeInterface;
    .registers 3

    .line 47
    if-nez p0, :cond_4

    .line 48
    const/4 p0, 0x0

    return-object p0

    .line 50
    :cond_4
    const-string v0, "android.media.tv.extension.analog.IAnalogAttributeInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/extension/analog/IAnalogAttributeInterface;

    if-eqz v1, :cond_13

    .line 52
    check-cast v0, Landroid/media/tv/extension/analog/IAnalogAttributeInterface;

    return-object v0

    .line 54
    :cond_13
    new-instance v0, Landroid/media/tv/extension/analog/IAnalogAttributeInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/extension/analog/IAnalogAttributeInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 63
    packed-switch p0, :pswitch_data_10

    .line 79
    const/4 p0, 0x0

    return-object p0

    .line 75
    :pswitch_5
    const-string p0, "getColorSystemCapability"

    return-object p0

    .line 71
    :pswitch_8
    const-string/jumbo p0, "setColorSystemCapability"

    return-object p0

    .line 67
    :pswitch_c
    const-string p0, "getVersion"

    return-object p0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 58
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 201
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 86
    invoke-static {p1}, Landroid/media/tv/extension/analog/IAnalogAttributeInterface$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 90
    nop

    .line 91
    const-string v0, "android.media.tv.extension.analog.IAnalogAttributeInterface"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 92
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 95
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    return v1

    .line 98
    :cond_17
    packed-switch p1, :pswitch_data_44

    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 118
    :pswitch_1f
    invoke-virtual {p0}, Landroid/media/tv/extension/analog/IAnalogAttributeInterface$Stub;->getColorSystemCapability()[Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 121
    goto :goto_43

    .line 110
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/analog/IAnalogAttributeInterface$Stub;->setColorSystemCapability([Ljava/lang/String;)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    goto :goto_43

    .line 102
    :pswitch_38
    invoke-virtual {p0}, Landroid/media/tv/extension/analog/IAnalogAttributeInterface$Stub;->getVersion()I

    move-result p1

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    nop

    .line 128
    :goto_43
    return v1

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_38
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
