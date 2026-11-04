.class public final Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils;
.super Ljava/lang/Object;
.source "TunnelModeChildSessionParamsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;
    }
.end annotation


# static fields
.field private static final blacklist CONFIG_REQUESTS_KEY:Ljava/lang/String; = "CONFIG_REQUESTS_KEY"

.field private static final blacklist HARD_LIFETIME_SEC_KEY:Ljava/lang/String; = "HARD_LIFETIME_SEC_KEY"

.field private static final blacklist INBOUND_TS_KEY:Ljava/lang/String; = "INBOUND_TS_KEY"

.field private static final blacklist OUTBOUND_TS_KEY:Ljava/lang/String; = "OUTBOUND_TS_KEY"

.field private static final blacklist SA_PROPOSALS_KEY:Ljava/lang/String; = "SA_PROPOSALS_KEY"

.field private static final blacklist SOFT_LIFETIME_SEC_KEY:Ljava/lang/String; = "SOFT_LIFETIME_SEC_KEY"

.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 57
    const-class v0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/TunnelModeChildSessionParams;
    .registers 7

    .line 195
    const-string v0, "PersistableBundle was null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 197
    new-instance v0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    invoke-direct {v0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;-><init>()V

    .line 200
    const-string v1, "SA_PROPOSALS_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 201
    const-string v2, "SA proposal was null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 202
    new-instance v2, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$$ExternalSyntheticLambda4;-><init>()V

    .line 203
    invoke-static {v1, v2}, Landroid/net/vcn/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Landroid/net/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v1

    .line 205
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ipsec/ike/ChildSaProposal;

    .line 206
    invoke-virtual {v0, v2}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addSaProposal(Landroid/net/ipsec/ike/ChildSaProposal;)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 207
    goto :goto_22

    .line 209
    :cond_32
    const-string v1, "INBOUND_TS_KEY"

    invoke-static {p0, v1}, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils;->getTsFromPersistableBundle(Landroid/os/PersistableBundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 210
    invoke-virtual {v0, v2}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addInboundTrafficSelectors(Landroid/net/ipsec/ike/IkeTrafficSelector;)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 211
    goto :goto_3c

    .line 213
    :cond_4c
    const-string v1, "OUTBOUND_TS_KEY"

    invoke-static {p0, v1}, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils;->getTsFromPersistableBundle(Landroid/os/PersistableBundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_56
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 214
    invoke-virtual {v0, v2}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addOutboundTrafficSelectors(Landroid/net/ipsec/ike/IkeTrafficSelector;)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 215
    goto :goto_56

    .line 217
    :cond_66
    nop

    .line 218
    const-string v1, "HARD_LIFETIME_SEC_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "SOFT_LIFETIME_SEC_KEY"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 217
    invoke-virtual {v0, v1, v2}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->setLifetimeSeconds(II)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 219
    const-string v1, "CONFIG_REQUESTS_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p0

    .line 220
    const-string v1, "Config request list was null"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 221
    new-instance v1, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$$ExternalSyntheticLambda5;-><init>()V

    .line 222
    invoke-static {p0, v1}, Landroid/net/vcn/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Landroid/net/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object p0

    .line 224
    nop

    .line 225
    nop

    .line 226
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :goto_92
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;

    .line 227
    iget v4, v3, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->type:I

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_13e

    .line 268
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized config request type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v3, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 247
    :pswitch_bf
    nop

    .line 248
    move v2, v5

    goto :goto_11d

    .line 262
    :pswitch_c2
    iget-object v3, v3, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    if-eqz v3, :cond_cd

    .line 263
    sget-object v3, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils;->TAG:Ljava/lang/String;

    const-string v4, "Requesting a specific IPv4 DHCP server is unsupported"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_cd
    sget v3, Landroid/system/OsConstants;->AF_INET:I

    invoke-virtual {v0, v3}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addInternalDhcpServerRequest(I)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 266
    goto :goto_11d

    .line 256
    :pswitch_d3
    iget-object v3, v3, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    if-eqz v3, :cond_de

    .line 257
    sget-object v3, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils;->TAG:Ljava/lang/String;

    const-string v4, "Requesting a specific IPv6 DNS server is unsupported"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_de
    sget v3, Landroid/system/OsConstants;->AF_INET6:I

    invoke-virtual {v0, v3}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addInternalDnsServerRequest(I)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 260
    goto :goto_11d

    .line 250
    :pswitch_e4
    iget-object v3, v3, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    if-eqz v3, :cond_ef

    .line 251
    sget-object v3, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils;->TAG:Ljava/lang/String;

    const-string v4, "Requesting a specific IPv4 DNS server is unsupported"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_ef
    sget v3, Landroid/system/OsConstants;->AF_INET:I

    invoke-virtual {v0, v3}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addInternalDnsServerRequest(I)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 254
    goto :goto_11d

    .line 237
    :pswitch_f5
    iget-object v4, v3, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    if-nez v4, :cond_ff

    .line 238
    sget v3, Landroid/system/OsConstants;->AF_INET6:I

    invoke-virtual {v0, v3}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addInternalAddressRequest(I)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    goto :goto_11d

    .line 240
    :cond_ff
    iget-object v4, v3, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    check-cast v4, Ljava/net/Inet6Address;

    iget v3, v3, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->ip6PrefixLen:I

    invoke-virtual {v0, v4, v3}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addInternalAddressRequest(Ljava/net/Inet6Address;I)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 243
    goto :goto_11d

    .line 229
    :pswitch_109
    nop

    .line 230
    iget-object v1, v3, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    if-nez v1, :cond_114

    .line 231
    sget v1, Landroid/system/OsConstants;->AF_INET:I

    invoke-virtual {v0, v1}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addInternalAddressRequest(I)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    goto :goto_11c

    .line 233
    :cond_114
    iget-object v1, v3, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    check-cast v1, Ljava/net/Inet4Address;

    invoke-virtual {v0, v1}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addInternalAddressRequest(Ljava/net/Inet4Address;)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 235
    nop

    .line 271
    :goto_11c
    move v1, v5

    :goto_11d
    goto/16 :goto_92

    .line 273
    :cond_11f
    if-eq v1, v2, :cond_138

    .line 274
    sget-object p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils;->TAG:Ljava/lang/String;

    .line 280
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 276
    const-string v2, "Expect IPv4 address request and IPv4 netmask request either both exist or both absent, but found hasIpv4AddressReq exists? %b, hasIpv4AddressReq exists? %b, "

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 274
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_138
    invoke-virtual {v0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->build()Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_13e
    .packed-switch 0x1
        :pswitch_109
        :pswitch_f5
        :pswitch_e4
        :pswitch_d3
        :pswitch_c2
        :pswitch_bf
    .end packed-switch
.end method

.method private static blacklist getTsFromPersistableBundle(Landroid/os/PersistableBundle;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/PersistableBundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/ipsec/ike/IkeTrafficSelector;",
            ">;"
        }
    .end annotation

    .line 185
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p0

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value for key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " was null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 187
    new-instance p1, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, p1}, Landroid/net/vcn/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Landroid/net/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist toPersistableBundle(Landroid/net/ipsec/ike/TunnelModeChildSessionParams;)Landroid/os/PersistableBundle;
    .registers 5

    .line 150
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 152
    nop

    .line 154
    invoke-virtual {p0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams;->getSaProposals()Ljava/util/List;

    move-result-object v1

    new-instance v2, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$$ExternalSyntheticLambda1;-><init>()V

    .line 153
    invoke-static {v1, v2}, Landroid/net/vcn/util/PersistableBundleUtils;->fromList(Ljava/util/List;Landroid/net/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 155
    const-string v2, "SA_PROPOSALS_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 157
    nop

    .line 159
    invoke-virtual {p0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams;->getInboundTrafficSelectors()Ljava/util/List;

    move-result-object v1

    new-instance v2, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$$ExternalSyntheticLambda2;-><init>()V

    .line 158
    invoke-static {v1, v2}, Landroid/net/vcn/util/PersistableBundleUtils;->fromList(Ljava/util/List;Landroid/net/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 161
    const-string v2, "INBOUND_TS_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 163
    nop

    .line 165
    invoke-virtual {p0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams;->getOutboundTrafficSelectors()Ljava/util/List;

    move-result-object v1

    new-instance v2, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$$ExternalSyntheticLambda2;-><init>()V

    .line 164
    invoke-static {v1, v2}, Landroid/net/vcn/util/PersistableBundleUtils;->fromList(Ljava/util/List;Landroid/net/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 167
    const-string v2, "OUTBOUND_TS_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 169
    const-string v1, "HARD_LIFETIME_SEC_KEY"

    invoke-virtual {p0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams;->getHardLifetimeSeconds()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 170
    const-string v1, "SOFT_LIFETIME_SEC_KEY"

    invoke-virtual {p0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams;->getSoftLifetimeSeconds()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 173
    invoke-virtual {p0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams;->getConfigurationRequests()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$TunnelModeChildConfigRequest;

    .line 174
    new-instance v3, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;

    invoke-direct {v3, v2}, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;-><init>(Landroid/net/ipsec/ike/TunnelModeChildSessionParams$TunnelModeChildConfigRequest;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    goto :goto_5d

    .line 176
    :cond_72
    new-instance p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$$ExternalSyntheticLambda3;

    invoke-direct {p0}, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$$ExternalSyntheticLambda3;-><init>()V

    .line 177
    invoke-static {v1, p0}, Landroid/net/vcn/util/PersistableBundleUtils;->fromList(Ljava/util/List;Landroid/net/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object p0

    .line 178
    const-string v1, "CONFIG_REQUESTS_KEY"

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 180
    return-object v0
.end method
