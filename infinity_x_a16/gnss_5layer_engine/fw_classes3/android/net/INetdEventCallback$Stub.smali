.class public abstract Landroid/net/INetdEventCallback$Stub;
.super Landroid/os/Binder;
.source "INetdEventCallback.java"

# interfaces
.implements Landroid/net/INetdEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetdEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetdEventCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.net.INetdEventCallback"

.field static final greylist-max-o TRANSACTION_onConnectEvent:I = 0x4

.field static final greylist-max-o TRANSACTION_onDnsEvent:I = 0x1

.field static final blacklist TRANSACTION_onNat64PrefixEvent:I = 0x2

.field static final greylist-max-o TRANSACTION_onPrivateDnsValidationEvent:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 85
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 86
    const-string v0, "android.net.INetdEventCallback"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetdEventCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/net/INetdEventCallback;
    .registers 3

    .line 94
    if-nez p0, :cond_4

    .line 95
    const/4 p0, 0x0

    return-object p0

    .line 97
    :cond_4
    const-string v0, "android.net.INetdEventCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/INetdEventCallback;

    if-eqz v1, :cond_13

    .line 99
    check-cast v0, Landroid/net/INetdEventCallback;

    return-object v0

    .line 101
    :cond_13
    new-instance v0, Landroid/net/INetdEventCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/INetdEventCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 110
    packed-switch p0, :pswitch_data_16

    .line 130
    const/4 p0, 0x0

    return-object p0

    .line 126
    :pswitch_5
    const-string/jumbo p0, "onConnectEvent"

    return-object p0

    .line 122
    :pswitch_9
    const-string/jumbo p0, "onPrivateDnsValidationEvent"

    return-object p0

    .line 118
    :pswitch_d
    const-string/jumbo p0, "onNat64PrefixEvent"

    return-object p0

    .line 114
    :pswitch_11
    const-string/jumbo p0, "onDnsEvent"

    return-object p0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 105
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 357
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 137
    invoke-static {p1}, Landroid/net/INetdEventCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    nop

    .line 142
    const-string v1, "android.net.INetdEventCallback"

    const/4 v10, 0x1

    if-lt p1, v10, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 143
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    :cond_e
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_17

    .line 146
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    return v10

    .line 149
    :cond_17
    packed-switch p1, :pswitch_data_8e

    .line 217
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 204
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/net/INetdEventCallback$Stub;->onConnectEvent(Ljava/lang/String;IJI)V

    .line 213
    goto :goto_8d

    .line 190
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/net/INetdEventCallback$Stub;->onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 199
    goto :goto_8d

    .line 176
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/net/INetdEventCallback$Stub;->onNat64PrefixEvent(IZLjava/lang/String;I)V

    .line 185
    goto :goto_8d

    .line 154
    :pswitch_65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/net/INetdEventCallback$Stub;->onDnsEvent(IIILjava/lang/String;[Ljava/lang/String;IJI)V

    .line 171
    nop

    .line 220
    :goto_8d
    return v10

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_65
        :pswitch_4e
        :pswitch_37
        :pswitch_1f
    .end packed-switch
.end method
