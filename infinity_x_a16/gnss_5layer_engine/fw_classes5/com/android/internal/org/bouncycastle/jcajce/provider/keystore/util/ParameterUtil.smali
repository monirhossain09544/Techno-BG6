.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/ParameterUtil;
.super Ljava/lang/Object;
.source "ParameterUtil.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist extractPassword(Ljava/security/KeyStore$LoadStoreParameter;)[C
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-interface {p0}, Ljava/security/KeyStore$LoadStoreParameter;->getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object p0

    .line 22
    if-nez p0, :cond_8

    .line 24
    const/4 p0, 0x0

    return-object p0

    .line 26
    :cond_8
    instance-of v0, p0, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v0, :cond_13

    .line 28
    check-cast p0, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {p0}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object p0

    return-object p0

    .line 30
    :cond_13
    instance-of v0, p0, Ljava/security/KeyStore$CallbackHandlerProtection;

    if-eqz v0, :cond_50

    .line 32
    check-cast p0, Ljava/security/KeyStore$CallbackHandlerProtection;

    invoke-virtual {p0}, Ljava/security/KeyStore$CallbackHandlerProtection;->getCallbackHandler()Ljavax/security/auth/callback/CallbackHandler;

    move-result-object p0

    .line 34
    new-instance v0, Ljavax/security/auth/callback/PasswordCallback;

    const-string v1, "password: "

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljavax/security/auth/callback/PasswordCallback;-><init>(Ljava/lang/String;Z)V

    .line 38
    const/4 v1, 0x1

    :try_start_26
    new-array v1, v1, [Ljavax/security/auth/callback/Callback;

    aput-object v0, v1, v2

    invoke-interface {p0, v1}, Ljavax/security/auth/callback/CallbackHandler;->handle([Ljavax/security/auth/callback/Callback;)V

    .line 40
    invoke-virtual {v0}, Ljavax/security/auth/callback/PasswordCallback;->getPassword()[C

    move-result-object p0
    :try_end_31
    .catch Ljavax/security/auth/callback/UnsupportedCallbackException; {:try_start_26 .. :try_end_31} :catch_32

    return-object p0

    .line 42
    :catch_32
    move-exception p0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PasswordCallback not recognised: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/security/auth/callback/UnsupportedCallbackException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 49
    :cond_50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no support for protection parameter of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 50
    invoke-interface {p0}, Ljava/security/KeyStore$ProtectionParameter;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
