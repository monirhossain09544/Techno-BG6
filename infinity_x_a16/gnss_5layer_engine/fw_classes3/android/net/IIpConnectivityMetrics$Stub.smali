.class public abstract Landroid/net/IIpConnectivityMetrics$Stub;
.super Landroid/os/Binder;
.source "IIpConnectivityMetrics.java"

# interfaces
.implements Landroid/net/IIpConnectivityMetrics;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IIpConnectivityMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IIpConnectivityMetrics$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.net.IIpConnectivityMetrics"

.field static final greylist-max-o TRANSACTION_addNetdEventCallback:I = 0x4

.field static final blacklist TRANSACTION_logDefaultNetworkEvent:I = 0x3

.field static final blacklist TRANSACTION_logDefaultNetworkValidity:I = 0x2

.field static final greylist-max-o TRANSACTION_logEvent:I = 0x1

.field static final greylist-max-o TRANSACTION_removeNetdEventCallback:I = 0x5


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 56
    const-string v0, "android.net.IIpConnectivityMetrics"

    invoke-virtual {p0, p0, v0}, Landroid/net/IIpConnectivityMetrics$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/net/IIpConnectivityMetrics;
    .registers 3

    .line 64
    if-nez p0, :cond_4

    .line 65
    const/4 p0, 0x0

    return-object p0

    .line 67
    :cond_4
    const-string v0, "android.net.IIpConnectivityMetrics"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/IIpConnectivityMetrics;

    if-eqz v1, :cond_13

    .line 69
    check-cast v0, Landroid/net/IIpConnectivityMetrics;

    return-object v0

    .line 71
    :cond_13
    new-instance v0, Landroid/net/IIpConnectivityMetrics$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/IIpConnectivityMetrics$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 80
    packed-switch p0, :pswitch_data_16

    .line 104
    const/4 p0, 0x0

    return-object p0

    .line 100
    :pswitch_5
    const-string/jumbo p0, "removeNetdEventCallback"

    return-object p0

    .line 96
    :pswitch_9
    const-string p0, "addNetdEventCallback"

    return-object p0

    .line 92
    :pswitch_c
    const-string p0, "logDefaultNetworkEvent"

    return-object p0

    .line 88
    :pswitch_f
    const-string p0, "logDefaultNetworkValidity"

    return-object p0

    .line 84
    :pswitch_12
    const-string p0, "logEvent"

    return-object p0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 75
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 327
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 111
    invoke-static {p1}, Landroid/net/IIpConnectivityMetrics$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    move-object/from16 v0, p3

    .line 116
    const-string v1, "android.net.IIpConnectivityMetrics"

    const/4 v2, 0x1

    if-lt p1, v2, :cond_f

    const v3, 0xffffff

    if-gt p1, v3, :cond_f

    .line 117
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    :cond_f
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_18

    .line 120
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    return v2

    .line 123
    :cond_18
    packed-switch p1, :pswitch_data_c0

    .line 193
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 184
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, p1}, Landroid/net/IIpConnectivityMetrics$Stub;->removeNetdEventCallback(I)Z

    move-result p1

    .line 187
    invoke-virtual {v0}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 189
    goto/16 :goto_be

    .line 172
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/INetdEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetdEventCallback;

    move-result-object v1

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, p1, v1}, Landroid/net/IIpConnectivityMetrics$Stub;->addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z

    move-result p1

    .line 177
    invoke-virtual {v0}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 179
    goto :goto_be

    .line 147
    :pswitch_4d
    sget-object p1, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/net/Network;

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 153
    sget-object p1, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Landroid/net/LinkProperties;

    .line 155
    sget-object p1, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Landroid/net/NetworkCapabilities;

    .line 157
    sget-object p1, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Landroid/net/Network;

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 161
    sget-object p1, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v11, p1

    check-cast v11, Landroid/net/LinkProperties;

    .line 163
    sget-object p1, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v12, p1

    check-cast v12, Landroid/net/NetworkCapabilities;

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    move-object v3, p0

    invoke-virtual/range {v3 .. v12}, Landroid/net/IIpConnectivityMetrics$Stub;->logDefaultNetworkEvent(Landroid/net/Network;IZLandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;ILandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    .line 166
    invoke-virtual {v0}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    goto :goto_be

    .line 138
    :pswitch_9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, p1}, Landroid/net/IIpConnectivityMetrics$Stub;->logDefaultNetworkValidity(Z)V

    .line 141
    invoke-virtual {v0}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    goto :goto_be

    .line 128
    :pswitch_a8
    sget-object p1, Landroid/net/ConnectivityMetricsEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityMetricsEvent;

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 130
    invoke-virtual {p0, p1}, Landroid/net/IIpConnectivityMetrics$Stub;->logEvent(Landroid/net/ConnectivityMetricsEvent;)I

    move-result p1

    .line 131
    invoke-virtual {v0}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    nop

    .line 196
    :goto_be
    return v2

    nop

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_a8
        :pswitch_9a
        :pswitch_4d
        :pswitch_33
        :pswitch_20
    .end packed-switch
.end method
