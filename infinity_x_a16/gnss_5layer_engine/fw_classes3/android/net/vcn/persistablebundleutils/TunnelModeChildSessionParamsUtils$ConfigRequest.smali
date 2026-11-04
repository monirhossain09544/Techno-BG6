.class Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;
.super Ljava/lang/Object;
.source "TunnelModeChildSessionParamsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigRequest"
.end annotation


# static fields
.field private static final blacklist IP6_PREFIX_LEN:Ljava/lang/String; = "ip6PrefixLen"

.field private static final blacklist PREFIX_LEN_UNUSED:I = -0x1

.field private static final blacklist TYPE_IPV4_ADDRESS:I = 0x1

.field private static final blacklist TYPE_IPV4_DHCP:I = 0x5

.field private static final blacklist TYPE_IPV4_DNS:I = 0x3

.field private static final blacklist TYPE_IPV4_NETMASK:I = 0x6

.field private static final blacklist TYPE_IPV6_ADDRESS:I = 0x2

.field private static final blacklist TYPE_IPV6_DNS:I = 0x4

.field private static final blacklist TYPE_KEY:Ljava/lang/String; = "type"

.field private static final blacklist VALUE_KEY:Ljava/lang/String; = "address"


# instance fields
.field public final blacklist address:Ljava/net/InetAddress;

.field public final blacklist ip6PrefixLen:I

.field public final blacklist type:I


# direct methods
.method constructor blacklist <init>(Landroid/net/ipsec/ike/TunnelModeChildSessionParams$TunnelModeChildConfigRequest;)V
    .registers 4

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    nop

    .line 89
    instance-of v0, p1, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$ConfigRequestIpv4Address;

    if-eqz v0, :cond_14

    .line 90
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->type:I

    .line 91
    check-cast p1, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$ConfigRequestIpv4Address;

    invoke-interface {p1}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$ConfigRequestIpv4Address;->getAddress()Ljava/net/Inet4Address;

    move-result-object p1

    iput-object p1, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    goto :goto_54

    .line 92
    :cond_14
    instance-of v0, p1, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$ConfigRequestIpv6Address;

    if-eqz v0, :cond_2c

    .line 93
    const/4 v0, 0x2

    iput v0, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->type:I

    .line 94
    check-cast p1, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$ConfigRequestIpv6Address;

    invoke-interface {p1}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$ConfigRequestIpv6Address;->getAddress()Ljava/net/Inet6Address;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    .line 95
    iget-object v0, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    if-eqz v0, :cond_54

    .line 96
    invoke-interface {p1}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$ConfigRequestIpv6Address;->getPrefixLength()I

    move-result p1

    goto :goto_55

    .line 98
    :cond_2c
    instance-of v0, p1, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$ConfigRequestIpv4DnsServer;

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    .line 99
    const/4 p1, 0x3

    iput p1, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->type:I

    .line 100
    iput-object v1, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    goto :goto_54

    .line 101
    :cond_37
    instance-of v0, p1, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$ConfigRequestIpv6DnsServer;

    if-eqz v0, :cond_41

    .line 102
    const/4 p1, 0x4

    iput p1, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->type:I

    .line 103
    iput-object v1, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    goto :goto_54

    .line 104
    :cond_41
    instance-of v0, p1, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$ConfigRequestIpv4DhcpServer;

    if-eqz v0, :cond_4b

    .line 105
    const/4 p1, 0x5

    iput p1, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->type:I

    .line 106
    iput-object v1, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    goto :goto_54

    .line 107
    :cond_4b
    instance-of p1, p1, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$ConfigRequestIpv4Netmask;

    if-eqz p1, :cond_58

    .line 108
    const/4 p1, 0x6

    iput p1, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->type:I

    .line 109
    iput-object v1, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    .line 114
    :cond_54
    :goto_54
    const/4 p1, -0x1

    :goto_55
    iput p1, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->ip6PrefixLen:I

    .line 115
    return-void

    .line 111
    :cond_58
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown TunnelModeChildConfigRequest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor blacklist <init>(Landroid/os/PersistableBundle;)V
    .registers 3

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const-string v0, "PersistableBundle was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->type:I

    .line 121
    const-string v0, "ip6PrefixLen"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->ip6PrefixLen:I

    .line 123
    const-string v0, "address"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 124
    if-nez p1, :cond_25

    .line 125
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    goto :goto_2b

    .line 127
    :cond_25
    invoke-static {p1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    .line 129
    :goto_2b
    return-void
.end method


# virtual methods
.method public blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 4

    .line 133
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 135
    const-string/jumbo v1, "type"

    iget v2, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->type:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 136
    const-string v1, "ip6PrefixLen"

    iget v2, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->ip6PrefixLen:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 138
    iget-object v1, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    if-eqz v1, :cond_23

    .line 139
    iget-object v1, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "address"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_23
    return-object v0
.end method
