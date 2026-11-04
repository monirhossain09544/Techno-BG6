.class final Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$IkeAuthEapConfigUtils;
.super Ljava/lang/Object;
.source "IkeSessionParamsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IkeAuthEapConfigUtils"
.end annotation


# static fields
.field private static final blacklist EAP_CONFIG_KEY:Ljava/lang/String; = "EAP_CONFIG_KEY"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist setBuilderByReadingPersistableBundle(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/net/ipsec/ike/IkeSessionParams$Builder;)V
    .registers 4

    .line 499
    nop

    .line 500
    const-string v0, "EAP_CONFIG_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p0

    .line 501
    const-string v0, "EAP Config was null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 502
    nop

    .line 503
    invoke-static {p0}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/eap/EapSessionConfig;

    move-result-object p0

    .line 506
    nop

    .line 507
    const-string v0, "TRUST_CERT_KEY"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 510
    nop

    .line 511
    if-eqz p1, :cond_24

    .line 512
    invoke-static {p1}, Landroid/net/vcn/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object p1

    .line 513
    invoke-static {p1}, Landroid/net/vcn/persistablebundleutils/CertUtils;->certificateFromByteArray([B)Ljava/security/cert/X509Certificate;

    move-result-object p1

    goto :goto_25

    .line 511
    :cond_24
    const/4 p1, 0x0

    .line 515
    :goto_25
    invoke-virtual {p2, p1, p0}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setAuthEap(Ljava/security/cert/X509Certificate;Landroid/net/eap/EapSessionConfig;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 516
    return-void
.end method

.method public static blacklist toPersistableBundle(Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;
    .registers 3

    .line 488
    nop

    .line 490
    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;->getEapConfig()Landroid/net/eap/EapSessionConfig;

    move-result-object p0

    invoke-static {p0}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils;->toPersistableBundle(Landroid/net/eap/EapSessionConfig;)Landroid/os/PersistableBundle;

    move-result-object p0

    .line 488
    const-string v0, "EAP_CONFIG_KEY"

    invoke-virtual {p1, v0, p0}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 491
    return-object p1
.end method
