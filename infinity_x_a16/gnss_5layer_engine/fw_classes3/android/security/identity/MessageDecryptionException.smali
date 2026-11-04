.class public Landroid/security/identity/MessageDecryptionException;
.super Landroid/security/identity/IdentityCredentialException;
.source "MessageDecryptionException.java"


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Landroid/security/identity/IdentityCredentialException;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/security/identity/IdentityCredentialException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    return-void
.end method
