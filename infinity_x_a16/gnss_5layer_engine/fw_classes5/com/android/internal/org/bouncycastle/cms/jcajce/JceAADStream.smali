.class Lcom/android/internal/org/bouncycastle/cms/jcajce/JceAADStream;
.super Ljava/io/OutputStream;
.source "JceAADStream.java"


# static fields
.field private static final blacklist SINGLE_BYTE:[B


# instance fields
.field private blacklist cipher:Ljavax/crypto/Cipher;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 12
    const/4 v0, 0x1

    new-array v0, v0, [B

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JceAADStream;->SINGLE_BYTE:[B

    return-void
.end method

.method constructor blacklist <init>(Ljavax/crypto/Cipher;)V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JceAADStream;->cipher:Ljavax/crypto/Cipher;

    .line 18
    return-void
.end method


# virtual methods
.method public whitelist test-api write(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JceAADStream;->SINGLE_BYTE:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 30
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JceAADStream;->cipher:Ljavax/crypto/Cipher;

    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JceAADStream;->SINGLE_BYTE:[B

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Ljavax/crypto/Cipher;->updateAAD([BII)V

    .line 31
    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JceAADStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->updateAAD([BII)V

    .line 24
    return-void
.end method
