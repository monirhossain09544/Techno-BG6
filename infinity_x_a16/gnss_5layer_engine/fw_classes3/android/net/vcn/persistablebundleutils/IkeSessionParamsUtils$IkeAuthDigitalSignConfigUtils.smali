.class Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$IkeAuthDigitalSignConfigUtils;
.super Ljava/lang/Object;
.source "IkeSessionParamsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IkeAuthDigitalSignConfigUtils"
.end annotation


# static fields
.field private static final blacklist END_CERT_KEY:Ljava/lang/String; = "END_CERT_KEY"

.field private static final blacklist INTERMEDIATE_CERTS_KEY:Ljava/lang/String; = "INTERMEDIATE_CERTS_KEY"

.field private static final blacklist PRIVATE_KEY_KEY:Ljava/lang/String; = "PRIVATE_KEY_KEY"

.field private static final blacklist TRUST_CERT_KEY:Ljava/lang/String; = "TRUST_CERT_KEY"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist setBuilderByReadingPersistableBundle(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/net/ipsec/ike/IkeSessionParams$Builder;)V
    .registers 7

    .line 441
    const-string v0, "localAuthBundle was null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 442
    const-string/jumbo v0, "remoteAuthBundle was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 445
    nop

    .line 446
    const-string v0, "END_CERT_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 447
    const-string v1, "End cert was null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 448
    invoke-static {v0}, Landroid/net/vcn/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v0

    .line 449
    invoke-static {v0}, Landroid/net/vcn/persistablebundleutils/CertUtils;->certificateFromByteArray([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 451
    nop

    .line 452
    const-string v1, "INTERMEDIATE_CERTS_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 453
    const-string v2, "Intermediate certs was null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 454
    new-instance v2, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$IkeAuthDigitalSignConfigUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$IkeAuthDigitalSignConfigUtils$$ExternalSyntheticLambda0;-><init>()V

    .line 455
    invoke-static {v1, v2}, Landroid/net/vcn/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Landroid/net/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v1

    .line 456
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 457
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 458
    invoke-static {v3}, Landroid/net/vcn/persistablebundleutils/CertUtils;->certificateFromByteArray([B)Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    goto :goto_41

    .line 461
    :cond_55
    nop

    .line 462
    const-string v1, "PRIVATE_KEY_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p0

    .line 463
    const-string v1, "PrivateKey bundle was null"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 464
    nop

    .line 466
    invoke-static {p0}, Landroid/net/vcn/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object p0

    .line 465
    invoke-static {p0}, Landroid/net/vcn/persistablebundleutils/CertUtils;->privateKeyFromByteArray([B)Ljava/security/interfaces/RSAPrivateKey;

    move-result-object p0

    .line 469
    nop

    .line 470
    const-string v1, "TRUST_CERT_KEY"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 472
    nop

    .line 473
    if-eqz p1, :cond_7d

    .line 474
    invoke-static {p1}, Landroid/net/vcn/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object p1

    .line 475
    invoke-static {p1}, Landroid/net/vcn/persistablebundleutils/CertUtils;->certificateFromByteArray([B)Ljava/security/cert/X509Certificate;

    move-result-object p1

    goto :goto_7e

    .line 473
    :cond_7d
    const/4 p1, 0x0

    .line 478
    :goto_7e
    invoke-virtual {p2, p1, v0, v2, p0}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setAuthDigitalSignature(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/security/PrivateKey;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 479
    return-void
.end method

.method public static blacklist toPersistableBundle(Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;
    .registers 5

    .line 394
    :try_start_0
    const-string v0, "END_CERT_KEY"

    .line 397
    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;->getClientEndCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    .line 396
    invoke-static {v1}, Landroid/net/vcn/util/PersistableBundleUtils;->fromByteArray([B)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 394
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 399
    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;->getIntermediateCertificates()Ljava/util/List;

    move-result-object v0

    .line 400
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 401
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 402
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    goto :goto_22

    .line 405
    :cond_36
    new-instance v0, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$IkeAuthDigitalSignConfigUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$IkeAuthDigitalSignConfigUtils$$ExternalSyntheticLambda1;-><init>()V

    .line 406
    invoke-static {v1, v0}, Landroid/net/vcn/util/PersistableBundleUtils;->fromList(Ljava/util/List;Landroid/net/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 408
    const-string v1, "INTERMEDIATE_CERTS_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V
    :try_end_44
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_44} :catch_58

    .line 411
    nop

    .line 414
    nop

    .line 416
    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Landroid/net/vcn/util/PersistableBundleUtils;->fromByteArray([B)Landroid/os/PersistableBundle;

    move-result-object p0

    .line 414
    const-string v0, "PRIVATE_KEY_KEY"

    invoke-virtual {p1, v0, p0}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 417
    return-object p1

    .line 409
    :catch_58
    move-exception p0

    .line 410
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Fail to encode certificate"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist toPersistableBundle(Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;
    .registers 3

    .line 424
    :try_start_0
    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;->getRemoteCaCert()Ljava/security/cert/X509Certificate;

    move-result-object p0

    .line 425
    if-eqz p0, :cond_13

    .line 426
    const-string v0, "TRUST_CERT_KEY"

    .line 428
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Landroid/net/vcn/util/PersistableBundleUtils;->fromByteArray([B)Landroid/os/PersistableBundle;

    move-result-object p0

    .line 426
    invoke-virtual {p1, v0, p0}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V
    :try_end_13
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_13} :catch_15

    .line 432
    :cond_13
    nop

    .line 434
    return-object p1

    .line 430
    :catch_15
    move-exception p0

    .line 431
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Fail to encode the certificate"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
