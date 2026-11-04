.class public Landroid/security/keystore2/AndroidKeyStoreEdECPrivateKey;
.super Landroid/security/keystore2/AndroidKeyStorePrivateKey;
.source "AndroidKeyStoreEdECPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/EdECKey;


# direct methods
.method public constructor blacklist <init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/system/keystore2/Authorization;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V
    .registers 7

    .line 39
    invoke-direct/range {p0 .. p6}, Landroid/security/keystore2/AndroidKeyStorePrivateKey;-><init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/system/keystore2/Authorization;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V

    .line 40
    return-void
.end method


# virtual methods
.method public whitelist test-api getParams()Ljava/security/spec/NamedParameterSpec;
    .registers 2

    .line 44
    sget-object v0, Ljava/security/spec/NamedParameterSpec;->ED25519:Ljava/security/spec/NamedParameterSpec;

    return-object v0
.end method
