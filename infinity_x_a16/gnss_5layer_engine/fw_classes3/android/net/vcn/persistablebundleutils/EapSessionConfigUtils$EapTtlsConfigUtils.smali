.class final Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapTtlsConfigUtils;
.super Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapMethodConfigUtils;
.source "EapSessionConfigUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EapTtlsConfigUtils"
.end annotation


# static fields
.field private static final blacklist EAP_SESSION_CONFIG_KEY:Ljava/lang/String; = "EAP_SESSION_CONFIG_KEY"

.field private static final blacklist TRUST_CERT_KEY:Ljava/lang/String; = "TRUST_CERT_KEY"


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 230
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapMethodConfigUtils;-><init>(Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils-IA;)V

    return-void
.end method

.method public static blacklist setBuilderByReadingPersistableBundle(Landroid/os/PersistableBundle;Landroid/net/eap/EapSessionConfig$Builder;)V
    .registers 4

    .line 257
    const-string v0, "PersistableBundle was null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 259
    const-string v0, "TRUST_CERT_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 260
    nop

    .line 261
    if-eqz v0, :cond_18

    .line 262
    nop

    .line 264
    invoke-static {v0}, Landroid/net/vcn/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v0

    .line 263
    invoke-static {v0}, Landroid/net/vcn/persistablebundleutils/CertUtils;->certificateFromByteArray([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    goto :goto_19

    .line 261
    :cond_18
    const/4 v0, 0x0

    .line 267
    :goto_19
    nop

    .line 268
    const-string v1, "EAP_SESSION_CONFIG_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p0

    .line 269
    const-string v1, "Inner EAP Session Config was null"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 270
    nop

    .line 271
    invoke-static {p0}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/eap/EapSessionConfig;

    move-result-object p0

    .line 273
    invoke-virtual {p1, v0, p0}, Landroid/net/eap/EapSessionConfig$Builder;->setEapTtlsConfig(Ljava/security/cert/X509Certificate;Landroid/net/eap/EapSessionConfig;)Landroid/net/eap/EapSessionConfig$Builder;

    .line 274
    return-void
.end method

.method public static blacklist toPersistableBundle(Landroid/net/eap/EapSessionConfig$EapTtlsConfig;)Landroid/os/PersistableBundle;
    .registers 4

    .line 236
    invoke-static {p0}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapMethodConfigUtils;->toPersistableBundle(Landroid/net/eap/EapSessionConfig$EapMethodConfig;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 238
    :try_start_4
    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;->getServerCaCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 239
    nop

    .line 241
    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;->getServerCaCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    .line 240
    invoke-static {v1}, Landroid/net/vcn/util/PersistableBundleUtils;->fromByteArray([B)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 242
    const-string v2, "TRUST_CERT_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V
    :try_end_1c
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_4 .. :try_end_1c} :catch_2c

    .line 246
    :cond_1c
    nop

    .line 248
    nop

    .line 250
    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;->getInnerEapSessionConfig()Landroid/net/eap/EapSessionConfig;

    move-result-object p0

    invoke-static {p0}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils;->toPersistableBundle(Landroid/net/eap/EapSessionConfig;)Landroid/os/PersistableBundle;

    move-result-object p0

    .line 248
    const-string v1, "EAP_SESSION_CONFIG_KEY"

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 252
    return-object v0

    .line 244
    :catch_2c
    move-exception p0

    .line 245
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Fail to encode the certificate"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
