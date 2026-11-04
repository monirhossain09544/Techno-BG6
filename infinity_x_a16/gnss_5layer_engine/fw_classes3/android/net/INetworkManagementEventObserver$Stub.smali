.class public abstract Landroid/net/INetworkManagementEventObserver$Stub;
.super Landroid/os/Binder;
.source "INetworkManagementEventObserver.java"

# interfaces
.implements Landroid/net/INetworkManagementEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkManagementEventObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkManagementEventObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkManagementEventObserver"

.field static final greylist-max-o TRANSACTION_addressRemoved:I = 0x6

.field static final greylist-max-o TRANSACTION_addressUpdated:I = 0x5

.field static final greylist-max-o TRANSACTION_interfaceAdded:I = 0x3

.field static final greylist-max-o TRANSACTION_interfaceClassDataActivityChanged:I = 0x8

.field static final greylist-max-o TRANSACTION_interfaceDnsServerInfo:I = 0x9

.field static final greylist-max-o TRANSACTION_interfaceLinkStateChanged:I = 0x2

.field static final greylist-max-o TRANSACTION_interfaceRemoved:I = 0x4

.field static final greylist-max-o TRANSACTION_interfaceStatusChanged:I = 0x1

.field static final greylist-max-o TRANSACTION_limitReached:I = 0x7

.field static final greylist-max-o TRANSACTION_routeRemoved:I = 0xb

.field static final greylist-max-o TRANSACTION_routeUpdated:I = 0xa


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 125
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 126
    const-string v0, "android.net.INetworkManagementEventObserver"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkManagementEventObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;
    .registers 3

    .line 134
    if-nez p0, :cond_4

    .line 135
    const/4 p0, 0x0

    return-object p0

    .line 137
    :cond_4
    const-string v0, "android.net.INetworkManagementEventObserver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/INetworkManagementEventObserver;

    if-eqz v1, :cond_13

    .line 139
    check-cast v0, Landroid/net/INetworkManagementEventObserver;

    return-object v0

    .line 141
    :cond_13
    new-instance v0, Landroid/net/INetworkManagementEventObserver$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/INetworkManagementEventObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 150
    packed-switch p0, :pswitch_data_28

    .line 198
    const/4 p0, 0x0

    return-object p0

    .line 194
    :pswitch_5
    const-string/jumbo p0, "routeRemoved"

    return-object p0

    .line 190
    :pswitch_9
    const-string/jumbo p0, "routeUpdated"

    return-object p0

    .line 186
    :pswitch_d
    const-string p0, "interfaceDnsServerInfo"

    return-object p0

    .line 182
    :pswitch_10
    const-string p0, "interfaceClassDataActivityChanged"

    return-object p0

    .line 178
    :pswitch_13
    const-string p0, "limitReached"

    return-object p0

    .line 174
    :pswitch_16
    const-string p0, "addressRemoved"

    return-object p0

    .line 170
    :pswitch_19
    const-string p0, "addressUpdated"

    return-object p0

    .line 166
    :pswitch_1c
    const-string p0, "interfaceRemoved"

    return-object p0

    .line 162
    :pswitch_1f
    const-string p0, "interfaceAdded"

    return-object p0

    .line 158
    :pswitch_22
    const-string p0, "interfaceLinkStateChanged"

    return-object p0

    .line 154
    :pswitch_25
    const-string p0, "interfaceStatusChanged"

    return-object p0

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 145
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 569
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 205
    invoke-static {p1}, Landroid/net/INetworkManagementEventObserver$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    nop

    .line 210
    const-string v0, "android.net.INetworkManagementEventObserver"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 211
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 214
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    return v1

    .line 217
    :cond_17
    packed-switch p1, :pswitch_data_de

    .line 329
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 322
    :pswitch_20
    sget-object p1, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/RouteInfo;

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 324
    invoke-virtual {p0, p1}, Landroid/net/INetworkManagementEventObserver$Stub;->routeRemoved(Landroid/net/RouteInfo;)V

    .line 325
    goto/16 :goto_dd

    .line 314
    :pswitch_30
    sget-object p1, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/RouteInfo;

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 316
    invoke-virtual {p0, p1}, Landroid/net/INetworkManagementEventObserver$Stub;->routeUpdated(Landroid/net/RouteInfo;)V

    .line 317
    goto/16 :goto_dd

    .line 302
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/net/INetworkManagementEventObserver$Stub;->interfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V

    .line 309
    goto/16 :goto_dd

    .line 288
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/net/INetworkManagementEventObserver$Stub;->interfaceClassDataActivityChanged(IZJI)V

    .line 297
    goto/16 :goto_dd

    .line 278
    :pswitch_6d
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 282
    invoke-virtual {p0, p1, p3}, Landroid/net/INetworkManagementEventObserver$Stub;->limitReached(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    goto :goto_dd

    .line 268
    :pswitch_7d
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 270
    sget-object p3, Landroid/net/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/LinkAddress;

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 272
    invoke-virtual {p0, p1, p3}, Landroid/net/INetworkManagementEventObserver$Stub;->addressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V

    .line 273
    goto :goto_dd

    .line 258
    :pswitch_91
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 260
    sget-object p3, Landroid/net/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/LinkAddress;

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 262
    invoke-virtual {p0, p1, p3}, Landroid/net/INetworkManagementEventObserver$Stub;->addressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V

    .line 263
    goto :goto_dd

    .line 250
    :pswitch_a5
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-virtual {p0, p1}, Landroid/net/INetworkManagementEventObserver$Stub;->interfaceRemoved(Ljava/lang/String;)V

    .line 253
    goto :goto_dd

    .line 242
    :pswitch_b1
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    invoke-virtual {p0, p1}, Landroid/net/INetworkManagementEventObserver$Stub;->interfaceAdded(Ljava/lang/String;)V

    .line 245
    goto :goto_dd

    .line 232
    :pswitch_bd
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    invoke-virtual {p0, p1, p3}, Landroid/net/INetworkManagementEventObserver$Stub;->interfaceLinkStateChanged(Ljava/lang/String;Z)V

    .line 237
    goto :goto_dd

    .line 222
    :pswitch_cd
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-virtual {p0, p1, p3}, Landroid/net/INetworkManagementEventObserver$Stub;->interfaceStatusChanged(Ljava/lang/String;Z)V

    .line 227
    nop

    .line 332
    :goto_dd
    return v1

    :pswitch_data_de
    .packed-switch 0x1
        :pswitch_cd
        :pswitch_bd
        :pswitch_b1
        :pswitch_a5
        :pswitch_91
        :pswitch_7d
        :pswitch_6d
        :pswitch_54
        :pswitch_40
        :pswitch_30
        :pswitch_20
    .end packed-switch
.end method
