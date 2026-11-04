.class public Landroid/security/identity/CipherSuiteNotSupportedException;
.super Landroid/security/identity/IdentityCredentialException;
.source "CipherSuiteNotSupportedException.java"


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Landroid/security/identity/IdentityCredentialException;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/security/identity/IdentityCredentialException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    return-void
.end method
