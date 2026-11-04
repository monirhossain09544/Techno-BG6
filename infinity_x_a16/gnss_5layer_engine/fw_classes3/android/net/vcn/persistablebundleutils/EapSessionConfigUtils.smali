.class public final Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils;
.super Ljava/lang/Object;
.source "EapSessionConfigUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapSimConfigUtils;,
        Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapTtlsConfigUtils;,
        Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapAkaConfigUtils;,
        Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapMsChapV2ConfigUtils;,
        Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapAkaPrimeConfigUtils;,
        Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapUiccConfigUtils;,
        Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapMethodConfigUtils;
    }
.end annotation


# static fields
.field private static final blacklist EAP_AKA_CONFIG_KEY:Ljava/lang/String; = "EAP_AKA_CONFIG_KEY"

.field private static final blacklist EAP_AKA_PRIME_CONFIG_KEY:Ljava/lang/String; = "EAP_AKA_PRIME_CONFIG_KEY"

.field private static final blacklist EAP_ID_KEY:Ljava/lang/String; = "EAP_ID_KEY"

.field private static final blacklist EAP_MSCHAP_V2_CONFIG_KEY:Ljava/lang/String; = "EAP_MSCHAP_V2_CONFIG_KEY"

.field private static final blacklist EAP_SIM_CONFIG_KEY:Ljava/lang/String; = "EAP_SIM_CONFIG_KEY"

.field private static final blacklist EAP_TTLS_CONFIG_KEY:Ljava/lang/String; = "EAP_TTLS_CONFIG_KEY"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/eap/EapSessionConfig;
    .registers 4

    .line 98
    const-string v0, "PersistableBundle was null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    new-instance v0, Landroid/net/eap/EapSessionConfig$Builder;

    invoke-direct {v0}, Landroid/net/eap/EapSessionConfig$Builder;-><init>()V

    .line 102
    const-string v1, "EAP_ID_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 103
    const-string v2, "EAP ID was null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    invoke-static {v1}, Landroid/net/vcn/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/eap/EapSessionConfig$Builder;->setEapIdentity([B)Landroid/net/eap/EapSessionConfig$Builder;

    .line 106
    const-string v1, "EAP_SIM_CONFIG_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 107
    if-eqz v1, :cond_27

    .line 108
    invoke-static {v1, v0}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapSimConfigUtils;->setBuilderByReadingPersistableBundle(Landroid/os/PersistableBundle;Landroid/net/eap/EapSessionConfig$Builder;)V

    .line 111
    :cond_27
    const-string v1, "EAP_TTLS_CONFIG_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_32

    .line 113
    invoke-static {v1, v0}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapTtlsConfigUtils;->setBuilderByReadingPersistableBundle(Landroid/os/PersistableBundle;Landroid/net/eap/EapSessionConfig$Builder;)V

    .line 116
    :cond_32
    const-string v1, "EAP_AKA_CONFIG_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 117
    if-eqz v1, :cond_3d

    .line 118
    invoke-static {v1, v0}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapAkaConfigUtils;->setBuilderByReadingPersistableBundle(Landroid/os/PersistableBundle;Landroid/net/eap/EapSessionConfig$Builder;)V

    .line 121
    :cond_3d
    const-string v1, "EAP_MSCHAP_V2_CONFIG_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 122
    if-eqz v1, :cond_48

    .line 123
    invoke-static {v1, v0}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapMsChapV2ConfigUtils;->setBuilderByReadingPersistableBundle(Landroid/os/PersistableBundle;Landroid/net/eap/EapSessionConfig$Builder;)V

    .line 126
    :cond_48
    const-string v1, "EAP_AKA_PRIME_CONFIG_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p0

    .line 127
    if-eqz p0, :cond_53

    .line 128
    invoke-static {p0, v0}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapAkaPrimeConfigUtils;->setBuilderByReadingPersistableBundle(Landroid/os/PersistableBundle;Landroid/net/eap/EapSessionConfig$Builder;)V

    .line 131
    :cond_53
    invoke-virtual {v0}, Landroid/net/eap/EapSessionConfig$Builder;->build()Landroid/net/eap/EapSessionConfig;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist toPersistableBundle(Landroid/net/eap/EapSessionConfig;)Landroid/os/PersistableBundle;
    .registers 4

    .line 57
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 59
    nop

    .line 60
    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig;->getEapIdentity()[B

    move-result-object v1

    invoke-static {v1}, Landroid/net/vcn/util/PersistableBundleUtils;->fromByteArray([B)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 59
    const-string v2, "EAP_ID_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 62
    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig;->getEapSimConfig()Landroid/net/eap/EapSessionConfig$EapSimConfig;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 63
    nop

    .line 65
    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig;->getEapSimConfig()Landroid/net/eap/EapSessionConfig$EapSimConfig;

    move-result-object v1

    invoke-static {v1}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapSimConfigUtils;->toPersistableBundle(Landroid/net/eap/EapSessionConfig$EapSimConfig;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 63
    const-string v2, "EAP_SIM_CONFIG_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 68
    :cond_27
    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig;->getEapTtlsConfig()Landroid/net/eap/EapSessionConfig$EapTtlsConfig;

    move-result-object v1

    if-eqz v1, :cond_3b

    .line 69
    nop

    .line 71
    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig;->getEapTtlsConfig()Landroid/net/eap/EapSessionConfig$EapTtlsConfig;

    move-result-object v1

    invoke-static {v1}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapTtlsConfigUtils;->toPersistableBundle(Landroid/net/eap/EapSessionConfig$EapTtlsConfig;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 69
    const-string v2, "EAP_TTLS_CONFIG_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 74
    :cond_3b
    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig;->getEapAkaConfig()Landroid/net/eap/EapSessionConfig$EapAkaConfig;

    move-result-object v1

    if-eqz v1, :cond_4f

    .line 75
    nop

    .line 77
    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig;->getEapAkaConfig()Landroid/net/eap/EapSessionConfig$EapAkaConfig;

    move-result-object v1

    invoke-static {v1}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapAkaConfigUtils;->toPersistableBundle(Landroid/net/eap/EapSessionConfig$EapAkaConfig;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 75
    const-string v2, "EAP_AKA_CONFIG_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 80
    :cond_4f
    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig;->getEapMsChapV2Config()Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;

    move-result-object v1

    if-eqz v1, :cond_63

    .line 81
    nop

    .line 83
    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig;->getEapMsChapV2Config()Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;

    move-result-object v1

    invoke-static {v1}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapMsChapV2ConfigUtils;->toPersistableBundle(Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 81
    const-string v2, "EAP_MSCHAP_V2_CONFIG_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 86
    :cond_63
    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig;->getEapAkaPrimeConfig()Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;

    move-result-object v1

    if-eqz v1, :cond_77

    .line 87
    nop

    .line 89
    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig;->getEapAkaPrimeConfig()Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;

    move-result-object p0

    invoke-static {p0}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapAkaPrimeConfigUtils;->toPersistableBundle(Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;)Landroid/os/PersistableBundle;

    move-result-object p0

    .line 87
    const-string v1, "EAP_AKA_PRIME_CONFIG_KEY"

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 92
    :cond_77
    return-object v0
.end method
