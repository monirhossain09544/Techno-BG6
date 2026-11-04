.class public final Landroid/security/net/config/Domain;
.super Ljava/lang/Object;
.source "Domain.java"


# static fields
.field private static final blacklist LOCALHOSTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final greylist-max-o hostname:Ljava/lang/String;

.field public final greylist-max-o subdomainsIncluded:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 29
    const-string v0, "localhost"

    const-string v1, "ip6-localhost"

    invoke-static {v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/security/net/config/Domain;->LOCALHOSTS:Ljava/util/Set;

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Z)V
    .registers 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-eqz p1, :cond_10

    .line 45
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    .line 46
    iput-boolean p2, p0, Landroid/security/net/config/Domain;->subdomainsIncluded:Z

    .line 47
    return-void

    .line 43
    :cond_10
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Hostname must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist isLocalhost(Ljava/lang/String;)Z
    .registers 5

    .line 75
    sget-object v0, Landroid/security/net/config/Domain;->LOCALHOSTS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 76
    return v1

    .line 80
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_29

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_29

    .line 81
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 88
    :cond_29
    :try_start_29
    invoke-static {p0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    .line 89
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result p0
    :try_end_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_31} :catch_32

    return p0

    .line 90
    :catch_32
    move-exception p0

    .line 91
    return v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 56
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 57
    return v0

    .line 59
    :cond_4
    instance-of v1, p1, Landroid/security/net/config/Domain;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 60
    return v2

    .line 62
    :cond_a
    check-cast p1, Landroid/security/net/config/Domain;

    .line 63
    iget-boolean v1, p1, Landroid/security/net/config/Domain;->subdomainsIncluded:Z

    iget-boolean v3, p0, Landroid/security/net/config/Domain;->subdomainsIncluded:Z

    if-ne v1, v3, :cond_1d

    iget-object p1, p1, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    iget-object v1, p0, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    .line 64
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v2

    .line 63
    :goto_1e
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 51
    iget-object v0, p0, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Landroid/security/net/config/Domain;->subdomainsIncluded:Z

    if-eqz v1, :cond_d

    const/16 v1, 0x4cf

    goto :goto_f

    :cond_d
    const/16 v1, 0x4d5

    :goto_f
    xor-int/2addr v0, v1

    return v0
.end method

.method public blacklist isLocalhost()Z
    .registers 2

    .line 68
    iget-object v0, p0, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    invoke-static {v0}, Landroid/security/net/config/Domain;->isLocalhost(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
