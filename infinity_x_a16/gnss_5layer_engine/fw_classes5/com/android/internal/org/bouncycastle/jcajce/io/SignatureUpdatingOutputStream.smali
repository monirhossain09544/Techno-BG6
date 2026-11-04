.class Lcom/android/internal/org/bouncycastle/jcajce/io/SignatureUpdatingOutputStream;
.super Ljava/io/OutputStream;
.source "SignatureUpdatingOutputStream.java"


# instance fields
.field private blacklist sig:Ljava/security/Signature;


# direct methods
.method constructor blacklist <init>(Ljava/security/Signature;)V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/io/SignatureUpdatingOutputStream;->sig:Ljava/security/Signature;

    .line 19
    return-void
.end method


# virtual methods
.method public whitelist test-api write(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/io/SignatureUpdatingOutputStream;->sig:Ljava/security/Signature;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update(B)V
    :try_end_6
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_6} :catch_8

    .line 57
    nop

    .line 58
    return-void

    .line 54
    :catch_8
    move-exception p1

    .line 56
    invoke-virtual {p1}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/util/Exceptions;->ioException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public whitelist test-api write([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/io/SignatureUpdatingOutputStream;->sig:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V
    :try_end_5
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_5} :catch_7

    .line 44
    nop

    .line 45
    return-void

    .line 41
    :catch_7
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/util/Exceptions;->ioException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public whitelist test-api write([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/io/SignatureUpdatingOutputStream;->sig:Ljava/security/Signature;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/Signature;->update([BII)V
    :try_end_5
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_5} :catch_7

    .line 31
    nop

    .line 32
    return-void

    .line 28
    :catch_7
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/internal/org/bouncycastle/util/Exceptions;->ioException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method
