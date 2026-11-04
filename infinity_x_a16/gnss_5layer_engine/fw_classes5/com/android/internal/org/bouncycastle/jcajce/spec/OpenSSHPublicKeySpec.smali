.class public Lcom/android/internal/org/bouncycastle/jcajce/spec/OpenSSHPublicKeySpec;
.super Ljava/security/spec/EncodedKeySpec;
.source "OpenSSHPublicKeySpec.java"


# static fields
.field private static final blacklist allowedTypes:[Ljava/lang/String;


# instance fields
.field private final blacklist type:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 16
    const-string v0, "ssh-ed25519"

    const-string v1, "ssh-dss"

    const-string v2, "ssh-rsa"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/spec/OpenSSHPublicKeySpec;->allowedTypes:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 6

    .line 30
    invoke-direct {p0, p1}, Ljava/security/spec/EncodedKeySpec;-><init>([B)V

    .line 35
    nop

    .line 36
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    .line 37
    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    .line 38
    const/4 v2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    .line 39
    const/4 v2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 41
    const/4 v2, 0x4

    add-int/2addr v1, v2

    array-length v3, p1

    if-ge v1, v3, :cond_6c

    .line 46
    invoke-static {p1, v2, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/OpenSSHPublicKeySpec;->type:Ljava/lang/String;

    .line 48
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/OpenSSHPublicKeySpec;->type:Ljava/lang/String;

    const-string v1, "ecdsa"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 50
    return-void

    .line 53
    :cond_3b
    nop

    :goto_3c
    sget-object p1, Lcom/android/internal/org/bouncycastle/jcajce/spec/OpenSSHPublicKeySpec;->allowedTypes:[Ljava/lang/String;

    array-length p1, p1

    if-ge v0, p1, :cond_51

    .line 55
    sget-object p1, Lcom/android/internal/org/bouncycastle/jcajce/spec/OpenSSHPublicKeySpec;->allowedTypes:[Ljava/lang/String;

    aget-object p1, p1, v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/OpenSSHPublicKeySpec;->type:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 57
    return-void

    .line 53
    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 61
    :cond_51
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unrecognised public key type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/OpenSSHPublicKeySpec;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_6c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid public key blob: type field longer than blob"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist test-api getFormat()Ljava/lang/String;
    .registers 2

    .line 67
    const-string v0, "OpenSSH"

    return-object v0
.end method

.method public blacklist getType()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/OpenSSHPublicKeySpec;->type:Ljava/lang/String;

    return-object v0
.end method
