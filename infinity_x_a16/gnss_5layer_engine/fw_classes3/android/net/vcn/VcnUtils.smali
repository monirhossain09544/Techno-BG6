.class public Landroid/net/vcn/VcnUtils;
.super Ljava/lang/Object;
.source "VcnUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getSubIdFromVcnCaps(Landroid/net/ConnectivityManager;Landroid/net/NetworkCapabilities;)I
    .registers 3

    .line 62
    nop

    .line 63
    invoke-static {p0, p1}, Landroid/net/vcn/VcnUtils;->getVcnUnderlyingCaps(Landroid/net/ConnectivityManager;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    .line 65
    const/4 p1, -0x1

    if-nez p0, :cond_9

    .line 66
    return p1

    .line 69
    :cond_9
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object p0

    .line 70
    instance-of v0, p0, Landroid/net/TelephonyNetworkSpecifier;

    if-nez v0, :cond_12

    .line 71
    return p1

    .line 74
    :cond_12
    check-cast p0, Landroid/net/TelephonyNetworkSpecifier;

    invoke-virtual {p0}, Landroid/net/TelephonyNetworkSpecifier;->getSubscriptionId()I

    move-result p0

    return p0
.end method

.method private static blacklist getVcnUnderlyingCaps(Landroid/net/ConnectivityManager;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;
    .registers 4

    .line 82
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 83
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object v0

    instance-of v0, v0, Landroid/net/vcn/VcnTransportInfo;

    if-nez v0, :cond_10

    goto :goto_23

    .line 90
    :cond_10
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getUnderlyingNetworks()Ljava/util/List;

    move-result-object p1

    .line 91
    if-nez p1, :cond_17

    .line 92
    return-object v1

    .line 95
    :cond_17
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Network;

    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    return-object p0

    .line 84
    :cond_23
    :goto_23
    return-object v1
.end method

.method public static blacklist getWifiInfoFromVcnCaps(Landroid/net/ConnectivityManager;Landroid/net/NetworkCapabilities;)Landroid/net/wifi/WifiInfo;
    .registers 3

    .line 43
    nop

    .line 44
    invoke-static {p0, p1}, Landroid/net/vcn/VcnUtils;->getVcnUnderlyingCaps(Landroid/net/ConnectivityManager;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    .line 46
    const/4 p1, 0x0

    if-nez p0, :cond_9

    .line 47
    return-object p1

    .line 50
    :cond_9
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object p0

    .line 51
    instance-of v0, p0, Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_12

    .line 52
    return-object p1

    .line 55
    :cond_12
    check-cast p0, Landroid/net/wifi/WifiInfo;

    return-object p0
.end method
