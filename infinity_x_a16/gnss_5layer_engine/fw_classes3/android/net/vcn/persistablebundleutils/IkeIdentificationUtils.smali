.class public final Landroid/net/vcn/persistablebundleutils/IkeIdentificationUtils;
.super Ljava/lang/Object;
.source "IkeIdentificationUtils.java"


# static fields
.field private static final blacklist DER_ASN1_DN_KEY:Ljava/lang/String; = "DER_ASN1_DN_KEY"

.field private static final blacklist FQDN_KEY:Ljava/lang/String; = "FQDN_KEY"

.field private static final blacklist ID_TYPE_DER_ASN1_DN:I = 0x1

.field private static final blacklist ID_TYPE_FQDN:I = 0x2

.field private static final blacklist ID_TYPE_IPV4_ADDR:I = 0x3

.field private static final blacklist ID_TYPE_IPV6_ADDR:I = 0x4

.field private static final blacklist ID_TYPE_KEY:Ljava/lang/String; = "ID_TYPE_KEY"

.field private static final blacklist ID_TYPE_KEY_ID:I = 0x5

.field private static final blacklist ID_TYPE_RFC822_ADDR:I = 0x6

.field private static final blacklist IP4_ADDRESS_KEY:Ljava/lang/String; = "IP4_ADDRESS_KEY"

.field private static final blacklist IP6_ADDRESS_KEY:Ljava/lang/String; = "IP6_ADDRESS_KEY"

.field private static final blacklist KEY_ID_KEY:Ljava/lang/String; = "KEY_ID_KEY"

.field private static final blacklist RFC822_ADDRESS_KEY:Ljava/lang/String; = "RFC822_ADDRESS_KEY"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist createPersistableBundle(I)Landroid/os/PersistableBundle;
    .registers 3

    .line 105
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 106
    const-string v1, "ID_TYPE_KEY"

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 107
    return-object v0
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeIdentification;
    .registers 4

    .line 113
    const-string v0, "PersistableBundle was null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    const-string v0, "ID_TYPE_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 115
    packed-switch v0, :pswitch_data_9c

    .line 140
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized IKE ID type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 138
    :pswitch_27
    new-instance v0, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;

    const-string v1, "RFC822_ADDRESS_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 134
    :pswitch_33
    const-string v0, "KEY_ID_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 135
    const-string v1, "Key ID was null"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 136
    new-instance p0, Landroid/net/ipsec/ike/IkeKeyIdIdentification;

    invoke-static {v0}, Landroid/net/vcn/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ipsec/ike/IkeKeyIdIdentification;-><init>([B)V

    return-object p0

    .line 129
    :pswitch_48
    const-string v0, "IP6_ADDRESS_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 130
    const-string v0, "IPv6 address was null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 131
    new-instance v0, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;

    .line 132
    invoke-static {p0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    check-cast p0, Ljava/net/Inet6Address;

    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;-><init>(Ljava/net/Inet6Address;)V

    .line 131
    return-object v0

    .line 124
    :pswitch_5f
    const-string v0, "IP4_ADDRESS_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 125
    const-string v0, "IPv4 address was null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    new-instance v0, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;

    .line 127
    invoke-static {p0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    check-cast p0, Ljava/net/Inet4Address;

    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;-><init>(Ljava/net/Inet4Address;)V

    .line 126
    return-object v0

    .line 122
    :pswitch_76
    new-instance v0, Landroid/net/ipsec/ike/IkeFqdnIdentification;

    const-string v1, "FQDN_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeFqdnIdentification;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 117
    :pswitch_82
    const-string v0, "DER_ASN1_DN_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p0

    .line 118
    const-string v0, "ASN1 DN was null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    new-instance v0, Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;

    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    .line 120
    invoke-static {p0}, Landroid/net/vcn/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    .line 119
    return-object v0

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_82
        :pswitch_76
        :pswitch_5f
        :pswitch_48
        :pswitch_33
        :pswitch_27
    .end packed-switch
.end method

.method public static blacklist toPersistableBundle(Landroid/net/ipsec/ike/IkeIdentification;)Landroid/os/PersistableBundle;
    .registers 3

    .line 67
    instance-of v0, p0, Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;

    if-eqz v0, :cond_1b

    .line 68
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/net/vcn/persistablebundleutils/IkeIdentificationUtils;->createPersistableBundle(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 69
    check-cast p0, Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;

    .line 70
    iget-object p0, p0, Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;->derAsn1Dn:Ljavax/security/auth/x500/X500Principal;

    .line 72
    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Landroid/net/vcn/util/PersistableBundleUtils;->fromByteArray([B)Landroid/os/PersistableBundle;

    move-result-object p0

    .line 70
    const-string v1, "DER_ASN1_DN_KEY"

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 73
    return-object v0

    .line 74
    :cond_1b
    instance-of v0, p0, Landroid/net/ipsec/ike/IkeFqdnIdentification;

    if-eqz v0, :cond_2e

    .line 75
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/net/vcn/persistablebundleutils/IkeIdentificationUtils;->createPersistableBundle(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 76
    check-cast p0, Landroid/net/ipsec/ike/IkeFqdnIdentification;

    .line 77
    const-string v1, "FQDN_KEY"

    iget-object p0, p0, Landroid/net/ipsec/ike/IkeFqdnIdentification;->fqdn:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-object v0

    .line 79
    :cond_2e
    instance-of v0, p0, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;

    if-eqz v0, :cond_45

    .line 80
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/net/vcn/persistablebundleutils/IkeIdentificationUtils;->createPersistableBundle(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 81
    check-cast p0, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;

    .line 82
    iget-object p0, p0, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;->ipv4Address:Ljava/net/Inet4Address;

    invoke-virtual {p0}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    const-string v1, "IP4_ADDRESS_KEY"

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-object v0

    .line 84
    :cond_45
    instance-of v0, p0, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;

    if-eqz v0, :cond_5c

    .line 85
    const/4 v0, 0x4

    invoke-static {v0}, Landroid/net/vcn/persistablebundleutils/IkeIdentificationUtils;->createPersistableBundle(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 86
    check-cast p0, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;

    .line 87
    iget-object p0, p0, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;->ipv6Address:Ljava/net/Inet6Address;

    invoke-virtual {p0}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    const-string v1, "IP6_ADDRESS_KEY"

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-object v0

    .line 89
    :cond_5c
    instance-of v0, p0, Landroid/net/ipsec/ike/IkeKeyIdIdentification;

    if-eqz v0, :cond_73

    .line 90
    const/4 v0, 0x5

    invoke-static {v0}, Landroid/net/vcn/persistablebundleutils/IkeIdentificationUtils;->createPersistableBundle(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 91
    check-cast p0, Landroid/net/ipsec/ike/IkeKeyIdIdentification;

    .line 92
    iget-object p0, p0, Landroid/net/ipsec/ike/IkeKeyIdIdentification;->keyId:[B

    invoke-static {p0}, Landroid/net/vcn/util/PersistableBundleUtils;->fromByteArray([B)Landroid/os/PersistableBundle;

    move-result-object p0

    const-string v1, "KEY_ID_KEY"

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 93
    return-object v0

    .line 94
    :cond_73
    instance-of v0, p0, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;

    if-eqz v0, :cond_86

    .line 95
    const/4 v0, 0x6

    invoke-static {v0}, Landroid/net/vcn/persistablebundleutils/IkeIdentificationUtils;->createPersistableBundle(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 96
    check-cast p0, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;

    .line 97
    const-string v1, "RFC822_ADDRESS_KEY"

    iget-object p0, p0, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;->rfc822Name:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-object v0

    .line 100
    :cond_86
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unrecognized IkeIdentification subclass"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
