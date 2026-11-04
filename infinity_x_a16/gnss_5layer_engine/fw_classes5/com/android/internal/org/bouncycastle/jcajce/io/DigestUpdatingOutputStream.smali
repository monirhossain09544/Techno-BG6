.class Lcom/android/internal/org/bouncycastle/jcajce/io/DigestUpdatingOutputStream;
.super Ljava/io/OutputStream;
.source "DigestUpdatingOutputStream.java"


# instance fields
.field private blacklist digest:Ljava/security/MessageDigest;


# direct methods
.method constructor blacklist <init>(Ljava/security/MessageDigest;)V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/io/DigestUpdatingOutputStream;->digest:Ljava/security/MessageDigest;

    .line 16
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

    .line 33
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/io/DigestUpdatingOutputStream;->digest:Ljava/security/MessageDigest;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    .line 34
    return-void
.end method

.method public whitelist test-api write([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/io/DigestUpdatingOutputStream;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 28
    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/io/DigestUpdatingOutputStream;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 22
    return-void
.end method
