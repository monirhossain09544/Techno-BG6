.class Landroid/net/wifi/nl80211/NativeWifiClient$1;
.super Ljava/lang/Object;
.source "NativeWifiClient.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/NativeWifiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/nl80211/NativeWifiClient;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/nl80211/NativeWifiClient;
    .registers 3

    .line 91
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-static {p1}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_9

    .line 94
    goto :goto_b

    .line 92
    :catch_9
    move-exception p1

    .line 93
    const/4 p1, 0x0

    .line 95
    :goto_b
    new-instance v0, Landroid/net/wifi/nl80211/NativeWifiClient;

    invoke-direct {v0, p1}, Landroid/net/wifi/nl80211/NativeWifiClient;-><init>(Landroid/net/MacAddress;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 86
    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/NativeWifiClient$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/nl80211/NativeWifiClient;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/nl80211/NativeWifiClient;
    .registers 2

    .line 100
    new-array p1, p1, [Landroid/net/wifi/nl80211/NativeWifiClient;

    return-object p1
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 86
    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/NativeWifiClient$1;->newArray(I)[Landroid/net/wifi/nl80211/NativeWifiClient;

    move-result-object p1

    return-object p1
.end method
