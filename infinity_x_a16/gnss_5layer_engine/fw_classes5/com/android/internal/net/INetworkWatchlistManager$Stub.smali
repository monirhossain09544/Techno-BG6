.class public abstract Lcom/android/internal/net/INetworkWatchlistManager$Stub;
.super Landroid/os/Binder;
.source "INetworkWatchlistManager.java"

# interfaces
.implements Lcom/android/internal/net/INetworkWatchlistManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/INetworkWatchlistManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/INetworkWatchlistManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.net.INetworkWatchlistManager"

.field static final greylist-max-o TRANSACTION_getWatchlistConfigHash:I = 0x5

.field static final greylist-max-o TRANSACTION_reloadWatchlist:I = 0x3

.field static final greylist-max-o TRANSACTION_reportWatchlistIfNecessary:I = 0x4

.field static final greylist-max-o TRANSACTION_startWatchlistLogging:I = 0x1

.field static final greylist-max-o TRANSACTION_stopWatchlistLogging:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "com.android.internal.net.INetworkWatchlistManager"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/INetworkWatchlistManager;
    .registers 3

    .line 54
    if-nez p0, :cond_4

    .line 55
    const/4 p0, 0x0

    return-object p0

    .line 57
    :cond_4
    const-string v0, "com.android.internal.net.INetworkWatchlistManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/net/INetworkWatchlistManager;

    if-eqz v1, :cond_13

    .line 59
    check-cast v0, Lcom/android/internal/net/INetworkWatchlistManager;

    return-object v0

    .line 61
    :cond_13
    new-instance v0, Lcom/android/internal/net/INetworkWatchlistManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/net/INetworkWatchlistManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 70
    packed-switch p0, :pswitch_data_14

    .line 94
    const/4 p0, 0x0

    return-object p0

    .line 90
    :pswitch_5
    const-string p0, "getWatchlistConfigHash"

    return-object p0

    .line 86
    :pswitch_8
    const-string p0, "reportWatchlistIfNecessary"

    return-object p0

    .line 82
    :pswitch_b
    const-string p0, "reloadWatchlist"

    return-object p0

    .line 78
    :pswitch_e
    const-string p0, "stopWatchlistLogging"

    return-object p0

    .line 74
    :pswitch_11
    const-string p0, "startWatchlistLogging"

    return-object p0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
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

    .line 260
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 101
    invoke-static {p1}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 105
    nop

    .line 106
    const-string v0, "com.android.internal.net.INetworkWatchlistManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 107
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 110
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    return v1

    .line 113
    :cond_17
    packed-switch p1, :pswitch_data_50

    .line 150
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 143
    :pswitch_1f
    invoke-virtual {p0}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;->getWatchlistConfigHash()[B

    move-result-object p1

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 146
    goto :goto_4e

    .line 137
    :pswitch_2a
    invoke-virtual {p0}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;->reportWatchlistIfNecessary()V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    goto :goto_4e

    .line 131
    :pswitch_31
    invoke-virtual {p0}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;->reloadWatchlist()V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    goto :goto_4e

    .line 124
    :pswitch_38
    invoke-virtual {p0}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;->stopWatchlistLogging()Z

    move-result p1

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 127
    goto :goto_4e

    .line 117
    :pswitch_43
    invoke-virtual {p0}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;->startWatchlistLogging()Z

    move-result p1

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 120
    nop

    .line 153
    :goto_4e
    return v1

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_43
        :pswitch_38
        :pswitch_31
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
