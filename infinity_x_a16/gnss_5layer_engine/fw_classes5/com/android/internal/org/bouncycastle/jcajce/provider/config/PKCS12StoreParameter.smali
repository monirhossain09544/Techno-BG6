.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/config/PKCS12StoreParameter;
.super Lcom/android/internal/org/bouncycastle/jcajce/PKCS12StoreParameter;
.source "PKCS12StoreParameter.java"


# direct methods
.method public constructor blacklist <init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;)V
    .registers 4

    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12StoreParameter;-><init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;Z)V

    .line 23
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;Z)V
    .registers 4

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12StoreParameter;-><init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;Z)V

    .line 33
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/OutputStream;[C)V
    .registers 4

    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12StoreParameter;-><init>(Ljava/io/OutputStream;[CZ)V

    .line 18
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/OutputStream;[CZ)V
    .registers 5

    .line 27
    new-instance v0, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v0, p2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    invoke-direct {p0, p1, v0, p3}, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12StoreParameter;-><init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;Z)V

    .line 28
    return-void
.end method
